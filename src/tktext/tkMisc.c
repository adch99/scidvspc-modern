/* tkMisc.c
 *
 * Provides some replacement functions to support the integration of
 * the revised text widget in applications/external libraries. Only
 * Tk_FontObjCmd() has not been re-implemented, this means that resolving
 * font names in command "inspect" does not work.
 */

#include "tk.h"
#include "tkInt.h"


typedef struct PixelRep {
    double value;
    int units;
} PixelRep;


#if TK_MAJOR_VERSION > 8 \
	|| (TK_MAJOR_VERSION == 8 \
	    && (TK_MINOR_VERSION > 6 || (TK_MINOR_VERSION == 6 && TK_RELEASE_SERIAL >= 6)))

void
TkSendVirtualEvent(
    Tk_Window target,
    const char *eventName,
    Tcl_Obj *detail)
{
    union {XEvent general; XVirtualEvent virtual;} event;

    memset(&event, 0, sizeof(event));
    event.general.xany.type = VirtualEvent;
    event.general.xany.serial = NextRequest(Tk_Display(target));
    event.general.xany.send_event = False;
    event.general.xany.window = Tk_WindowId(target);
    event.general.xany.display = Tk_Display(target);
    event.virtual.name = Tk_GetUid(eventName);
    event.virtual.user_data = detail;

    Tk_QueueWindowEvent(&event.general, TCL_QUEUE_TAIL);
}

#else

void
TkSendVirtualEvent(
    Tk_Window target,
    const char *eventName)
{
    union {XEvent general; XVirtualEvent virtual;} event;

    memset(&event, 0, sizeof(event));
    event.general.xany.type = VirtualEvent;
    event.general.xany.serial = NextRequest(Tk_Display(target));
    event.general.xany.send_event = False;
    event.general.xany.window = Tk_WindowId(target);
    event.general.xany.display = Tk_Display(target);
    event.virtual.name = Tk_GetUid(eventName);

    Tk_QueueWindowEvent(&event.general, TCL_QUEUE_TAIL);
}

#endif


Tcl_Obj*
TkNewWindowObj(
	Tk_Window tkwin)
{
    return Tcl_NewStringObj(Tk_PathName(tkwin), -1);
}


int
TkpAlwaysShowSelection(
    Tk_Window tkwin)
{
    return ((TkWindow *) tkwin)->mainPtr->alwaysShowSelection;
}


static int
SetPixelFromAny(
    Tcl_Interp *interp,		/* Used for error reporting if not NULL. */
    Tcl_Obj *objPtr,		/* The object to convert. */
    PixelRep *pixelPtr)
{
    const char *string;
    char *rest;
    double d;
    int i, units;

    string = Tcl_GetString(objPtr);

    d = strtod(string, &rest);
    if (rest == string) {
	goto error;
    }
    while ((*rest != '\0') && isspace(UCHAR(*rest))) {
	rest++;
    }

    switch (*rest) {
    case '\0':
	units = -1;
	break;
    case 'm':
	units = 0;
	break;
    case 'c':
	units = 1;
	break;
    case 'i':
	units = 2;
	break;
    case 'p':
	units = 3;
	break;
    default:
	goto error;
    }

    /*
     * Free the old internalRep before setting the new one.
     */

    i = (int) d;
    if ((units < 0) && (i == d)) {
	pixelPtr->value = i;
	pixelPtr->units = -1;
    } else {
	pixelPtr->value = d;
	pixelPtr->units = units;
    }
    return TCL_OK;

  error:
    if (interp != NULL) {
	Tcl_SetObjResult(interp, Tcl_ObjPrintf(
		"bad screen distance \"%.50s\"", string));
	Tcl_SetErrorCode(interp, "TK", "VALUE", "PIXELS", NULL);
    }
    return TCL_ERROR;
}


static int
GetPixelsFromObjEx(
    Tcl_Interp *interp, 	/* Used for error reporting if not NULL. */
    Tk_Window tkwin,
    Tcl_Obj *objPtr,		/* The object from which to get pixels. */
    double *dblPtr)		/* Places to store resulting pixels. */
{
    int result;
    PixelRep pixelRep = { 0.0, -1 };
    double d;
    static const double bias[] = {
	1.0,	10.0,	25.4,	0.35278 /*25.4 / 72.0*/
    };

    result = SetPixelFromAny(interp, objPtr, &pixelRep);
    if (result != TCL_OK) {
	return result;
    }

    d = pixelRep.value;
    if (pixelRep.units >= 0) {
	d *= bias[pixelRep.units] * WidthOfScreen(Tk_Screen(tkwin));
	d /= WidthMMOfScreen(Tk_Screen(tkwin));
    }
    *dblPtr = d;
    return TCL_OK;
}


int
Tk_GetDoublePixelsFromObj(
    Tcl_Interp *interp, 	/* Used for error reporting if not NULL. */
    Tk_Window tkwin,
    Tcl_Obj *objPtr,		/* The object from which to get pixels. */
    double *doublePtr)		/* Place to store resulting pixels. */
{
    double d;
    int result;

    result = GetPixelsFromObjEx(interp, tkwin, objPtr, &d);
    if (result != TCL_OK) {
	return result;
    }
    *doublePtr = d;
    return TCL_OK;
}


int
Tk_FontObjCmd(
    ClientData clientData,	/* Main window associated with interpreter. */
    Tcl_Interp *interp,		/* Current interpreter. */
    int objc,			/* Number of arguments. */
    Tcl_Obj *const objv[])	/* Argument objects. */
{
    return TCL_ERROR; /* not implemented */
}


#ifdef __MacOSX__

#define MAC_OSX_TK
#include "tkMacOSXPrivate.h"
#include "tkMacOSXFont.h"


void
TkUnderlineCharsInContext(
    Display *display,		/* Display on which to draw. */
    Drawable drawable,		/* Window or pixmap in which to draw. */
    GC gc,			/* Graphics context for actually drawing
				 * line. */
    Tk_Font tkfont,		/* Font used in GC; must have been allocated
				 * by Tk_GetFont(). Used for character
				 * dimensions, etc. */
    const char *string,		/* String containing characters to be
				 * underlined or overstruck. */
    int numBytes,		/* Number of bytes in string. */
    int x, int y,		/* Coordinates at which the first character of
				 * the whole string would be drawn. */
    int firstByte,		/* Index of first byte of first character. */
    int lastByte)		/* Index of first byte after the last
				 * character. */
{
    TkFont *fontPtr = (TkFont *) tkfont;
    int startX, endX;

    TkpMeasureCharsInContext(tkfont, string, numBytes, 0, firstByte, -1, 0,
	    &startX);
    TkpMeasureCharsInContext(tkfont, string, numBytes, 0, lastByte, -1, 0,
	    &endX);

    XFillRectangle(display, drawable, gc, x + startX,
	    y + fontPtr->underlinePos, (unsigned) (endX - startX),
	    (unsigned) fontPtr->underlineHeight);
}


int
TkpMeasureCharsInContext(
    Tk_Font tkfont,		/* Font in which characters will be drawn. */
    const char * source,	/* UTF-8 string to be displayed. Need not be
				 * '\0' terminated. */
    int numBytes,		/* Maximum number of bytes to consider from
				 * source string in all. */
    int rangeStart,		/* Index of first byte to measure. */
    int rangeLength,		/* Length of range to measure in bytes. */
    int maxLength,		/* If >= 0, maxLength specifies the longest
				 * permissible line length; don't consider any
				 * character that would cross this x-position.
				 * If < 0, then line length is unbounded and
				 * the flags argument is ignored. */
    int flags,			/* Various flag bits OR-ed together:
				 * TK_PARTIAL_OK means include the last char
				 * which only partially fits on this line.
				 * TK_WHOLE_WORDS means stop on a word
				 * boundary, if possible. TK_AT_LEAST_ONE
				 * means return at least one character even
				 * if no characters fit.  If TK_WHOLE_WORDS
				 * and TK_AT_LEAST_ONE are set and the first
				 * word doesn't fit, we return at least one
				 * character or whatever characters fit into
				 * maxLength.  TK_ISOLATE_END means that the
				 * last character should not be considered in
				 * context with the rest of the string (used
				 * for breaking lines). */
    int *lengthPtr)		/* Filled with x-location just after the
				 * terminating character. */
{
    const MacFont *fontPtr = (const MacFont *) tkfont;
    NSString *string;
    NSAttributedString *attributedString;
    CTTypesetterRef typesetter;
    CFIndex start, len;
    CFRange range = {0, 0};
    CTLineRef line;
    CGFloat offset = 0;
    CFIndex index;
    double width;
    int length, fit;

    if (rangeStart < 0 || rangeLength <= 0 ||
	    rangeStart + rangeLength > numBytes ||
	    (maxLength == 0 && !(flags & TK_AT_LEAST_ONE))) {
	*lengthPtr = 0;
	return 0;
    }
#if 0
    /* Back-compatibility with ATSUI renderer, appears not to be needed */
    if (rangeStart == 0 && maxLength == 1 && (flags & TK_ISOLATE_END) &&
	    !(flags & TK_AT_LEAST_ONE)) {
	length = 0;
	fit = 0;
	goto done;
    }
#endif
    if (maxLength > 32767) {
	maxLength = 32767;
    }
    string = [[NSString alloc] initWithBytesNoCopy:(void*)source
		length:numBytes encoding:NSUTF8StringEncoding freeWhenDone:NO];
    if (!string) {
	length = 0;
	fit = rangeLength;
	goto done;
    }
    attributedString = [[NSAttributedString alloc] initWithString:string
	    attributes:fontPtr->nsAttributes];
    typesetter = CTTypesetterCreateWithAttributedString(
	    (CFAttributedStringRef)attributedString);
    start = Tcl_NumUtfChars(source, rangeStart);
    len = Tcl_NumUtfChars(source + rangeStart, rangeLength);
    if (start > 0) {
	range.length = start;
	line = CTTypesetterCreateLine(typesetter, range);
	offset = CTLineGetTypographicBounds(line, NULL, NULL, NULL);
	CFRelease(line);
    }
    if (maxLength < 0) {
	index = len;
	range.length = len;
	line = CTTypesetterCreateLine(typesetter, range);
	width = CTLineGetTypographicBounds(line, NULL, NULL, NULL);
	CFRelease(line);
    } else {
	double maxWidth = maxLength + offset;
	NSCharacterSet *cs;

	index = start;
	if (flags & TK_WHOLE_WORDS) {
	    index = CTTypesetterSuggestLineBreak(typesetter, start, maxWidth);
	    if (index <= start && (flags & TK_AT_LEAST_ONE)) {
		flags &= ~TK_WHOLE_WORDS;
	    }
	}
	if (index <= start && !(flags & TK_WHOLE_WORDS)) {
	    index = CTTypesetterSuggestClusterBreak(typesetter, start, maxWidth);
	}
	cs = (index < len || (flags & TK_WHOLE_WORDS)) ?
		whitespaceCharacterSet : lineendingCharacterSet;
	while (index > start &&
		[cs characterIsMember:[string characterAtIndex:(index - 1)]]) {
	    index--;
	}
	if (index <= start && (flags & TK_AT_LEAST_ONE)) {
	    index = start + 1;
	}
	if (index > 0) {
	    range.length = index;
	    line = CTTypesetterCreateLine(typesetter, range);
	    width = CTLineGetTypographicBounds(line, NULL, NULL, NULL);
	    CFRelease(line);
	} else {
	    width = 0;
	}
	if (width < maxWidth && (flags & TK_PARTIAL_OK) && index < len) {
	    range.length = ++index;
	    line = CTTypesetterCreateLine(typesetter, range);
	    width = CTLineGetTypographicBounds(line, NULL, NULL, NULL);
	    CFRelease(line);
	}

        /* The call to CTTypesetterSuggestClusterBreak above will always
           return at least one character regardless of whether it exceeded
           it or not.  Clean that up now. */
	while (width > maxWidth && !(flags & TK_PARTIAL_OK)
		&& index > start+(flags & TK_AT_LEAST_ONE)) {
	    range.length = --index;
	    line = CTTypesetterCreateLine(typesetter, range);
	    width = CTLineGetTypographicBounds(line, NULL, NULL, NULL);
	    CFRelease(line);
	}

    }
    CFRelease(typesetter);
    [attributedString release];
    [string release];
    length = ceil(width - offset);
    fit = (Tcl_UtfAtIndex(source, index) - source) - rangeStart;
done:
    *lengthPtr = length;
    return fit;
}


