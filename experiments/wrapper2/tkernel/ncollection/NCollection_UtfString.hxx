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

#ifndef _NCollection_UtfString_H__
#define _NCollection_UtfString_H__

#include <NCollection_UtfIterator.hxx>

#include <cstring>
#include <cstdlib>

//! This template class represent constant UTF-* string.
//! String stored in memory continuously, always NULL-terminated
//! and can be used as standard C-string using ToCString() method.
//!
//! Notice that changing the string is not allowed
//! and any modifications should produce new string.
//!
//! In comments to this class, terms "Unicode symbol" is used as 
//! synonym of "Unicode code point".
template<typename Type>
class NCollection_UtfString
{

public:

  NCollection_UtfIterator<Type> Iterator() const
  {
    return NCollection_UtfIterator<Type> (myString);
  }

  //! @return the size of the buffer in bytes, excluding NULL-termination symbol
  Standard_Integer Size() const
  {
    return mySize;
  }

  //! @return the length of the string in Unicode symbols
  Standard_Integer Length() const
  {
    return myLength;
  }

  //! Retrieve Unicode symbol at specified position.
  //! Warning! This is a slow access. Iterator should be used for consecutive parsing.
  //! @param theCharIndex the index of the symbol, should be lesser than Length()
  //! @return the Unicode symbol value
  Standard_Utf32Char GetChar (const Standard_Integer theCharIndex) const;

  //! Retrieve string buffer at specified position.
  //! Warning! This is a slow access. Iterator should be used for consecutive parsing.
  //! @param theCharIndex the index of the symbol, should be less than Length()
  //!        (first symbol of the string has index 0)
  //! @return the pointer to the symbol
  const Type* GetCharBuffer (const Standard_Integer theCharIndex) const;

  //! Retrieve Unicode symbol at specified position.
  //! Warning! This is a slow access. Iterator should be used for consecutive parsing.
  Standard_Utf32Char operator[] (const Standard_Integer theCharIndex) const
  {
    return GetChar (theCharIndex);
  }

  //! Initialize empty string.
  NCollection_UtfString();

  //! Copy constructor.
  //! @param theCopy string to copy.
  NCollection_UtfString (const NCollection_UtfString& theCopy);

#ifndef OCCT_NO_RVALUE_REFERENCE
  //! Move constructor
  NCollection_UtfString (NCollection_UtfString&& theOther);
#endif

  //! Copy constructor from UTF-8 string.
  //! @param theCopyUtf8 UTF-8 string to copy
  //! @param theLength   optional length limit in Unicode symbols (NOT bytes!)
  //! The string is copied till NULL symbol or, if theLength >0, 
  //! till either NULL or theLength-th symbol (which comes first).
  NCollection_UtfString (const char*            theCopyUtf8,
                         const Standard_Integer theLength = -1);

  //! Copy constructor from UTF-16 string.
  //! @param theCopyUtf16 UTF-16 string to copy
  //! @param theLength    the length limit in Unicode symbols (NOT bytes!)
  //! The string is copied till NULL symbol or, if theLength >0, 
  //! till either NULL or theLength-th symbol (which comes first).
  NCollection_UtfString (const Standard_Utf16Char* theCopyUtf16,
                         const Standard_Integer    theLength = -1);

  //! Copy constructor from UTF-32 string.
  //! @param theCopyUtf32 UTF-32 string to copy
  //! @param theLength    the length limit in Unicode symbols (NOT bytes!)
  //! The string is copied till NULL symbol or, if theLength >0, 
  //! till either NULL or theLength-th symbol (which comes first).
  NCollection_UtfString (const Standard_Utf32Char* theCopyUtf32,
                         const Standard_Integer    theLength = -1);


  //! Copy from Unicode string in UTF-8, UTF-16, or UTF-32 encoding,
  //! determined by size of TypeFrom character type.
  //! @param theStringUtf Unicode string
  //! @param theLength    the length limit in Unicode symbols
  //! The string is copied till NULL symbol or, if theLength >0, 
  //! till either NULL or theLength-th symbol (which comes first).
  template <typename TypeFrom>
  inline void FromUnicode (const TypeFrom*        theStringUtf,
                           const Standard_Integer theLength = -1)
  {
    NCollection_UtfIterator<TypeFrom> anIterRead (theStringUtf);
    if (*anIterRead == 0)
    {
      // special case
      Clear();
      return;
    }
    fromUnicodeImpl (theStringUtf, theLength, anIterRead);
  }

