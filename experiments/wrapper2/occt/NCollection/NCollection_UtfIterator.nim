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

## ! Template class for Unicode strings support.
## !
## ! It defines an iterator and provide correct way to read multi-byte text (UTF-8 and UTF-16)
## ! and convert it from one to another.
## ! The current value of iterator is returned as UTF-32 Unicode symbol.
## !
## ! Here and below term "Unicode symbol" is used as
## ! synonym of "Unicode code point".

type
  NCollectionUtfIterator*[Type] {.importcpp: "NCollection_UtfIterator<\'0>::CharTypeChooser<\'1>",
                                 header: "NCollection_UtfIterator.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructor.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theString
                                                                                     ## buffer
                                                                                     ## to
                                                                                     ## iterate
                                                                                     ##
                                                                                     ## !
                                                                                     ## Helper
                                                                                     ## template
                                                                                     ## class
                                                                                     ## dispatching
                                                                                     ## its
                                                                                     ## argument
                                                                                     ## class
                                                                                     ##
                                                                                     ## !
                                                                                     ## to
                                                                                     ## the
                                                                                     ## equivalent
                                                                                     ## (by
                                                                                     ## size)
                                                                                     ## character
                                                                                     ## (Unicode
                                                                                     ## code
                                                                                     ## unit)
                                                                                     ## type.
                                                                                     ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## code
                                                                                     ## unit
                                                                                     ## type
                                                                                     ## is
                                                                                     ## defined
                                                                                     ## as
                                                                                     ## nested
                                                                                     ## typedef
                                                                                     ## "type".
                                                                                     ##
                                                                                     ## !
                                                                                     ##
                                                                                     ## !
                                                                                     ## In
                                                                                     ## practice
                                                                                     ## this
                                                                                     ## is
                                                                                     ## relevant
                                                                                     ## for
                                                                                     ## wchar_t
                                                                                     ## type:
                                                                                     ##
                                                                                     ## !
                                                                                     ## typename
                                                                                     ## CharTypeChooser<wchar_t>::type
                                                                                     ## resolves
                                                                                     ## to
                                                                                     ##
                                                                                     ## !
                                                                                     ## Standard_Utf16Char
                                                                                     ## on
                                                                                     ## Windows
                                                                                     ## and
                                                                                     ## to
                                                                                     ## Standard_Utf32Char
                                                                                     ## on
                                                                                     ## Linux.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## unicode
                                                                                     ## magic
                                                                                     ## numbers
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## private
                                                                                     ## fields
    ## !< buffer position of the first element in the current symbol
    ## !< buffer position of the first element in the next symbol
    ## !< index displacement from iterator intialization
    ## !< Unicode symbol stored at the current buffer position


proc constructNCollectionUtfIterator*[Type](theString: ptr Type): NCollectionUtfIterator[
    Type] {.constructor, importcpp: "NCollection_UtfIterator<\'*0>(@)",
           header: "NCollection_UtfIterator.hxx".}
proc init*[Type](this: var NCollectionUtfIterator[Type]; theString: ptr Type) {.
    importcpp: "Init", header: "NCollection_UtfIterator.hxx".}
proc `++`*[Type](this: var NCollectionUtfIterator[Type]): var NCollectionUtfIterator {.
    importcpp: "(++ #)", header: "NCollection_UtfIterator.hxx".}
proc `++`*[Type](this: var NCollectionUtfIterator[Type]; a2: cint): NCollectionUtfIterator {.
    importcpp: "(++ #)", header: "NCollection_UtfIterator.hxx".}
proc `==`*[Type](this: NCollectionUtfIterator[Type];
                theRight: NCollectionUtfIterator): bool {.noSideEffect,
    importcpp: "(# == #)", header: "NCollection_UtfIterator.hxx".}
proc isValid*[Type](this: NCollectionUtfIterator[Type]): bool {.noSideEffect,
    importcpp: "IsValid", header: "NCollection_UtfIterator.hxx".}
proc `*`*[Type](this: NCollectionUtfIterator[Type]): StandardUtf32Char {.
    noSideEffect, importcpp: "(* #)", header: "NCollection_UtfIterator.hxx".}
proc bufferHere*[Type](this: NCollectionUtfIterator[Type]): ptr Type {.noSideEffect,
    importcpp: "BufferHere", header: "NCollection_UtfIterator.hxx".}
proc changeBufferHere*[Type](this: var NCollectionUtfIterator[Type]): ptr Type {.
    importcpp: "ChangeBufferHere", header: "NCollection_UtfIterator.hxx".}
proc bufferNext*[Type](this: NCollectionUtfIterator[Type]): ptr Type {.noSideEffect,
    importcpp: "BufferNext", header: "NCollection_UtfIterator.hxx".}
proc index*[Type](this: NCollectionUtfIterator[Type]): int {.noSideEffect,
    importcpp: "Index", header: "NCollection_UtfIterator.hxx".}
proc advanceBytesUtf8*[Type](this: NCollectionUtfIterator[Type]): int {.
    noSideEffect, importcpp: "AdvanceBytesUtf8",
    header: "NCollection_UtfIterator.hxx".}
proc advanceBytesUtf16*[Type](this: NCollectionUtfIterator[Type]): int {.
    noSideEffect, importcpp: "AdvanceBytesUtf16",
    header: "NCollection_UtfIterator.hxx".}
proc advanceCodeUnitsUtf16*[Type](this: NCollectionUtfIterator[Type]): int {.
    noSideEffect, importcpp: "AdvanceCodeUnitsUtf16",
    header: "NCollection_UtfIterator.hxx".}
proc advanceBytesUtf32*[Type](this: NCollectionUtfIterator[Type]): int {.
    noSideEffect, importcpp: "AdvanceBytesUtf32",
    header: "NCollection_UtfIterator.hxx".}
proc getUtf8*[Type](this: NCollectionUtfIterator[Type];
                   theBuffer: ptr StandardUtf8Char): ptr StandardUtf8Char {.
    noSideEffect, importcpp: "GetUtf8", header: "NCollection_UtfIterator.hxx".}
proc getUtf8*[Type](this: NCollectionUtfIterator[Type];
                   theBuffer: ptr StandardUtf8UChar): ptr StandardUtf8UChar {.
    noSideEffect, importcpp: "GetUtf8", header: "NCollection_UtfIterator.hxx".}
proc getUtf16*[Type](this: NCollectionUtfIterator[Type];
                    theBuffer: ptr StandardUtf16Char): ptr StandardUtf16Char {.
    noSideEffect, importcpp: "GetUtf16", header: "NCollection_UtfIterator.hxx".}
proc getUtf32*[Type](this: NCollectionUtfIterator[Type];
                    theBuffer: ptr StandardUtf32Char): ptr StandardUtf32Char {.
    noSideEffect, importcpp: "GetUtf32", header: "NCollection_UtfIterator.hxx".}
proc advanceBytesUtf*[Type; TypeWrite](this: NCollectionUtfIterator[Type]): int {.
    noSideEffect, importcpp: "AdvanceBytesUtf",
    header: "NCollection_UtfIterator.hxx".}
proc getUtf*[Type; TypeWrite](this: NCollectionUtfIterator[Type];
                            theBuffer: ptr TypeWrite): ptr TypeWrite {.noSideEffect,
    importcpp: "GetUtf", header: "NCollection_UtfIterator.hxx".}
## !!!Ignored construct:  private : ! Helper template class dispatching its argument class
## ! to the equivalent (by size) character (Unicode code unit) type.
## ! The code unit type is defined as nested typedef "type".
## !
## ! In practice this is relevant for wchar_t type:
## ! typename CharTypeChooser<wchar_t>::type resolves to
## ! Standard_Utf16Char on Windows and to Standard_Utf32Char on Linux. template < typename TypeChar > [end of template] class CharTypeChooser : public opencascade :: std :: conditional < sizeof ( TypeChar ) == 1 , Standard_Utf8Char , typename opencascade :: std :: conditional < sizeof ( TypeChar ) == 2 , Standard_Utf16Char , typename opencascade :: std :: conditional < sizeof ( TypeChar ) == 4 , Standard_Utf32Char , void > :: type > :: type > [end of template] { } ;
## Error: token expected: > [end of template] but got: ==!!!

type
  NCollectionUtf8Iter* = NCollectionUtfIterator[StandardUtf8Char]
  NCollectionUtf16Iter* = NCollectionUtfIterator[StandardUtf16Char]
  NCollectionUtf32Iter* = NCollectionUtfIterator[StandardUtf32Char]
  NCollectionUtfWideIter* = NCollectionUtfIterator[StandardWideChar]

##  template implementation