static HIMutableShapeRef
TkMacOSXHIShapeCreateMutableWithRect(
    const CGRect *inRect)
{
    HIMutableShapeRef result;

    result = HIShapeCreateMutableWithRect(inRect);
    return result;
}


static void
TkMacOSXWinCGBounds(
    TkWindow *winPtr,
    CGRect *bounds)
{
    bounds->origin.x = winPtr->privatePtr->xOff;
    bounds->origin.y = winPtr->privatePtr->yOff;
    bounds->size.width = winPtr->changes.width;
    bounds->size.height = winPtr->changes.height;
}


static OSStatus
TkMacOSHIShapeDifferenceWithRect(
    HIMutableShapeRef inShape,
    const CGRect *inRect)
{
    OSStatus result;
    HIShapeRef rgn = HIShapeCreateWithRect(inRect);

    result = HIShapeDifference(inShape, rgn, inShape);
    CFRelease(rgn);

    return result;
}


static HIShapeRef
TkMacOSXHIShapeCreateEmpty(void)
{
    HIShapeRef result;

    result = HIShapeCreateEmpty();
    return result;
}


TkWindow *
TkpGetOtherWindow(
    TkWindow *winPtr)		/* Tk's structure for a container or embedded
				 * window. */
{
    Container *containerPtr;

    /*
     * TkpGetOtherWindow returns NULL if both windows are not in the same
     * process...
     */

    if (!(winPtr->flags & TK_BOTH_HALVES)) {
	return NULL;
    }

    for (containerPtr = firstContainerPtr; containerPtr != NULL;
	    containerPtr = containerPtr->nextPtr) {
	if (containerPtr->embeddedPtr == winPtr) {
	    return containerPtr->parentPtr;
	} else if (containerPtr->parentPtr == winPtr) {
	    return containerPtr->embeddedPtr;
	}
    }
    return NULL;
}


static HIShapeRef
TkMacOSXGetNativeRegion(
    TkRegion r)
{
    return (HIShapeRef) CFRetain(r);
}


static void
TkpReleaseRegion(
    TkRegion r)
{
    CFRelease(r);
}


static NSWindow*
TkMacOSXDrawableWindow(
    Drawable drawable)
{
    MacDrawable *macWin = (MacDrawable *) drawable;
    NSWindow *result = nil;

    if (!macWin || macWin->flags & TK_IS_PIXMAP) {
	result = nil;
    } else if (macWin->toplevel && macWin->toplevel->winPtr &&
	    macWin->toplevel->winPtr->wmInfoPtr &&
	    macWin->toplevel->winPtr->wmInfoPtr->window) {
	result = macWin->toplevel->winPtr->wmInfoPtr->window;
    } else if (macWin->winPtr && macWin->winPtr->wmInfoPtr &&
	    macWin->winPtr->wmInfoPtr->window) {
	result = macWin->winPtr->wmInfoPtr->window;
    } else if (macWin->toplevel && (macWin->toplevel->flags & TK_EMBEDDED)) {
	TkWindow *contWinPtr = TkpGetOtherWindow(macWin->toplevel->winPtr);
	if (contWinPtr) {
	    result = TkMacOSXDrawableWindow((Drawable) contWinPtr->privatePtr);
	}
    }
    return result;
}


static void
TkMacOSXUpdateClipRgn(
    TkWindow *winPtr)
{
    MacDrawable *macWin;

    if (winPtr == NULL) {
	return;
    }
    macWin = winPtr->privatePtr;
    if (macWin && macWin->flags & TK_CLIP_INVALID) {
	TkWindow *win2Ptr;

	if (Tk_IsMapped(winPtr)) {
	    int rgnChanged = 0;
	    CGRect bounds;
	    HIMutableShapeRef rgn;

	    /*
	     * Start with a region defined by the window bounds.
	     */

	    TkMacOSXWinCGBounds(winPtr, &bounds);
	    rgn = TkMacOSXHIShapeCreateMutableWithRect(&bounds);

	    /*
	     * Clip away the area of any windows that may obscure this window.
	     * For a non-toplevel window, first, clip to the parents visible
	     * clip region. Second, clip away any siblings that are higher in
	     * the stacking order. For an embedded toplevel, just clip to the
	     * container's visible clip region. Remember, we only allow one
	     * contained window in a frame, and don't support any other widgets
	     * in the frame either. This is not currently enforced, however.
	     */

	    if (!Tk_IsTopLevel(winPtr)) {
		TkMacOSXUpdateClipRgn(winPtr->parentPtr);
		if (winPtr->parentPtr) {
		    ChkErr(HIShapeIntersect,
			    winPtr->parentPtr->privatePtr->aboveVisRgn,
			    rgn, rgn);
		}
		win2Ptr = winPtr;
		while ((win2Ptr = win2Ptr->nextPtr)) {
		    if (Tk_IsTopLevel(win2Ptr) || !Tk_IsMapped(win2Ptr)) {
			continue;
		    }
		    TkMacOSXWinCGBounds(win2Ptr, &bounds);
		    ChkErr(TkMacOSHIShapeDifferenceWithRect, rgn, &bounds);
		}
	    } else if (Tk_IsEmbedded(winPtr)) {
		win2Ptr = TkpGetOtherWindow(winPtr);
		if (win2Ptr) {
		    TkMacOSXUpdateClipRgn(win2Ptr);
		    ChkErr(HIShapeIntersect,
			    win2Ptr->privatePtr->aboveVisRgn, rgn, rgn);
		} else if (tkMacOSXEmbedHandler != NULL) {
		    TkRegion r = TkCreateRegion();
		    HIShapeRef visRgn;

		    tkMacOSXEmbedHandler->getClipProc((Tk_Window) winPtr, r);
		    visRgn = TkMacOSXGetNativeRegion(r);
		    ChkErr(HIShapeIntersect, visRgn, rgn, rgn);
		    CFRelease(visRgn);
		    TkpReleaseRegion(r);
		}

		/*
		 * TODO: Here we should handle out of process embedding.
		 */
	    } else if (winPtr->wmInfoPtr->attributes &
		    kWindowResizableAttribute) {
		NSWindow *w = TkMacOSXDrawableWindow(winPtr->window);

	    }
	    macWin->aboveVisRgn = HIShapeCreateCopy(rgn);

	    /*
	     * The final clip region is the aboveVis region (or visible region)
	     * minus all the children of this window. If the window is a
	     * container, we must also subtract the region of the embedded
	     * window.
	     */

	    win2Ptr = winPtr->childList;
	    while (win2Ptr) {
		if (Tk_IsTopLevel(win2Ptr) || !Tk_IsMapped(win2Ptr)) {
		    win2Ptr = win2Ptr->nextPtr;
		    continue;
		}
		TkMacOSXWinCGBounds(win2Ptr, &bounds);
		ChkErr(TkMacOSHIShapeDifferenceWithRect, rgn, &bounds);
		rgnChanged = 1;
		win2Ptr = win2Ptr->nextPtr;
	    }

	    if (Tk_IsContainer(winPtr)) {
		win2Ptr = TkpGetOtherWindow(winPtr);
		if (win2Ptr) {
		    if (Tk_IsMapped(win2Ptr)) {
			TkMacOSXWinCGBounds(win2Ptr, &bounds);
			ChkErr(TkMacOSHIShapeDifferenceWithRect, rgn, &bounds);
			rgnChanged = 1;
		    }
		}

		/*
		 * TODO: Here we should handle out of process embedding.
		 */
	    }

	    if (rgnChanged) {
		HIShapeRef diffRgn = HIShapeCreateDifference(
			macWin->aboveVisRgn, rgn);

		if (!HIShapeIsEmpty(diffRgn)) {
		    macWin->visRgn = HIShapeCreateCopy(rgn);
		}
		CFRelease(diffRgn);
	    }
	    CFRelease(rgn);
	} else {
	    /*
	     * An unmapped window has empty clip regions to prevent any
	     * (erroneous) drawing into it or its children from becoming
	     * visible. [Bug 940117]
	     */

	    if (!Tk_IsTopLevel(winPtr)) {
		TkMacOSXUpdateClipRgn(winPtr->parentPtr);
	    } else if (Tk_IsEmbedded(winPtr)) {
		win2Ptr = TkpGetOtherWindow(winPtr);
		if (win2Ptr) {
		    TkMacOSXUpdateClipRgn(win2Ptr);
		}
	    }
	    macWin->aboveVisRgn = TkMacOSXHIShapeCreateEmpty();
	}
	if (!macWin->visRgn) {
	    macWin->visRgn = HIShapeCreateCopy(macWin->aboveVisRgn);
	}
	macWin->flags &= ~TK_CLIP_INVALID;
    }
}


static HIShapeRef
TkMacOSXGetClipRgn(
    Drawable drawable)		/* Drawable. */
{
    MacDrawable *macDraw = (MacDrawable *) drawable;
    HIShapeRef clipRgn = NULL;

    if (macDraw->winPtr && macDraw->flags & TK_CLIP_INVALID) {
	TkMacOSXUpdateClipRgn(macDraw->winPtr);
    }

    if (macDraw->drawRgn) {
	clipRgn = HIShapeCreateCopy(macDraw->drawRgn);
    } else if (macDraw->visRgn) {
	clipRgn = HIShapeCreateCopy(macDraw->visRgn);
    }

    return clipRgn;
}


