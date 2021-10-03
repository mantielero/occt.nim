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
  NCollectionUtfIterator*[Type] {.importcpp: "NCollection_UtfIterator<\'0>",
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


proc constructNCollectionUtfIterator*[Type](theString: ptr Type): NCollectionUtfIterator[
    Type] {.cdecl, constructor, importcpp: "NCollection_UtfIterator<\'*0>(@)",
           dynlib: tkernel.}
proc init*[Type](this: var NCollectionUtfIterator[Type]; theString: ptr Type) {.cdecl,
    importcpp: "Init", dynlib: tkernel.}
proc isValid*[Type](this: NCollectionUtfIterator[Type]): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", dynlib: tkernel.}
proc `*`*[Type](this: NCollectionUtfIterator[Type]): StandardUtf32Char {.
    noSideEffect, cdecl, importcpp: "(* #)", dynlib: tkernel.}
proc bufferHere*[Type](this: NCollectionUtfIterator[Type]): ptr Type {.noSideEffect,
    cdecl, importcpp: "BufferHere", dynlib: tkernel.}
proc changeBufferHere*[Type](this: var NCollectionUtfIterator[Type]): ptr Type {.
    cdecl, importcpp: "ChangeBufferHere", dynlib: tkernel.}
proc bufferNext*[Type](this: NCollectionUtfIterator[Type]): ptr Type {.noSideEffect,
    cdecl, importcpp: "BufferNext", dynlib: tkernel.}
proc index*[Type](this: NCollectionUtfIterator[Type]): cint {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkernel.}
proc advanceBytesUtf8*[Type](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf8", dynlib: tkernel.}
proc advanceBytesUtf16*[Type](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf16", dynlib: tkernel.}
proc advanceCodeUnitsUtf16*[Type](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceCodeUnitsUtf16", dynlib: tkernel.}
proc advanceBytesUtf32*[Type](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf32", dynlib: tkernel.}
proc getUtf8*[Type](this: NCollectionUtfIterator[Type];
                   theBuffer: ptr StandardUtf8Char): ptr StandardUtf8Char {.
    noSideEffect, cdecl, importcpp: "GetUtf8", dynlib: tkernel.}
proc getUtf8*[Type](this: NCollectionUtfIterator[Type];
                   theBuffer: ptr StandardUtf8UChar): ptr StandardUtf8UChar {.
    noSideEffect, cdecl, importcpp: "GetUtf8", dynlib: tkernel.}
proc getUtf16*[Type](this: NCollectionUtfIterator[Type];
                    theBuffer: ptr StandardUtf16Char): ptr StandardUtf16Char {.
    noSideEffect, cdecl, importcpp: "GetUtf16", dynlib: tkernel.}
proc getUtf32*[Type](this: NCollectionUtfIterator[Type];
                    theBuffer: ptr StandardUtf32Char): ptr StandardUtf32Char {.
    noSideEffect, cdecl, importcpp: "GetUtf32", dynlib: tkernel.}
proc advanceBytesUtf*[Type; TypeWrite](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf", dynlib: tkernel.}
proc getUtf*[Type; TypeWrite](this: NCollectionUtfIterator[Type];
                            theBuffer: ptr TypeWrite): ptr TypeWrite {.noSideEffect,
    cdecl, importcpp: "GetUtf", dynlib: tkernel.}
type
  NCollectionUtf8Iter* = NCollectionUtfIterator[StandardUtf8Char]
  NCollectionUtf16Iter* = NCollectionUtfIterator[StandardUtf16Char]
  NCollectionUtf32Iter* = NCollectionUtfIterator[StandardUtf32Char]
  NCollectionUtfWideIter* = NCollectionUtfIterator[StandardWideChar]

##  template implementation

import
  nCollectionUtfIterator
