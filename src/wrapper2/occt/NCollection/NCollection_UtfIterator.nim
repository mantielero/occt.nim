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

import
  ../Standard/Standard_Handle

## ! Template class for Unicode strings support.
## !
## ! It defines an iterator and provide correct way to read multi-byte text (UTF-8 and UTF-16)
## ! and convert it from one to another.
## ! The current value of iterator is returned as UTF-32 Unicode symbol.
## !
## ! Here and below term "Unicode symbol" is used as
## ! synonym of "Unicode code point".

type
  NCollection_UtfIterator*[Type] {.importcpp: "NCollection_UtfIterator<\'0>::CharTypeChooser<\'1>",
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


proc constructNCollection_UtfIterator*[Type](theString: ptr Type): NCollection_UtfIterator[
    Type] {.constructor, importcpp: "NCollection_UtfIterator<\'*0>(@)",
           header: "NCollection_UtfIterator.hxx".}
proc Init*[Type](this: var NCollection_UtfIterator[Type]; theString: ptr Type) {.
    importcpp: "Init", header: "NCollection_UtfIterator.hxx".}
proc `++`*[Type](this: var NCollection_UtfIterator[Type]): var NCollection_UtfIterator {.
    importcpp: "(++ #)", header: "NCollection_UtfIterator.hxx".}
proc `++`*[Type](this: var NCollection_UtfIterator[Type]; a2: cint): NCollection_UtfIterator {.
    importcpp: "(++ #)", header: "NCollection_UtfIterator.hxx".}
proc `==`*[Type](this: NCollection_UtfIterator[Type];
                theRight: NCollection_UtfIterator): bool {.noSideEffect,
    importcpp: "(# == #)", header: "NCollection_UtfIterator.hxx".}
proc IsValid*[Type](this: NCollection_UtfIterator[Type]): bool {.noSideEffect,
    importcpp: "IsValid", header: "NCollection_UtfIterator.hxx".}
proc `*`*[Type](this: NCollection_UtfIterator[Type]): Standard_Utf32Char {.
    noSideEffect, importcpp: "(* #)", header: "NCollection_UtfIterator.hxx".}
proc BufferHere*[Type](this: NCollection_UtfIterator[Type]): ptr Type {.noSideEffect,
    importcpp: "BufferHere", header: "NCollection_UtfIterator.hxx".}
proc ChangeBufferHere*[Type](this: var NCollection_UtfIterator[Type]): ptr Type {.
    importcpp: "ChangeBufferHere", header: "NCollection_UtfIterator.hxx".}
proc BufferNext*[Type](this: NCollection_UtfIterator[Type]): ptr Type {.noSideEffect,
    importcpp: "BufferNext", header: "NCollection_UtfIterator.hxx".}
proc Index*[Type](this: NCollection_UtfIterator[Type]): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "NCollection_UtfIterator.hxx".}
proc AdvanceBytesUtf8*[Type](this: NCollection_UtfIterator[Type]): Standard_Integer {.
    noSideEffect, importcpp: "AdvanceBytesUtf8",
    header: "NCollection_UtfIterator.hxx".}
proc AdvanceBytesUtf16*[Type](this: NCollection_UtfIterator[Type]): Standard_Integer {.
    noSideEffect, importcpp: "AdvanceBytesUtf16",
    header: "NCollection_UtfIterator.hxx".}
proc AdvanceCodeUnitsUtf16*[Type](this: NCollection_UtfIterator[Type]): Standard_Integer {.
    noSideEffect, importcpp: "AdvanceCodeUnitsUtf16",
    header: "NCollection_UtfIterator.hxx".}
proc AdvanceBytesUtf32*[Type](this: NCollection_UtfIterator[Type]): Standard_Integer {.
    noSideEffect, importcpp: "AdvanceBytesUtf32",
    header: "NCollection_UtfIterator.hxx".}
proc GetUtf8*[Type](this: NCollection_UtfIterator[Type];
                   theBuffer: ptr Standard_Utf8Char): ptr Standard_Utf8Char {.
    noSideEffect, importcpp: "GetUtf8", header: "NCollection_UtfIterator.hxx".}
proc GetUtf8*[Type](this: NCollection_UtfIterator[Type];
                   theBuffer: ptr Standard_Utf8UChar): ptr Standard_Utf8UChar {.
    noSideEffect, importcpp: "GetUtf8", header: "NCollection_UtfIterator.hxx".}
proc GetUtf16*[Type](this: NCollection_UtfIterator[Type];
                    theBuffer: ptr Standard_Utf16Char): ptr Standard_Utf16Char {.
    noSideEffect, importcpp: "GetUtf16", header: "NCollection_UtfIterator.hxx".}
proc GetUtf32*[Type](this: NCollection_UtfIterator[Type];
                    theBuffer: ptr Standard_Utf32Char): ptr Standard_Utf32Char {.
    noSideEffect, importcpp: "GetUtf32", header: "NCollection_UtfIterator.hxx".}
proc AdvanceBytesUtf*[Type; TypeWrite](this: NCollection_UtfIterator[Type]): Standard_Integer {.
    noSideEffect, importcpp: "AdvanceBytesUtf",
    header: "NCollection_UtfIterator.hxx".}
proc GetUtf*[Type; TypeWrite](this: NCollection_UtfIterator[Type];
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
  NCollection_Utf8Iter* = NCollection_UtfIterator[Standard_Utf8Char]
  NCollection_Utf16Iter* = NCollection_UtfIterator[Standard_Utf16Char]
  NCollection_Utf32Iter* = NCollection_UtfIterator[Standard_Utf32Char]
  NCollection_UtfWideIter* = NCollection_UtfIterator[Standard_WideChar]

##  template implementation

import
  NCollection_UtfIterator