static CGContextRef
GetCGContextForDrawable(
    Drawable d)
{
    MacDrawable *macDraw = (MacDrawable *) d;

    if (macDraw && (macDraw->flags & TK_IS_PIXMAP) && !macDraw->context) {
	const size_t bitsPerComponent = 8;
	size_t bitsPerPixel, bytesPerRow, len;
	CGColorSpaceRef colorspace = NULL;
	CGBitmapInfo bitmapInfo =
#ifdef __LITTLE_ENDIAN__
	kCGBitmapByteOrder32Host;
#else
	kCGBitmapByteOrderDefault;
#endif
	char *data;
	CGRect bounds = CGRectMake(0, 0, macDraw->size.width,
		macDraw->size.height);

	if (macDraw->flags & TK_IS_BW_PIXMAP) {
	    bitsPerPixel = 8;
	    bitmapInfo = kCGImageAlphaOnly;
	} else {
	    colorspace = CGColorSpaceCreateWithName(kCGColorSpaceGenericRGB);
	    bitsPerPixel = 32;
	    bitmapInfo |= kCGImageAlphaPremultipliedFirst;
	}
	bytesPerRow = ((size_t) macDraw->size.width * bitsPerPixel + 127) >> 3
		& ~15;
	len = macDraw->size.height * bytesPerRow;
	data = ckalloc(len);
	bzero(data, len);
	macDraw->context = CGBitmapContextCreate(data, macDraw->size.width,
		macDraw->size.height, bitsPerComponent, bytesPerRow,
		colorspace, bitmapInfo);
	if (macDraw->context) {
	    CGContextClearRect(macDraw->context, bounds);
	}
	if (colorspace) {
	    CFRelease(colorspace);
	}
    }

    return (macDraw ? macDraw->context : NULL);
}


static NSView*
TkMacOSXDrawableView(
    MacDrawable *macWin)
{
    NSView *result = nil;

    if (!macWin) {
	result = nil;
    } else if (!macWin->toplevel) {
	result = macWin->view;
    } else if (!(macWin->toplevel->flags & TK_EMBEDDED)) {
	result = macWin->toplevel->view;
    } else {
	TkWindow *contWinPtr = TkpGetOtherWindow(macWin->toplevel->winPtr);
	if (contWinPtr) {
	    result = TkMacOSXDrawableView(contWinPtr->privatePtr);
	}
    }
    return result;
}


static int
GetThemeFromPixelCode(
    unsigned char code,
    ThemeBrush *brush,
    ThemeTextColor *textColor,
    ThemeBackgroundKind *background)
{
    if (code >= MIN_PIXELCODE && code <= MAX_PIXELCODE) {
	*brush = systemColorMap[code - MIN_PIXELCODE].brush;
	*textColor = systemColorMap[code - MIN_PIXELCODE].textColor;
	*background = systemColorMap[code - MIN_PIXELCODE].background;
    } else {
	*brush = 0;
	*textColor = 0;
	*background = 0;
    }
    if (!*brush && !*textColor && !*background && code != PIXEL_MAGIC &&
	    code != TRANSPARENT_PIXEL) {
	return false;
    } else {
	return true;
    }
}


static OSStatus
GetThemeColor(
    unsigned long pixel,
    ThemeBrush brush,
    ThemeTextColor textColor,
    ThemeBackgroundKind background,
    CGColorRef *c)
{
    OSStatus err = noErr;

    if (brush) {
	err = ChkErr(HIThemeBrushCreateCGColor, brush, c);
    /*} else if (textColor) {
	err = ChkErr(GetThemeTextColor, textColor, 32, true, c);*/
    } else {
	CGFloat rgba[4] = {0, 0, 0, 1};

	switch ((pixel >> 24) & 0xff) {
	case PIXEL_MAGIC: {
	    unsigned short red, green, blue;
	    red		= (pixel >> 16) & 0xff;
	    green	= (pixel >>  8) & 0xff;
	    blue	= (pixel      ) & 0xff;
	    red		|= red   << 8;
	    green	|= green << 8;
	    blue	|= blue  << 8;
	    rgba[0]	= red	/ 65535.0;
	    rgba[1]	= green / 65535.0;
	    rgba[2]	= blue  / 65535.0;
	    break;
	    }
	case TRANSPARENT_PIXEL:
	    rgba[3]	= 0.0;
	    break;
	}

        // this attempts to find something roughly fitting for any display
//	*c = CGColorCreateGenericRGB(rgba[0], rgba[1], rgba[2], rgba[3]);

        // may be off for non-main display but in most cases better than prev
	static CGColorSpaceRef deviceRGBSpace = NULL;
	if (!deviceRGBSpace) {
	    deviceRGBSpace = CGDisplayCopyColorSpace(CGMainDisplayID());
	}
	*c = CGColorCreate(deviceRGBSpace, rgba );
    }
    return err;
}


static TkpGCCache*
TkpGetGCCache(GC gc) {
    return (gc ? (TkpGCCache*)(((char*) gc) + sizeof(XGCValues) +
	    MAX_DASH_LIST_SIZE) : NULL);
}


