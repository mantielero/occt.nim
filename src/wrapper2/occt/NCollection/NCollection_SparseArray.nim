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
  NCollectionSparseArray*[TheItemType] {.importcpp: "NCollection_SparseArray<\'0>",
                                        header: "NCollection_SparseArray.hxx",
                                        bycopy.} = object of NCollectionSparseArrayBase ##
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


proc constructNCollectionSparseArray*[TheItemType](theIncrement: StandardSize): NCollectionSparseArray[
    TheItemType] {.constructor, importcpp: "NCollection_SparseArray<\'*0>(@)",
                  header: "NCollection_SparseArray.hxx".}
proc assign*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                         theOther: NCollectionSparseArray): var NCollectionSparseArray {.
    importcpp: "Assign", header: "NCollection_SparseArray.hxx".}
proc exchange*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                           theOther: var NCollectionSparseArray) {.
    importcpp: "Exchange", header: "NCollection_SparseArray.hxx".}
proc destroyNCollectionSparseArray*[TheItemType](
    this: var NCollectionSparseArray[TheItemType]) {.
    importcpp: "#.~NCollection_SparseArray()",
    header: "NCollection_SparseArray.hxx".}
proc value*[TheItemType](this: NCollectionSparseArray[TheItemType];
                        theIndex: StandardSize): TheItemType {.noSideEffect,
    importcpp: "Value", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: NCollectionSparseArray[TheItemType];
                       theIndex: StandardSize): TheItemType {.noSideEffect,
    importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc changeValue*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                              theIndex: StandardSize): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                       theIndex: StandardSize): var TheItemType {.importcpp: "#(@)",
    header: "NCollection_SparseArray.hxx".}
proc setValue*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                           theIndex: StandardSize; theValue: TheItemType): var TheItemType {.
    importcpp: "SetValue", header: "NCollection_SparseArray.hxx".}
proc extent*[TheItemType](this: NCollectionSparseArray[TheItemType]): StandardSize {.
    noSideEffect, importcpp: "Extent", header: "NCollection_SparseArray.hxx".}
proc isEmpty*[TheItemType](this: NCollectionSparseArray[TheItemType]): StandardBoolean {.
    noSideEffect, importcpp: "IsEmpty", header: "NCollection_SparseArray.hxx".}
proc find*[TheItemType](this: NCollectionSparseArray[TheItemType];
                       theIndex: StandardSize): TheItemType {.noSideEffect,
    importcpp: "Find", header: "NCollection_SparseArray.hxx".}
proc changeFind*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                             theIndex: StandardSize): var TheItemType {.
    importcpp: "ChangeFind", header: "NCollection_SparseArray.hxx".}
proc `bind`*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                         theIndex: StandardSize; theValue: TheItemType): var TheItemType {.
    importcpp: "Bind", header: "NCollection_SparseArray.hxx".}
proc isBound*[TheItemType](this: NCollectionSparseArray[TheItemType];
                          theIndex: StandardSize): StandardBoolean {.noSideEffect,
    importcpp: "IsBound", header: "NCollection_SparseArray.hxx".}
proc unBind*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                         theIndex: StandardSize): StandardBoolean {.
    importcpp: "UnBind", header: "NCollection_SparseArray.hxx".}
type
  NCollectionSparseArrayConstIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::ConstIterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of Iterator ## ! Empty constructor - for later Init


proc constructNCollectionSparseArrayConstIterator*[TheItemType](): NCollectionSparseArrayConstIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::ConstIterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc constructNCollectionSparseArrayConstIterator*[TheItemType](
    theVector: NCollectionSparseArray): NCollectionSparseArrayConstIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::ConstIterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc init*[TheItemType](this: var NCollectionSparseArrayConstIterator[TheItemType];
                       theVector: NCollectionSparseArray) {.importcpp: "Init",
    header: "NCollection_SparseArray.hxx".}
proc value*[TheItemType](this: NCollectionSparseArrayConstIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: NCollectionSparseArrayConstIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc key*[TheItemType](this: NCollectionSparseArrayConstIterator[TheItemType]): StandardSize {.
    noSideEffect, importcpp: "Key", header: "NCollection_SparseArray.hxx".}
type
  NCollectionSparseArrayIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::Iterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of NCollectionSparseArrayConstIterator ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor
                                                                                               ## -
                                                                                               ## for
                                                                                               ## later
                                                                                               ## Init


proc constructNCollectionSparseArrayIterator*[TheItemType](): NCollectionSparseArrayIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::Iterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc constructNCollectionSparseArrayIterator*[TheItemType](
    theVector: var NCollectionSparseArray): NCollectionSparseArrayIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::Iterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc init*[TheItemType](this: var NCollectionSparseArrayIterator[TheItemType];
                       theVector: NCollectionSparseArray) {.importcpp: "Init",
    header: "NCollection_SparseArray.hxx".}
proc changeValue*[TheItemType](this: var NCollectionSparseArrayIterator[TheItemType]): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: var NCollectionSparseArrayIterator[TheItemType]): var TheItemType {.
    importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc `()`*[TheItemType](this: NCollectionSparseArrayIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}

