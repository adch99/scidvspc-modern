//////////////////////////////////////////////////////////////////////
//
//  FILE:       charsetdetector.h
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

#ifndef SCID_CHARSETDETECTOR_H
#define SCID_CHARSETDETECTOR_H

#include "universalchardet/nsUniversalDetector.h"

#include <string.h>
#include <string>

#if __cplusplus <= 201103 // no c++11 ?
# define override
#endif

class NameBase;
class TextBuffer;
class CharsetConverter;


class CharsetDetector : public nsUniversalDetector
{
public:

  // Test whether the encoding is UTF-8.
  bool isUTF8() const;

  // Test whether the encoding is Latin-1.
  bool isLatin1() const;

  // Test whether the encoding is CP1252 (default in Windoze).
  bool isWindows() const;
  bool isDOS() const;

  // Test whether the encoding is pure ASCII.
  bool isASCII() const;

  // Return detected encoding;
  std::string const& encoding() const;

  // Reset detector to initial state, this will also set
  // the system encoding as default.
  void reset();

  // Detect the general encoding from namebase. This may fail, possibly
  // the namebase contains a mix of characater sets, and in this case
  // the result will be an empty string.
  // Note that this function does not call reset() automatically.
  void detect(NameBase const& nb);

  // Detect the character set of a single string.
  // Note that this function does not call reset() automatically.
  void detect(TextBuffer const& text);

  // Setup the encoding.
  void setup(char const* encoding);

private:

  friend class CharsetConverter;

  struct Info
  {
    Info();
    Info(char const* encoding);

    void setup(char const* encoding);

    std::string m_encoding;
    bool m_isASCII;
    bool m_isLatin1;
    bool m_isWindoze;
    bool m_isDOS;
    bool m_isUTF8;
  };

  // We have to override the reporting function.
  void Report(char const* charset) override;

  Info m_info;
};


inline bool CharsetDetector::isUTF8() const                 { return m_info.m_isUTF8; }
inline bool CharsetDetector::isASCII() const                { return m_info.m_isASCII; }
inline bool CharsetDetector::isLatin1() const               { return m_info.m_isLatin1; }
inline bool CharsetDetector::isWindows() const              { return m_info.m_isWindoze; }
inline bool CharsetDetector::isDOS() const                  { return m_info.m_isDOS; }
inline std::string const& CharsetDetector::encoding() const { return m_info.m_encoding; }
inline void CharsetDetector::setup(char const* encoding)    { m_info.setup(encoding); }


#if __cplusplus <= 201103
# undef override
#endif

#endif // SCID_CHARSETDETECTOR_H
//////////////////////////////////////////////////////////////////////
//  EOF: charsetdetector.h
//////////////////////////////////////////////////////////////////////
// vi:set ts=2 sw=2 et:
