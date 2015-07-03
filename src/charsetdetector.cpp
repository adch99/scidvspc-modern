//////////////////////////////////////////////////////////////////////
//
//  FILE:       charsetdetector.cpp
//              CharsetDetector class methods
//
//  Part of:    Scid vs. PC
//  Version:    4.15
//
//  Notice:     Copyright (c) 2015  Gregor Cramer.  All rights reserved.
//
//  Author:     Gregor Cramer (gcramer@users.sourceforge.net)
//
//////////////////////////////////////////////////////////////////////

#include "charsetdetector.h"
#include "namebase.h"
#include "textbuf.h"
#include "myassert.h"


CharsetDetector::Info::Info()
  :m_encoding("ascii")
  ,m_isASCII(true)
  ,m_isLatin1(false)
  ,m_isWindoze(false)
  ,m_isDOS(false)
  ,m_isUTF8(false)
{
}


CharsetDetector::Info::Info(char const* encoding)
  :m_isASCII(false)
  ,m_isLatin1(false)
  ,m_isWindoze(false)
  ,m_isDOS(false)
  ,m_isUTF8(false)
{
  setup(encoding);
}


void
CharsetDetector::Info::setup(char const* encoding)
{
  ASSERT(encoding);
  m_encoding = encoding;
  m_isASCII = (m_encoding == "ascii");
  m_isLatin1 = (m_encoding == "iso8859-1");
  m_isWindoze = (m_encoding == "cp1252");
  m_isDOS = (m_encoding == "cp850");
  m_isUTF8 = (m_encoding == "utf-8");
}


void CharsetDetector::reset()
{
  Reset();
  m_info.setup("ascii");
}


void CharsetDetector::detect(NameBase const& nb_)
{
  // NOTE: NameBase does not provide constness.
  NameBase& nb = const_cast<NameBase&>(nb_);

  for (unsigned type = 0; type <= NAME_LAST; ++type)
  {
    idNumberT id;
    nb.IterateStart(type);

    while (nb.Iterate(type, &id) == OK)
    {
      char const* s = nb.GetName(type, id);
      HandleData(s, ::strlen(s));
    }
  }

  DataEnd();
}


void CharsetDetector::detect(TextBuffer const& text_)
{
  // NOTE: TextBuffer does not provide constness.
  TextBuffer& text = const_cast<TextBuffer&>(text_);

  HandleData(text.GetBuffer(), text.GetByteCount());
  DataEnd();
}


void CharsetDetector::Report(char const* charset)
{
  m_info.setup(charset);
}

//////////////////////////////////////////////////////////////////////
//  EOF: charsetdetector.h
//////////////////////////////////////////////////////////////////////
// vi:set ts=2 sw=2 et:
