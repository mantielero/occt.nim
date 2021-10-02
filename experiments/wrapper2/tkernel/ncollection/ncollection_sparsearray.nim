when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2006-11-23
##  Created by: Andrey BETENEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

## *
##  Dynamically resizable sparse array of objects
##
##  This class is similar to NCollection_Vector: it works like virtually
##  unlimited array of items accessible by index; however unlike simple
##  Vector it distinguishes items that have been set from the ones that
##  have not been set explicitly.
##
##  This class can be also seen as equivalence of
##  NCollection_DataMap<Standard_Integer,TheItemType>
##  with the only one practical difference: it can be much less
##  memory-expensive if items are small (e.g. Integer or Handle).
##
##  The index starts from 0, i.e. should be non-negative. Memory is allocated
##  when item is set by SetValue().
##
##  Iterator returns only defined items;
##  the item can be tested for being defined by IsSet(),
##  and undefined by UnsetValue().
##
##  The attempt to access the item that has not been set will result
##  in OutOfRange exception in Debug mode; in Release mode this will either
##  return null-filled object or cause access violation.
##

type
  NCollection_SparseArray*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of NCollection_SparseArrayBase ##
                                                                                       ## !
                                                                                       ## Constructor;
                                                                                       ## accepts
                                                                                       ## size
                                                                                       ## of
                                                                                       ## blocks
                                                                                       ##
                                                                                       ## !@name
                                                                                       ## Array-like
                                                                                       ## interface
                                                                                       ## (in
                                                                                       ## addition
                                                                                       ## to
                                                                                       ## inherited
                                                                                       ## methods)
                                                                                       ##
                                                                                       ## !@{
                                                                                       ##
                                                                                       ## !
                                                                                       ## Direct
                                                                                       ## const
                                                                                       ## access
                                                                                       ## to
                                                                                       ## the
                                                                                       ## item
                                                                                       ##
                                                                                       ## !@name
                                                                                       ## DataMap-like
                                                                                       ## interface
                                                                                       ##
                                                                                       ## !@{
                                                                                       ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## number
                                                                                       ## of
                                                                                       ## items
                                                                                       ## in
                                                                                       ## the
                                                                                       ## array
                                                                                       ##
                                                                                       ## Iterator
                                                                                       ## interface
                                                                                       ##
                                                                                       ## *
                                                                                       ##
                                                                                       ## Implementation
                                                                                       ## of
                                                                                       ## type-specific
                                                                                       ## const
                                                                                       ## Iterator
                                                                                       ## class
                                                                                       ##
                                                                                       ##
                                                                                       ## Implementation
                                                                                       ## of
                                                                                       ## virtual
                                                                                       ## methods
                                                                                       ## providing
                                                                                       ## type-specific
                                                                                       ## behaviour
                                                                                       ##
                                                                                       ## !
                                                                                       ## Create
                                                                                       ## new
                                                                                       ## item
                                                                                       ## at
                                                                                       ## the
                                                                                       ## specified
                                                                                       ## address
                                                                                       ## with
                                                                                       ## default
                                                                                       ## constructor
                                                                                       ##
                                                                                       ## virtual
                                                                                       ## void
                                                                                       ## createItem
                                                                                       ## (Standard_Address
                                                                                       ## theAddress)
                                                                                       ##
                                                                                       ## {
                                                                                       ##
                                                                                       ## new
                                                                                       ## (theAddress)
                                                                                       ## TheItemType;
                                                                                       ##
                                                                                       ## }
                                                                                       ##
                                                                                       ## !
                                                                                       ## Create
                                                                                       ## new
                                                                                       ## item
                                                                                       ## at
                                                                                       ## the
                                                                                       ## specified
                                                                                       ## address
                                                                                       ## with
                                                                                       ## copy
                                                                                       ## constructor
                                                                                       ##
                                                                                       ## !
                                                                                       ## from
                                                                                       ## existing
                                                                                       ## item