static void
SetCachedColor(
    GC gc,
    unsigned long pixel,
    CGColorRef cgColor)
{
    TkpGCCache *gcCache = TkpGetGCCache(gc);

    if (gcCache && cgColor) {
	if (gc->foreground == pixel) {
	    if (gcCache->cachedForegroundColor) {
		CFRelease(gcCache->cachedForegroundColor);
	    }
	    gcCache->cachedForegroundColor = (CGColorRef) CFRetain(cgColor);
	    gcCache->cachedForeground = pixel;
	} else if (gc->background == pixel) {
	    if (gcCache->cachedBackgroundColor) {
		CFRelease(gcCache->cachedBackgroundColor);
	    }
	    gcCache->cachedBackgroundColor = (CGColorRef) CFRetain(cgColor);
	    gcCache->cachedBackground = pixel;
	}
    }
}


static CGColorRef
CopyCachedColor(
    GC gc,
    unsigned long pixel)
{
    TkpGCCache *gcCache = TkpGetGCCache(gc);
    CGColorRef cgColor = NULL;

    if (gcCache) {
	if (gcCache->cachedForeground == pixel) {
	    cgColor = gcCache->cachedForegroundColor;
	} else if (gcCache->cachedBackground == pixel) {
	    cgColor = gcCache->cachedBackgroundColor;
	}
	if (cgColor) {
	    CFRetain(cgColor);
	}
    }
    return cgColor;
}


static void
TkMacOSXSetColorInContext(
    GC gc,
    unsigned long pixel,
    CGContextRef context)
{
    OSStatus err = -1;
    CGColorRef cgColor = CopyCachedColor(gc, pixel);
    ThemeBrush brush;
    ThemeTextColor textColor;
    ThemeBackgroundKind background;

    if (!cgColor && GetThemeFromPixelCode((pixel >> 24) & 0xff, &brush,
	    &textColor, &background)) {
	if (brush) {
	    err = ChkErr(HIThemeSetFill, brush, NULL, context,
		    kHIThemeOrientationNormal);
	    if (err == noErr) {
		err = ChkErr(HIThemeSetStroke, brush, NULL, context,
			kHIThemeOrientationNormal);
	    }
	} else if (textColor) {
	    err = ChkErr(HIThemeSetTextFill, textColor, NULL, context,
		    kHIThemeOrientationNormal);
	} else if (background) {
	    CGRect rect = CGContextGetClipBoundingBox(context);
	    HIThemeBackgroundDrawInfo info = { 0, kThemeStateActive,
		    background };

	    err = ChkErr(HIThemeApplyBackground, &rect, &info,
		    context, kHIThemeOrientationNormal);
	}
	if (err == noErr) {
	    return;
	}
	err = ChkErr(GetThemeColor, pixel, brush, textColor, background,
		&cgColor);
	if (err == noErr) {
	    SetCachedColor(gc, pixel, cgColor);
	}
    } else if (!cgColor) {
	printf("Ignored unknown pixel value 0x%lx", pixel);
    }
    if (cgColor) {
	CGContextSetFillColorWithColor(context, cgColor);
	CGContextSetStrokeColorWithColor(context, cgColor);
	CGColorRelease(cgColor);
    }
}


static int
TkMacOSXSetupDrawingContext(
    Drawable d,
    GC gc,
    int useCG, /* advisory only ! */
    TkMacOSXDrawingContext *dcPtr)
{
    MacDrawable *macDraw = ((MacDrawable*)d);
    int dontDraw = 0, isWin = 0;
    TkMacOSXDrawingContext dc = {};
    CGRect clipBounds;

    dc.clipRgn = TkMacOSXGetClipRgn(d);
    if (!dontDraw) {
	ClipToGC(d, gc, &dc.clipRgn);
	dontDraw = dc.clipRgn ? HIShapeIsEmpty(dc.clipRgn) : 0;
    }
    if (dontDraw) {
	goto end;
    }
    if (useCG) {
	dc.context = GetCGContextForDrawable(d);
    }
    if (!dc.context || !(macDraw->flags & TK_IS_PIXMAP)) {
	isWin = (TkMacOSXDrawableWindow(d) != nil);
    }
    if (dc.context) {
	dc.portBounds = clipBounds = CGContextGetClipBoundingBox(dc.context);
    } else if (isWin) {
	NSView *view = TkMacOSXDrawableView(macDraw);
	if (view) {
	    if (view != [NSView focusView]) {
		dc.focusLocked = [view lockFocusIfCanDraw];
		dontDraw = !dc.focusLocked;
	    } else {
		dontDraw = ![view canDraw];
	    }
	    if (dontDraw) {
		goto end;
	    }
	    [[view window] disableFlushWindow];
	    dc.view = view;
	    dc.context = [[NSGraphicsContext currentContext] graphicsPort];
	    dc.portBounds = NSRectToCGRect([view bounds]);
	    if (dc.clipRgn) {
		clipBounds = CGContextGetClipBoundingBox(dc.context);
	    }
	} else {
	    Tcl_Panic("TkMacOSXSetupDrawingContext(): "
		    "no NSView to draw into !");
	}
    } else {
	Tcl_Panic("TkMacOSXSetupDrawingContext(): "
		"no context to draw into !");
    }
    if (dc.context) {
	CGAffineTransform t = { .a = 1, .b = 0, .c = 0, .d = -1, .tx = 0,
		.ty = dc.portBounds.size.height};
	dc.portBounds.origin.x += macDraw->xOff;
	dc.portBounds.origin.y += macDraw->yOff;
	if (!dc.focusLocked) {
	    CGContextSaveGState(dc.context);
	}
	CGContextSetTextDrawingMode(dc.context, kCGTextFill);
	CGContextConcatCTM(dc.context, t);
	if (dc.clipRgn) {
	    CGRect r;
	    if (!HIShapeIsRectangular(dc.clipRgn) || !CGRectContainsRect(
		    *HIShapeGetBounds(dc.clipRgn, &r),
		    CGRectApplyAffineTransform(clipBounds, t))) {
		ChkErr(HIShapeReplacePathInCGContext, dc.clipRgn, dc.context);
		CGContextEOClip(dc.context);
	    }
	}
	if (gc) {
	    static const CGLineCap cgCap[] = {
		[CapNotLast] = kCGLineCapButt,
		[CapButt] = kCGLineCapButt,
		[CapRound] = kCGLineCapRound,
		[CapProjecting] = kCGLineCapSquare,
	    };
	    static const CGLineJoin cgJoin[] = {
		[JoinMiter] = kCGLineJoinMiter,
		[JoinRound] = kCGLineJoinRound,
		[JoinBevel] = kCGLineJoinBevel,
	    };
	    bool shouldAntialias;
	    double w = gc->line_width;

	    TkMacOSXSetColorInContext(gc, gc->foreground, dc.context);
	    if (isWin) {
		CGContextSetPatternPhase(dc.context, CGSizeMake(
			dc.portBounds.size.width, dc.portBounds.size.height));
	    }
	    if(gc->function != GXcopy) {
		printf("Logical functions other than GXcopy are "
			"not supported for CG drawing!");
	    }
	    /* When should we antialias? */
	    shouldAntialias = !notAA(gc->line_width);
	    if (!shouldAntialias) {
		/* Make non-antialiased CG drawing look more like X11 */
		w -= (gc->line_width ? NON_AA_CG_OFFSET : 0);
	    }
	    CGContextSetShouldAntialias(dc.context, shouldAntialias);
	    CGContextSetLineWidth(dc.context, w);
	    if (gc->line_style != LineSolid) {
		int num = 0;
		char *p = &(gc->dashes);
		CGFloat dashOffset = gc->dash_offset;
		CGFloat lengths[10];

		while (p[num] != '\0' && num < 10) {
		    lengths[num] = p[num];
		    num++;
		}
		CGContextSetLineDash(dc.context, dashOffset, lengths, num);
	    }
	    if ((unsigned)gc->cap_style < sizeof(cgCap)/sizeof(CGLineCap)) {
		CGContextSetLineCap(dc.context,
			cgCap[(unsigned)gc->cap_style]);
	    }
	    if ((unsigned)gc->join_style < sizeof(cgJoin)/sizeof(CGLineJoin)) {
		CGContextSetLineJoin(dc.context,
			cgJoin[(unsigned)gc->join_style]);
	    }
	}
    }
end:
    if (dontDraw && dc.clipRgn) {
	CFRelease(dc.clipRgn);
	dc.clipRgn = NULL;
    }
    *dcPtr = dc;
    return !dontDraw;
}


static CGColorRef
TkMacOSXCreateCGColor(
    GC gc,
    unsigned long pixel)		/* Pixel value to convert. */
{
    CGColorRef cgColor = CopyCachedColor(gc, pixel);

    if (!cgColor && TkSetMacColor(pixel, &cgColor)) {
	SetCachedColor(gc, pixel, cgColor);
    }
    return cgColor;
}


static void
TkMacOSXRestoreDrawingContext(
    TkMacOSXDrawingContext *dcPtr)
{
    if (dcPtr->context) {
	CGContextSynchronize(dcPtr->context);
	[[dcPtr->view window] setViewsNeedDisplay:YES];
	[[dcPtr->view window] enableFlushWindow];
	if (dcPtr->focusLocked) {
	    [dcPtr->view unlockFocus];
	} else {
	    CGContextRestoreGState(dcPtr->context);
	}
    }
    if (dcPtr->clipRgn) {
	CFRelease(dcPtr->clipRgn);
    }
}


