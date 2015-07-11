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
#include "charsetconverter.h"
#include "textbuf.h"
#include "myassert.h"


static bool
isAscii(char const* str, unsigned len)
{
  for ( ; *str; ++str)
  {
    if (*str & 0x80)
      return false;
  }

  return true;
}


CharsetDetector::Info::Info()
  :m_encoding("ascii")
  ,m_isASCII(true)
  ,m_isLatin1(false)
  ,m_isWindoze(false)
  ,m_isDOS(false)
  ,m_isUTF8(false)
{
}


CharsetDetector::Info::Info(std::string const& encoding)
  :m_isASCII(false)
  ,m_isLatin1(false)
  ,m_isWindoze(false)
  ,m_isDOS(false)
  ,m_isUTF8(false)
{
  setup(encoding);
}


void
CharsetDetector::Info::setup(std::string const& encoding)
{
  m_encoding = encoding;
  m_isASCII = (m_encoding == "ascii");
  m_isLatin1 = (m_encoding == "iso8859-1");
  m_isWindoze = (m_encoding == "cp1252");
  m_isDOS = (m_encoding == "cp850");
  m_isUTF8 = (m_encoding == "utf-8");
}


CharsetDetector::CharsetDetector()
  :m_ascii(0)
  ,m_latin1(0)
  ,m_cp850(0)
  ,m_cp1252(0)
{
}


void CharsetDetector::reset()
{
  Reset();
  m_ascii = 0;
  m_latin1 = 0;
  m_cp850 = 0;
  m_cp1252 = 0;
  m_info.setup("ascii");
}


void CharsetDetector::detect(char const* value, unsigned len)
{
  ASSERT(value);

  if (!::isAscii(value, len))
  {
    HandleData(value, len);
    m_ascii = -1;

    if (m_latin1 >= 0)
    {
      int weight = CharsetConverter::detectLatin1(value, len);

      if (weight == -1)
        m_latin1 = -1;
      else
        m_latin1 += weight;
    }

    if (m_cp850 >= 0)
    {
      int weight = CharsetConverter::detectCP850(value, len);

      if (weight == -1)
        m_cp850 = -1;
      else
        m_cp850 += weight;
    }

    if (m_cp1252 >= 0)
    {
      int weight = CharsetConverter::detectCP1252(value, len);

      if (weight == -1)
        m_cp1252 = -1;
      else
        m_cp1252 += weight;
    }
  }
  else if (m_latin1 >= 0)
  {
    int weight = CharsetConverter::detectLatin1(value, len);

    if (weight == -1)
      m_latin1 = -1;
    else
      m_latin1 += weight;
  }
}


void
CharsetDetector::finish()
{
  DataEnd();

  if ((isASCII() && m_ascii == -1) || (isLatin1() && m_latin1 == -1))
  {
    if (m_latin1 >= m_cp850 && m_latin1 >= m_cp1252)
      setup("iso8859-1");
    else if (m_cp850 >= m_cp1252)
      setup("cp850");
    else if (m_cp1252 >= 0)
      setup("cp1252");
  }
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
