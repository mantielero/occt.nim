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
  NCollectionUtfString*[Type] {.importcpp: "NCollection_UtfString<\'0>",
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


proc `iterator`*[Type](this: NCollectionUtfString[Type]): NCollectionUtfIterator[
    Type] {.noSideEffect, cdecl, importcpp: "Iterator", dynlib: tkernel.}
proc size*[Type](this: NCollectionUtfString[Type]): cint {.noSideEffect, cdecl,
    importcpp: "Size", dynlib: tkernel.}
proc length*[Type](this: NCollectionUtfString[Type]): cint {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkernel.}
proc getChar*[Type](this: NCollectionUtfString[Type]; theCharIndex: cint): StandardUtf32Char {.
    noSideEffect, cdecl, importcpp: "GetChar", dynlib: tkernel.}
proc getCharBuffer*[Type](this: NCollectionUtfString[Type]; theCharIndex: cint): ptr Type {.
    noSideEffect, cdecl, importcpp: "GetCharBuffer", dynlib: tkernel.}
proc `[]`*[Type](this: NCollectionUtfString[Type]; theCharIndex: cint): StandardUtf32Char {.
    noSideEffect, cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc constructNCollectionUtfString*[Type](): NCollectionUtfString[Type] {.cdecl,
    constructor, importcpp: "NCollection_UtfString<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionUtfString*[Type](theCopy: NCollectionUtfString): NCollectionUtfString[
    Type] {.cdecl, constructor, importcpp: "NCollection_UtfString<\'*0>(@)",
           dynlib: tkernel.}
proc constructNCollectionUtfString*[Type](theCopyUtf8: cstring;
    theLength: cint = -1): NCollectionUtfString[Type] {.cdecl, constructor,
    importcpp: "NCollection_UtfString<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionUtfString*[Type](theCopyUtf16: ptr StandardUtf16Char;
    theLength: cint = -1): NCollectionUtfString[Type] {.cdecl, constructor,
    importcpp: "NCollection_UtfString<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionUtfString*[Type](theCopyUtf32: ptr StandardUtf32Char;
    theLength: cint = -1): NCollectionUtfString[Type] {.cdecl, constructor,
    importcpp: "NCollection_UtfString<\'*0>(@)", dynlib: tkernel.}
proc fromUnicode*[Type; TypeFrom](this: var NCollectionUtfString[Type];
                                theStringUtf: ptr TypeFrom; theLength: cint = -1) {.
    cdecl, importcpp: "FromUnicode", dynlib: tkernel.}
proc fromLocale*[Type](this: var NCollectionUtfString[Type]; theString: cstring;
                      theLength: cint = -1) {.cdecl, importcpp: "FromLocale",
    dynlib: tkernel.}
proc destroyNCollectionUtfString*[Type](this: var NCollectionUtfString[Type]) {.
    cdecl, importcpp: "#.~NCollection_UtfString()", dynlib: tkernel.}
proc isEqual*[Type](this: NCollectionUtfString[Type];
                   theCompare: NCollectionUtfString): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
proc subString*[Type](this: NCollectionUtfString[Type]; theStart: cint; theEnd: cint): NCollectionUtfString {.
    noSideEffect, cdecl, importcpp: "SubString", dynlib: tkernel.}
proc toCString*[Type](this: NCollectionUtfString[Type]): ptr Type {.noSideEffect,
    cdecl, importcpp: "ToCString", dynlib: tkernel.}
proc toUtf8*[Type](this: NCollectionUtfString[Type]): NCollectionUtfString[
    StandardUtf8Char] {.noSideEffect, cdecl, importcpp: "ToUtf8", dynlib: tkernel.}
proc toUtf16*[Type](this: NCollectionUtfString[Type]): NCollectionUtfString[
    StandardUtf16Char] {.noSideEffect, cdecl, importcpp: "ToUtf16", dynlib: tkernel.}
proc toUtf32*[Type](this: NCollectionUtfString[Type]): NCollectionUtfString[
    StandardUtf32Char] {.noSideEffect, cdecl, importcpp: "ToUtf32", dynlib: tkernel.}
proc toUtfWide*[Type](this: NCollectionUtfString[Type]): NCollectionUtfString[
    StandardWideChar] {.noSideEffect, cdecl, importcpp: "ToUtfWide", dynlib: tkernel.}
proc toLocale*[Type](this: NCollectionUtfString[Type]; theBuffer: cstring;
                    theSizeBytes: cint): bool {.noSideEffect, cdecl,
    importcpp: "ToLocale", dynlib: tkernel.}
proc isEmpty*[Type](this: NCollectionUtfString[Type]): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc clear*[Type](this: var NCollectionUtfString[Type]) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc assign*[Type](this: var NCollectionUtfString[Type];
                  theOther: NCollectionUtfString): NCollectionUtfString {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc swap*[Type](this: var NCollectionUtfString[Type];
                theOther: var NCollectionUtfString) {.cdecl, importcpp: "Swap",
    dynlib: tkernel.}
proc `+=`*[Type](this: var NCollectionUtfString[Type];
                theAppend: NCollectionUtfString) {.cdecl, importcpp: "(# += #)",
    dynlib: tkernel.}
proc `==`*[Type](this: NCollectionUtfString[Type]; theCompare: NCollectionUtfString): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
type
  NCollectionUtf8String* = NCollectionUtfString[StandardUtf8Char]
  NCollectionUtf16String* = NCollectionUtfString[StandardUtf16Char]
  NCollectionUtf32String* = NCollectionUtfString[StandardUtf32Char]
  NCollectionUtfWideString* = NCollectionUtfString[StandardWideChar]

##  template implementation (inline methods)

import
  nCollectionUtfString