static void
DrawCharsInContext(
    Display *display,		/* Display on which to draw. */
    Drawable drawable,		/* Window or pixmap in which to draw. */
    GC gc,			/* Graphics context for drawing characters. */
    Tk_Font tkfont,		/* Font in which characters will be drawn; must
				 * be the same as font used in GC. */
    const char * source,	/* UTF-8 string to be displayed. Need not be
				 * '\0' terminated. All Tk meta-characters
				 * (tabs, control characters, and newlines)
				 * should be stripped out of the string that
				 * is passed to this function. If they are not
				 * stripped out, they will be displayed as
				 * regular printing characters. */
    int numBytes,		/* Number of bytes in string. */
    int rangeStart,		/* Index of first byte to draw. */
    int rangeLength,		/* Length of range to draw in bytes. */
    int x, int y,		/* Coordinates at which to place origin of the
				 * whole (not just the range) string when
				 * drawing. */
    double angle)
{
    const MacFont *fontPtr = (const MacFont *) tkfont;
    NSString *string;
    NSMutableDictionary *attributes;
    NSAttributedString *attributedString;
    CTTypesetterRef typesetter;
    CFIndex start, len;
    CTLineRef line;
    MacDrawable *macWin = (MacDrawable *) drawable;
    TkMacOSXDrawingContext drawingContext;
    CGContextRef context;
    CGColorRef fg;
    NSFont *nsFont;
    CGAffineTransform t;
    int h;

    if (rangeStart < 0 || rangeLength <= 0 ||
	    rangeStart + rangeLength > numBytes ||
	    !TkMacOSXSetupDrawingContext(drawable, gc, 1, &drawingContext)) {
	return;
    }
    string = [[NSString alloc] initWithBytesNoCopy:(void*)source
		length:numBytes encoding:NSUTF8StringEncoding freeWhenDone:NO];
    if (!string) {
	return;
    }
    context = drawingContext.context;
    fg = TkMacOSXCreateCGColor(gc, gc->foreground);
    attributes = [fontPtr->nsAttributes mutableCopy];
    [attributes setObject:(id)fg forKey:(id)kCTForegroundColorAttributeName];
    CFRelease(fg);
    nsFont = [attributes objectForKey:NSFontAttributeName];
    [nsFont setInContext:[NSGraphicsContext graphicsContextWithGraphicsPort:
	    context flipped:NO]];
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    attributedString = [[NSAttributedString alloc] initWithString:string
	    attributes:attributes];
    typesetter = CTTypesetterCreateWithAttributedString(
	    (CFAttributedStringRef)attributedString);
    x += macWin->xOff;
    y += macWin->yOff;
    h = drawingContext.portBounds.size.height;
    y = h - y;
    t = CGAffineTransformMake(1.0, 0.0, 0.0, -1.0, 0.0, h);
    if (angle != 0.0) {
	t = CGAffineTransformTranslate(CGAffineTransformRotate(
		CGAffineTransformTranslate(t, x, y), angle*PI/180.0), -x, -y);
    }
    CGContextConcatCTM(context, t);
    CGContextSetTextPosition(context, x, y);
    start = Tcl_NumUtfChars(source, rangeStart);
    len = Tcl_NumUtfChars(source, rangeStart + rangeLength);
    if (start > 0) {
	CGRect clipRect = CGRectInfinite, startBounds;
	line = CTTypesetterCreateLine(typesetter, CFRangeMake(0, start));
	startBounds = CTLineGetImageBounds(line, context);
	CFRelease(line);
	clipRect.origin.x = startBounds.origin.x + startBounds.size.width;
	CGContextClipToRect(context, clipRect);
    }
    line = CTTypesetterCreateLine(typesetter, CFRangeMake(0, len));
    CTLineDraw(line, context);
    CFRelease(line);
    CFRelease(typesetter);
    [attributedString release];
    [string release];
    [attributes release];
    TkMacOSXRestoreDrawingContext(&drawingContext);
}


void
TkpDrawCharsInContext(
    Display *display,		/* Display on which to draw. */
    Drawable drawable,		/* Window or pixmap in which to draw. */
    GC gc,			/* Graphics context for drawing characters. */
    Tk_Font tkfont,		/* Font in which characters will be drawn; must
				 * be the same as font used in GC. */
    const char * source,	/* UTF-8 string to be displayed. Need not be
				 * '\0' terminated. All Tk meta-characters
				 * (tabs, control characters, and newlines)
				 * should be stripped out of the string that
				 * is passed to this function. If they are not
				 * stripped out, they will be displayed as
				 * regular printing characters. */
    int numBytes,		/* Number of bytes in string. */
    int rangeStart,		/* Index of first byte to draw. */
    int rangeLength,		/* Length of range to draw in bytes. */
    int x, int y)		/* Coordinates at which to place origin of the
				 * whole (not just the range) string when
				 * drawing. */
{
    DrawCharsInContext(display, drawable, gc, tkfont, source, numBytes,
	    rangeStart, rangeLength, x, y, 0.0);
}


void
XClipBox(
    Region r,
    XRectangle* rect_return)
{
    CGRect rect;

    HIShapeGetBounds((HIShapeRef) r, &rect);
    rect_return->x = rect.origin.x;
    rect_return->y = rect.origin.y;
    rect_return->width = rect.size.width;
    rect_return->height = rect.size.height;
}


Region
XCreateRegion(void)
{
    return (Region) HIShapeCreateMutable();
}


void
XDestroyRegion(
    Region r)
{
    if (r) {
	CFRelease(r);
    }
}


static int
TkMacOSXIsEmptyRegion(
    TkRegion r)
{
    return HIShapeIsEmpty((HIMutableShapeRef) r) ? 1 : 0;
}


int
XRectInRegion(
    Region region,
    int x,
    int y,
    unsigned int width,
    unsigned int height)
{
    if (TkMacOSXIsEmptyRegion(region)) {
	return RectangleOut;
    }
    else {
	const CGRect r = CGRectMake(x, y, width, height);
	return HIShapeIntersectsRect((HIShapeRef) region, &r) ?
	    RectanglePart : RectangleOut;
    }
}


static OSStatus
TkMacOSHIShapeUnion(
    HIShapeRef inShape1,
    HIShapeRef inShape2,
    HIMutableShapeRef outResult)
{
    OSStatus result;

    result = HIShapeUnion(inShape1, inShape2, outResult);
    return result;
}


void
XUnionRectWithRegion(
    XRectangle* rectangle,
    Region src_region,
    Region dest_region_return)
{
    const CGRect r = CGRectMake(rectangle->x, rectangle->y,
	    rectangle->width, rectangle->height);

    if (src_region == dest_region_return) {
	ChkErr(TkMacOSHIShapeUnionWithRect,
		(HIMutableShapeRef) dest_region_return, &r);
    } else {
	HIShapeRef rectRgn = HIShapeCreateWithRect(&r);

	ChkErr(TkMacOSHIShapeUnion, rectRgn, (HIShapeRef) src_region,
		(HIMutableShapeRef) dest_region_return);
	CFRelease(rectRgn);
    }
}

#endif /* __MacOSX__ */
// vi:set ts=8 sw=4:
