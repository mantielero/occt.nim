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

import
  NCollection_SparseArrayBase

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


proc constructNCollection_SparseArray*[TheItemType](theIncrement: Standard_Size): NCollection_SparseArray[
    TheItemType] {.constructor, importcpp: "NCollection_SparseArray<\'*0>(@)",
                  header: "NCollection_SparseArray.hxx".}
proc Assign*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                         theOther: NCollection_SparseArray): var NCollection_SparseArray {.
    importcpp: "Assign", header: "NCollection_SparseArray.hxx".}
proc Exchange*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                           theOther: var NCollection_SparseArray) {.
    importcpp: "Exchange", header: "NCollection_SparseArray.hxx".}
proc destroyNCollection_SparseArray*[TheItemType](
    this: var NCollection_SparseArray[TheItemType]) {.
    importcpp: "#.~NCollection_SparseArray()",
    header: "NCollection_SparseArray.hxx".}
proc Value*[TheItemType](this: NCollection_SparseArray[TheItemType];
                        theIndex: Standard_Size): TheItemType {.noSideEffect,
    importcpp: "Value", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: NCollection_SparseArray[TheItemType];
                       theIndex: Standard_Size): TheItemType {.noSideEffect,
    importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc ChangeValue*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                              theIndex: Standard_Size): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                       theIndex: Standard_Size): var TheItemType {.
    importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc SetValue*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                           theIndex: Standard_Size; theValue: TheItemType): var TheItemType {.
    importcpp: "SetValue", header: "NCollection_SparseArray.hxx".}
proc Extent*[TheItemType](this: NCollection_SparseArray[TheItemType]): Standard_Size {.
    noSideEffect, importcpp: "Extent", header: "NCollection_SparseArray.hxx".}
proc IsEmpty*[TheItemType](this: NCollection_SparseArray[TheItemType]): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty", header: "NCollection_SparseArray.hxx".}
proc Find*[TheItemType](this: NCollection_SparseArray[TheItemType];
                       theIndex: Standard_Size): TheItemType {.noSideEffect,
    importcpp: "Find", header: "NCollection_SparseArray.hxx".}
proc ChangeFind*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                             theIndex: Standard_Size): var TheItemType {.
    importcpp: "ChangeFind", header: "NCollection_SparseArray.hxx".}
proc Bind*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                       theIndex: Standard_Size; theValue: TheItemType): var TheItemType {.
    importcpp: "Bind", header: "NCollection_SparseArray.hxx".}
proc IsBound*[TheItemType](this: NCollection_SparseArray[TheItemType];
                          theIndex: Standard_Size): Standard_Boolean {.
    noSideEffect, importcpp: "IsBound", header: "NCollection_SparseArray.hxx".}
proc UnBind*[TheItemType](this: var NCollection_SparseArray[TheItemType];
                         theIndex: Standard_Size): Standard_Boolean {.
    importcpp: "UnBind", header: "NCollection_SparseArray.hxx".}
type
  NCollection_SparseArrayConstIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::ConstIterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of Iterator ## ! Empty constructor - for later Init


proc constructNCollection_SparseArrayConstIterator*[TheItemType](): NCollection_SparseArrayConstIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::ConstIterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc constructNCollection_SparseArrayConstIterator*[TheItemType](
    theVector: NCollection_SparseArray): NCollection_SparseArrayConstIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::ConstIterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc Init*[TheItemType](this: var NCollection_SparseArrayConstIterator[TheItemType];
                       theVector: NCollection_SparseArray) {.importcpp: "Init",
    header: "NCollection_SparseArray.hxx".}
proc Value*[TheItemType](this: NCollection_SparseArrayConstIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: NCollection_SparseArrayConstIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc Key*[TheItemType](this: NCollection_SparseArrayConstIterator[TheItemType]): Standard_Size {.
    noSideEffect, importcpp: "Key", header: "NCollection_SparseArray.hxx".}
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
    TheItemType] {.constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::Iterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc constructNCollection_SparseArrayIterator*[TheItemType](
    theVector: var NCollection_SparseArray): NCollection_SparseArrayIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::Iterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc Init*[TheItemType](this: var NCollection_SparseArrayIterator[TheItemType];
                       theVector: NCollection_SparseArray) {.importcpp: "Init",
    header: "NCollection_SparseArray.hxx".}
proc ChangeValue*[TheItemType](this: var NCollection_SparseArrayIterator[
    TheItemType]): var TheItemType {.importcpp: "ChangeValue",
                                  header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: var NCollection_SparseArrayIterator[TheItemType]): var TheItemType {.
    importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: NCollection_SparseArrayIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}