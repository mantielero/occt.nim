// Created on: 2013-01-28
// Created by: Kirill GAVRILOV
// Copyright (c) 2013-2014 OPEN CASCADE SAS
//
// This file is part of Open CASCADE Technology software library.
//
// This library is free software; you can redistribute it and/or modify it under
// the terms of the GNU Lesser General Public License version 2.1 as published
// by the Free Software Foundation, with special exception defined in the file
// OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
// distribution for complete text of the license and disclaimer of any warranty.
//
// Alternatively, this file may be used under the terms of Open CASCADE
// commercial license or contractual agreement.

#ifndef _NCollection_UtfIterator_H__
#define _NCollection_UtfIterator_H__

#include <Standard_Handle.hxx>

//! Template class for Unicode strings support.
//!
//! It defines an iterator and provide correct way to read multi-byte text (UTF-8 and UTF-16)
//! and convert it from one to another.
//! The current value of iterator is returned as UTF-32 Unicode symbol.
//!
//! Here and below term "Unicode symbol" is used as 
//! synonym of "Unicode code point".
template<typename Type>
class NCollection_UtfIterator
{

public:

  //! Constructor.
  //! @param theString buffer to iterate
  NCollection_UtfIterator (const Type* theString)
; 











  //! Initialize iterator within specified NULL-terminated string.
  void Init (const Type* theString);


  //! Return true if Unicode symbol is within valid range.
  bool IsValid() const
  {
    return myCharUtf32 <= UTF32_MAX_LEGAL;
  }

  //! Dereference operator.
  //! @return the UTF-32 codepoint of the symbol currently pointed by iterator.
  Standard_Utf32Char operator*() const
  {
    return myCharUtf32;
  }

  //! Buffer-fetching getter.
  const Type* BufferHere() const { return myPosition; }

  //! Buffer-fetching getter. Dangerous! Iterator should be reinitialized on buffer change.
  Type* ChangeBufferHere() { return (Type* )myPosition; }

  //! Buffer-fetching getter.
  const Type* BufferNext() const { return myPosNext; }

  //! @return the index displacement from iterator intialization
  //!         (first symbol has index 0)
  Standard_Integer Index() const
  {
    return myCharIndex;
  }

  //! @return the advance in bytes to store current symbol in UTF-8.
  //! 0 means an invalid symbol;
  //! 1-4 bytes are valid range.
  Standard_Integer AdvanceBytesUtf8() const;

  //! @return the advance in bytes to store current symbol in UTF-16.
  //! 0 means an invalid symbol;
  //! 2 bytes is a general case;
  //! 4 bytes for surrogate pair.
  Standard_Integer AdvanceBytesUtf16() const;

  //! @return the advance in bytes to store current symbol in UTF-16.
  //! 0 means an invalid symbol;
  //! 1 16-bit code unit is a general case;
  //! 2 16-bit code units for surrogate pair.
  Standard_Integer AdvanceCodeUnitsUtf16() const;

  //! @return the advance in bytes to store current symbol in UTF-32.
  //! Always 4 bytes (method for consistency).
  Standard_Integer AdvanceBytesUtf32() const
  {
    return Standard_Integer(sizeof(Standard_Utf32Char));
  }

  //! Fill the UTF-8 buffer within current Unicode symbol.
  //! Use method AdvanceUtf8() to allocate buffer with enough size.
  //! @param theBuffer buffer to fill
  //! @return new buffer position (for next char)
  Standard_Utf8Char*  GetUtf8 (Standard_Utf8Char*  theBuffer) const;
  Standard_Utf8UChar* GetUtf8 (Standard_Utf8UChar* theBuffer) const;

  //! Fill the UTF-16 buffer within current Unicode symbol.
  //! Use method AdvanceUtf16() to allocate buffer with enough size.
  //! @param theBuffer buffer to fill
  //! @return new buffer position (for next char)
  Standard_Utf16Char* GetUtf16 (Standard_Utf16Char* theBuffer) const;

  //! Fill the UTF-32 buffer within current Unicode symbol.
  //! Use method AdvanceUtf32() to allocate buffer with enough size.
  //! @param theBuffer buffer to fill
  //! @return new buffer position (for next char)
  Standard_Utf32Char* GetUtf32 (Standard_Utf32Char* theBuffer) const;

  //! @return the advance in TypeWrite chars needed to store current symbol
  template<typename TypeWrite>
  inline Standard_Integer AdvanceBytesUtf() const;

  //! Fill the UTF-** buffer within current Unicode symbol.
  //! Use method AdvanceUtf**() to allocate buffer with enough size.
  //! @param theBuffer buffer to fill
  //! @return new buffer position (for next char)
  template<typename TypeWrite>
  inline TypeWrite* GetUtf (TypeWrite* theBuffer) const;


};

typedef NCollection_UtfIterator<Standard_Utf8Char>  NCollection_Utf8Iter;
typedef NCollection_UtfIterator<Standard_Utf16Char> NCollection_Utf16Iter;
typedef NCollection_UtfIterator<Standard_Utf32Char> NCollection_Utf32Iter;
typedef NCollection_UtfIterator<Standard_WideChar>  NCollection_UtfWideIter;

// template implementation
#include "NCollection_UtfIterator.lxx"

#endif // _NCollection_UtfIterator_H__