  //! Copy from multibyte string in current system locale.
  //! @param theString multibyte string
  //! @param theLength the length limit in Unicode symbols
  //! The string is copied till NULL symbol or, if theLength >0, 
  //! till either NULL or theLength-th symbol (which comes first).
  void FromLocale (const char*            theString,
                   const Standard_Integer theLength = -1);

  //! Destructor.
  ~NCollection_UtfString();

  //! Compares this string with another one.
  bool IsEqual (const NCollection_UtfString& theCompare) const;

  //! Returns the substring.
  //! @param theStart start index (inclusive) of subString
  //! @param theEnd   end index   (exclusive) of subString
  //! @return the substring
  NCollection_UtfString SubString (const Standard_Integer theStart,
                                   const Standard_Integer theEnd) const;

  //! Returns NULL-terminated Unicode string.
  //! Should not be modifed or deleted!
  //! @return (const Type* ) pointer to string
  const Type* ToCString() const
  {
    return myString;
  }

  //! @return copy in UTF-8 format
  const NCollection_UtfString<Standard_Utf8Char> ToUtf8() const;

  //! @return copy in UTF-16 format
  const NCollection_UtfString<Standard_Utf16Char> ToUtf16() const;

  //! @return copy in UTF-32 format
  const NCollection_UtfString<Standard_Utf32Char> ToUtf32() const;

  //! @return copy in wide format (UTF-16 on Windows and UTF-32 on Linux)
  const NCollection_UtfString<Standard_WideChar> ToUtfWide() const;

  //! Converts the string into string in the current system locale.
  //! @param theBuffer    output buffer
  //! @param theSizeBytes buffer size in bytes
  //! @return true on success
  bool ToLocale (char*                  theBuffer,
                 const Standard_Integer theSizeBytes) const;

  //! @return true if string is empty
  bool IsEmpty() const
  {
    return myString[0] == Type(0);
  }

  //! Zero string.
  void Clear();

public: //! @name assign operators

  //! Copy from another string.
  const NCollection_UtfString& Assign (const NCollection_UtfString& theOther);

  //! Exchange the data of two strings (without reallocating memory).
  void Swap (NCollection_UtfString& theOther);

  //! Copy from another string.
  const NCollection_UtfString& operator= (const NCollection_UtfString& theOther) { return Assign (theOther); }

#ifndef OCCT_NO_RVALUE_REFERENCE
  //! Move assignment operator.
  NCollection_UtfString& operator= (NCollection_UtfString&& theOther) { Swap (theOther); return *this; }
#endif

  //! Copy from UTF-8 NULL-terminated string.
  const NCollection_UtfString& operator= (const char* theStringUtf8);

  //! Copy from wchar_t UTF NULL-terminated string.
  const NCollection_UtfString& operator= (const Standard_WideChar* theStringUtfWide);

  //! Join strings.
  NCollection_UtfString& operator+= (const NCollection_UtfString& theAppend);

  //! Join two strings.
  friend NCollection_UtfString operator+ (const NCollection_UtfString& theLeft,
                                          const NCollection_UtfString& theRight);

public: //! @name compare operators

  bool operator== (const NCollection_UtfString& theCompare) const
  {
    return IsEqual (theCompare);
  }
  bool operator!= (const NCollection_UtfString& theCompare) const;

};

typedef NCollection_UtfString<Standard_Utf8Char>  NCollection_Utf8String;
typedef NCollection_UtfString<Standard_Utf16Char> NCollection_Utf16String;
typedef NCollection_UtfString<Standard_Utf32Char> NCollection_Utf32String;
typedef NCollection_UtfString<Standard_WideChar>  NCollection_UtfWideString;

// template implementation (inline methods)
#include "NCollection_UtfString.lxx"

#endif // _NCollection_UtfString_H__
