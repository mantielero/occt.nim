when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2009-09-23
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

## ! Auxiliary class optimizing creation of array buffer
## ! (using stack allocation for small arrays).

type
  NCollection_LocalArray*[theItem; MAX_ARRAY_SIZE: static[cint]] {.
      importcpp: "NCollection_LocalArray<\'0,\'1>",
      header: "NCollection_LocalArray.hxx", bycopy.} = object


proc constructNCollection_LocalArray*[theItem; MAX_ARRAY_SIZE: static[cint]](
    theSize: csize_t): NCollection_LocalArray[theItem, MAX_ARRAY_SIZE] {.cdecl,
    constructor, importcpp: "NCollection_LocalArray<\'*0,\'*1>(@)", dynlib: tkernel.}
proc constructNCollection_LocalArray*[theItem; MAX_ARRAY_SIZE: static[cint]](): NCollection_LocalArray[
    theItem, MAX_ARRAY_SIZE] {.cdecl, constructor,
                             importcpp: "NCollection_LocalArray<\'*0,\'*1>(@)",
                             dynlib: tkernel.}
proc destroyNCollection_LocalArray*[theItem; MAX_ARRAY_SIZE: static[cint]](
    this: var NCollection_LocalArray[theItem, MAX_ARRAY_SIZE]) {.cdecl,
    importcpp: "#.~NCollection_LocalArray()", dynlib: tkernel.}
proc Allocate*[theItem; MAX_ARRAY_SIZE: static[cint]](
    this: var NCollection_LocalArray[theItem, MAX_ARRAY_SIZE]; theSize: csize_t) {.
    cdecl, importcpp: "Allocate", dynlib: tkernel.}
proc Size*[theItem; MAX_ARRAY_SIZE: static[cint]](
    this: NCollection_LocalArray[theItem, MAX_ARRAY_SIZE]): csize_t {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
converter `theItem*`*[theItem; MAX_ARRAY_SIZE: static[cint]](
    this: NCollection_LocalArray[theItem, MAX_ARRAY_SIZE]): ptr theItem {.
    noSideEffect, cdecl, importcpp: "NCollection_LocalArray::operator theItem*",
    dynlib: tkernel.}