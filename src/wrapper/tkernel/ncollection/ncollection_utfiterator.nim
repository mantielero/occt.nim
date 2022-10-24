import ncollection_types

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



proc newNCollectionUtfIterator*[Type](theString: ptr Type): NCollectionUtfIterator[
    Type] {.cdecl, constructor, importcpp: "NCollection_UtfIterator<\'*0>(@)",
           header: "NCollection_UtfIterator.hxx".}
proc init*[Type](this: var NCollectionUtfIterator[Type]; theString: ptr Type) {.cdecl,
    importcpp: "Init", header: "NCollection_UtfIterator.hxx".}
proc isValid*[Type](this: NCollectionUtfIterator[Type]): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "NCollection_UtfIterator.hxx".}
proc `*`*[Type](this: NCollectionUtfIterator[Type]): StandardUtf32Char {.
    noSideEffect, cdecl, importcpp: "(* #)", header: "NCollection_UtfIterator.hxx".}
proc bufferHere*[Type](this: NCollectionUtfIterator[Type]): ptr Type {.noSideEffect,
    cdecl, importcpp: "BufferHere", header: "NCollection_UtfIterator.hxx".}
proc changeBufferHere*[Type](this: var NCollectionUtfIterator[Type]): ptr Type {.
    cdecl, importcpp: "ChangeBufferHere", header: "NCollection_UtfIterator.hxx".}
proc bufferNext*[Type](this: NCollectionUtfIterator[Type]): ptr Type {.noSideEffect,
    cdecl, importcpp: "BufferNext", header: "NCollection_UtfIterator.hxx".}
proc index*[Type](this: NCollectionUtfIterator[Type]): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "NCollection_UtfIterator.hxx".}
proc advanceBytesUtf8*[Type](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf8", header: "NCollection_UtfIterator.hxx".}
proc advanceBytesUtf16*[Type](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf16", header: "NCollection_UtfIterator.hxx".}
proc advanceCodeUnitsUtf16*[Type](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceCodeUnitsUtf16", header: "NCollection_UtfIterator.hxx".}
proc advanceBytesUtf32*[Type](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf32", header: "NCollection_UtfIterator.hxx".}
proc getUtf8*[Type](this: NCollectionUtfIterator[Type];
                   theBuffer: ptr StandardUtf8Char): ptr StandardUtf8Char {.
    noSideEffect, cdecl, importcpp: "GetUtf8", header: "NCollection_UtfIterator.hxx".}
proc getUtf8*[Type](this: NCollectionUtfIterator[Type];
#                   theBuffer: ptr StandardUtf8UChar): ptr StandardUtf8UChar {.
#    noSideEffect, cdecl, importcpp: "GetUtf8", header: "NCollection_UtfIterator.hxx".}
#proc getUtf16*[Type](this: NCollectionUtfIterator[Type];
                    theBuffer: ptr StandardUtf16Char): ptr StandardUtf16Char {.
    noSideEffect, cdecl, importcpp: "GetUtf16", header: "NCollection_UtfIterator.hxx".}
proc getUtf32*[Type](this: NCollectionUtfIterator[Type];
                    theBuffer: ptr StandardUtf32Char): ptr StandardUtf32Char {.
    noSideEffect, cdecl, importcpp: "GetUtf32", header: "NCollection_UtfIterator.hxx".}
proc advanceBytesUtf*[Type; TypeWrite](this: NCollectionUtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf", header: "NCollection_UtfIterator.hxx".}
proc getUtf*[Type; TypeWrite](this: NCollectionUtfIterator[Type];
                            theBuffer: ptr TypeWrite): ptr TypeWrite {.noSideEffect,
    cdecl, importcpp: "GetUtf", header: "NCollection_UtfIterator.hxx".}