proc constructNCollection_SparseArray*[TheItemType](theIncrement: csize_t): NCollection_SparseArray[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>(@)", dynlib: tkernel.}
proc Assign*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                         theOther: NCollection_SparseArray): var NCollection_SparseArray {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc Exchange*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                           theOther: var NCollection_SparseArray) {.cdecl,
    importcpp: "Exchange", dynlib: tkernel.}
proc destroyNCollection_SparseArray*[TheItemType](
    this: var NCollection_SparseArray[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_SparseArray()", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_SparseArray[TheItemType];
                        theIndex: csize_t): TheItemType {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollection_SparseArray[TheItemType];
                       theIndex: csize_t): TheItemType {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                              theIndex: csize_t): var TheItemType {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                       theIndex: csize_t): var TheItemType {.cdecl,
    importcpp: "#(@)", dynlib: tkernel.}
proc SetValue*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                           theIndex: csize_t; theValue: TheItemType): var TheItemType {.
    cdecl, importcpp: "SetValue", dynlib: tkernel.}
proc Extent*[TheItemType](this: NCollection_SparseArray[TheItemType]): csize_t {.
    noSideEffect, cdecl, importcpp: "Extent", dynlib: tkernel.}
proc IsEmpty*[TheItemType](this: NCollection_SparseArray[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc Find*[TheItemType](this: NCollection_SparseArray[TheItemType];
                       theIndex: csize_t): TheItemType {.noSideEffect, cdecl,
    importcpp: "Find", dynlib: tkernel.}
proc ChangeFind*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                             theIndex: csize_t): var TheItemType {.cdecl,
    importcpp: "ChangeFind", dynlib: tkernel.}
proc Bind*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                       theIndex: csize_t; theValue: TheItemType): var TheItemType {.
    cdecl, importcpp: "Bind", dynlib: tkernel.}
proc IsBound*[TheItemType](this: NCollection_SparseArray[TheItemType];
                          theIndex: csize_t): bool {.noSideEffect, cdecl,
    importcpp: "IsBound", dynlib: tkernel.}
proc UnBind*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                         theIndex: csize_t): bool {.cdecl, importcpp: "UnBind",
    dynlib: tkernel.}
type
  NCollection_SparseArrayConstIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::ConstIterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of Iterator ## ! Empty constructor - for later Init


proc constructNCollection_SparseArrayConstIterator*[TheItemType](): NCollection_SparseArrayConstIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::ConstIterator(@)",
                  dynlib: tkernel.}
proc constructNCollection_SparseArrayConstIterator*[TheItemType](
    theVector: NCollection_SparseArray): NCollection_SparseArrayConstIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::ConstIterator(@)",
                  dynlib: tkernel.}
proc Init*[TheItemType](this: var NCollection_SparseArrayConstIterator[TheItemType];
                       theVector: NCollection_SparseArray) {.cdecl,
    importcpp: "Init", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_SparseArrayConstIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollection_SparseArrayConstIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc Key*[TheItemType](this: NCollection_SparseArrayConstIterator[TheItemType]): csize_t {.
    noSideEffect, cdecl, importcpp: "Key", dynlib: tkernel.}
type
  NCollection_SparseArrayIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::Iterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of NCollection_SparseArrayConstIterator ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor
                                                                                                ## -
                                                                                                ## for
                                                                                                ## later
                                                                                                ## Init


proc constructNCollection_SparseArrayIterator*[TheItemType](): NCollection_SparseArrayIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc constructNCollection_SparseArrayIterator*[TheItemType](
    theVector: var NCollection_SparseArray): NCollection_SparseArrayIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc Init*[TheItemType](this: var NCollection_SparseArrayIterator[TheItemType];
                       theVector: NCollection_SparseArray) {.cdecl,
    importcpp: "Init", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: var NCollection_SparseArrayIterator[
    TheItemType]): var TheItemType {.cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollection_SparseArrayIterator[TheItemType]): var TheItemType {.
    cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollection_SparseArrayIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}