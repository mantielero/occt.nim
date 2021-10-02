when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2013-01-28
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## ! This template class represent constant UTF-* string.
## ! String stored in memory continuously, always NULL-terminated
## ! and can be used as standard C-string using ToCString() method.
## !
## ! Notice that changing the string is not allowed
## ! and any modifications should produce new string.
## !
## ! In comments to this class, terms "Unicode symbol" is used as
## ! synonym of "Unicode code point".

type
  NCollection_UtfString*[Type] {.importcpp: "NCollection_UtfString<\'0>",
                                header: "NCollection_UtfString.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## @name
                                                                                  ## assign
                                                                                  ## operators
                                                                                  ##
                                                                                  ## !
                                                                                  ## Copy
                                                                                  ## from
                                                                                  ## another
                                                                                  ## string.
                                                                                  ##
                                                                                  ## !
                                                                                  ## @name
                                                                                  ## compare
                                                                                  ## operators


proc Iterator*[Type](this: NCollection_UtfString[Type]): NCollection_UtfIterator[
    Type] {.noSideEffect, cdecl, importcpp: "Iterator", dynlib: tkernel.}
proc Size*[Type](this: NCollection_UtfString[Type]): cint {.noSideEffect, cdecl,
    importcpp: "Size", dynlib: tkernel.}
proc Length*[Type](this: NCollection_UtfString[Type]): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkernel.}
proc GetChar*[Type](this: NCollection_UtfString[Type]; theCharIndex: cint): Standard_Utf32Char {.
    noSideEffect, cdecl, importcpp: "GetChar", dynlib: tkernel.}
proc GetCharBuffer*[Type](this: NCollection_UtfString[Type]; theCharIndex: cint): ptr Type {.
    noSideEffect, cdecl, importcpp: "GetCharBuffer", dynlib: tkernel.}
proc `[]`*[Type](this: NCollection_UtfString[Type]; theCharIndex: cint): Standard_Utf32Char {.
    noSideEffect, cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc constructNCollection_UtfString*[Type](): NCollection_UtfString[Type] {.cdecl,
    constructor, importcpp: "NCollection_UtfString<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_UtfString*[Type](theCopy: NCollection_UtfString): NCollection_UtfString[
    Type] {.cdecl, constructor, importcpp: "NCollection_UtfString<\'*0>(@)",
           dynlib: tkernel.}
proc constructNCollection_UtfString*[Type](theCopyUtf8: cstring;
    theLength: cint = -1): NCollection_UtfString[Type] {.cdecl, constructor,
    importcpp: "NCollection_UtfString<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_UtfString*[Type](theCopyUtf16: ptr Standard_Utf16Char;
    theLength: cint = -1): NCollection_UtfString[Type] {.cdecl, constructor,
    importcpp: "NCollection_UtfString<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_UtfString*[Type](theCopyUtf32: ptr Standard_Utf32Char;
    theLength: cint = -1): NCollection_UtfString[Type] {.cdecl, constructor,
    importcpp: "NCollection_UtfString<\'*0>(@)", dynlib: tkernel.}
proc FromUnicode*[Type; TypeFrom](this: var NCollection_UtfString[Type];
                                theStringUtf: ptr TypeFrom; theLength: cint = -1) {.
    cdecl, importcpp: "FromUnicode", dynlib: tkernel.}
proc FromLocale*[Type](this: var NCollection_UtfString[Type]; theString: cstring;
                      theLength: cint = -1) {.cdecl, importcpp: "FromLocale",
    dynlib: tkernel.}
proc destroyNCollection_UtfString*[Type](this: var NCollection_UtfString[Type]) {.
    cdecl, importcpp: "#.~NCollection_UtfString()", dynlib: tkernel.}
proc IsEqual*[Type](this: NCollection_UtfString[Type];
                   theCompare: NCollection_UtfString): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
proc SubString*[Type](this: NCollection_UtfString[Type]; theStart: cint; theEnd: cint): NCollection_UtfString {.
    noSideEffect, cdecl, importcpp: "SubString", dynlib: tkernel.}
proc ToCString*[Type](this: NCollection_UtfString[Type]): ptr Type {.noSideEffect,
    cdecl, importcpp: "ToCString", dynlib: tkernel.}
proc ToUtf8*[Type](this: NCollection_UtfString[Type]): NCollection_UtfString[
    Standard_Utf8Char] {.noSideEffect, cdecl, importcpp: "ToUtf8", dynlib: tkernel.}
proc ToUtf16*[Type](this: NCollection_UtfString[Type]): NCollection_UtfString[
    Standard_Utf16Char] {.noSideEffect, cdecl, importcpp: "ToUtf16", dynlib: tkernel.}
proc ToUtf32*[Type](this: NCollection_UtfString[Type]): NCollection_UtfString[
    Standard_Utf32Char] {.noSideEffect, cdecl, importcpp: "ToUtf32", dynlib: tkernel.}
proc ToUtfWide*[Type](this: NCollection_UtfString[Type]): NCollection_UtfString[
    Standard_WideChar] {.noSideEffect, cdecl, importcpp: "ToUtfWide", dynlib: tkernel.}
proc ToLocale*[Type](this: NCollection_UtfString[Type]; theBuffer: cstring;
                    theSizeBytes: cint): bool {.noSideEffect, cdecl,
    importcpp: "ToLocale", dynlib: tkernel.}
proc IsEmpty*[Type](this: NCollection_UtfString[Type]): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc Clear*[Type](this: var NCollection_UtfString[Type]) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc Assign*[Type](this: var NCollection_UtfString[Type];
                  theOther: NCollection_UtfString): NCollection_UtfString {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc Swap*[Type](this: var NCollection_UtfString[Type];
                theOther: var NCollection_UtfString) {.cdecl, importcpp: "Swap",
    dynlib: tkernel.}
proc `+=`*[Type](this: var NCollection_UtfString[Type];
                theAppend: NCollection_UtfString) {.cdecl, importcpp: "(# += #)",
    dynlib: tkernel.}
proc `==`*[Type](this: NCollection_UtfString[Type];
                theCompare: NCollection_UtfString): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", dynlib: tkernel.}
type
  NCollection_Utf8String* = NCollection_UtfString[Standard_Utf8Char]
  NCollection_Utf16String* = NCollection_UtfString[Standard_Utf16Char]
  NCollection_Utf32String* = NCollection_UtfString[Standard_Utf32Char]
  NCollection_UtfWideString* = NCollection_UtfString[Standard_WideChar]

##  template implementation (inline methods)

import
  NCollection_UtfString
