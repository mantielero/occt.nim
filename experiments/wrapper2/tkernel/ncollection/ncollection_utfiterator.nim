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

## ! Template class for Unicode strings support.
## !
## ! It defines an iterator and provide correct way to read multi-byte text (UTF-8 and UTF-16)
## ! and convert it from one to another.
## ! The current value of iterator is returned as UTF-32 Unicode symbol.
## !
## ! Here and below term "Unicode symbol" is used as
## ! synonym of "Unicode code point".

type
  NCollection_UtfIterator*[Type] {.importcpp: "NCollection_UtfIterator<\'0>",
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


proc constructNCollection_UtfIterator*[Type](theString: ptr Type): NCollection_UtfIterator[
    Type] {.cdecl, constructor, importcpp: "NCollection_UtfIterator<\'*0>(@)",
           dynlib: tkernel.}
proc Init*[Type](this: var NCollection_UtfIterator[Type]; theString: ptr Type) {.cdecl,
    importcpp: "Init", dynlib: tkernel.}
proc IsValid*[Type](this: NCollection_UtfIterator[Type]): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", dynlib: tkernel.}
proc `*`*[Type](this: NCollection_UtfIterator[Type]): Standard_Utf32Char {.
    noSideEffect, cdecl, importcpp: "(* #)", dynlib: tkernel.}
proc BufferHere*[Type](this: NCollection_UtfIterator[Type]): ptr Type {.noSideEffect,
    cdecl, importcpp: "BufferHere", dynlib: tkernel.}
proc ChangeBufferHere*[Type](this: var NCollection_UtfIterator[Type]): ptr Type {.
    cdecl, importcpp: "ChangeBufferHere", dynlib: tkernel.}
proc BufferNext*[Type](this: NCollection_UtfIterator[Type]): ptr Type {.noSideEffect,
    cdecl, importcpp: "BufferNext", dynlib: tkernel.}
proc Index*[Type](this: NCollection_UtfIterator[Type]): cint {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkernel.}
proc AdvanceBytesUtf8*[Type](this: NCollection_UtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf8", dynlib: tkernel.}
proc AdvanceBytesUtf16*[Type](this: NCollection_UtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf16", dynlib: tkernel.}
proc AdvanceCodeUnitsUtf16*[Type](this: NCollection_UtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceCodeUnitsUtf16", dynlib: tkernel.}
proc AdvanceBytesUtf32*[Type](this: NCollection_UtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf32", dynlib: tkernel.}
proc GetUtf8*[Type](this: NCollection_UtfIterator[Type];
                   theBuffer: ptr Standard_Utf8Char): ptr Standard_Utf8Char {.
    noSideEffect, cdecl, importcpp: "GetUtf8", dynlib: tkernel.}
proc GetUtf8*[Type](this: NCollection_UtfIterator[Type];
                   theBuffer: ptr Standard_Utf8UChar): ptr Standard_Utf8UChar {.
    noSideEffect, cdecl, importcpp: "GetUtf8", dynlib: tkernel.}
proc GetUtf16*[Type](this: NCollection_UtfIterator[Type];
                    theBuffer: ptr Standard_Utf16Char): ptr Standard_Utf16Char {.
    noSideEffect, cdecl, importcpp: "GetUtf16", dynlib: tkernel.}
proc GetUtf32*[Type](this: NCollection_UtfIterator[Type];
                    theBuffer: ptr Standard_Utf32Char): ptr Standard_Utf32Char {.
    noSideEffect, cdecl, importcpp: "GetUtf32", dynlib: tkernel.}
proc AdvanceBytesUtf*[Type; TypeWrite](this: NCollection_UtfIterator[Type]): cint {.
    noSideEffect, cdecl, importcpp: "AdvanceBytesUtf", dynlib: tkernel.}
proc GetUtf*[Type; TypeWrite](this: NCollection_UtfIterator[Type];
                            theBuffer: ptr TypeWrite): ptr TypeWrite {.noSideEffect,
    cdecl, importcpp: "GetUtf", dynlib: tkernel.}
type
  NCollection_Utf8Iter* = NCollection_UtfIterator[Standard_Utf8Char]
  NCollection_Utf16Iter* = NCollection_UtfIterator[Standard_Utf16Char]
  NCollection_Utf32Iter* = NCollection_UtfIterator[Standard_Utf32Char]
  NCollection_UtfWideIter* = NCollection_UtfIterator[Standard_WideChar]

##  template implementation

import
  NCollection_UtfIterator
