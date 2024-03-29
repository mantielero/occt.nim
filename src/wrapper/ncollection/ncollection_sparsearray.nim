import ncollection_types

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



proc newNCollectionSparseArray*[TheItemType](theIncrement: csize_t): NCollectionSparseArray[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>(@)", header: "NCollection_SparseArray.hxx".}
proc assign*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                         theOther: NCollectionSparseArray): var NCollectionSparseArray {.
    cdecl, importcpp: "Assign", header: "NCollection_SparseArray.hxx".}
proc exchange*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                           theOther: var NCollectionSparseArray) {.cdecl,
    importcpp: "Exchange", header: "NCollection_SparseArray.hxx".}
proc destroyNCollectionSparseArray*[TheItemType](
    this: var NCollectionSparseArray[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_SparseArray()", header: "NCollection_SparseArray.hxx".}
proc value*[TheItemType](this: NCollectionSparseArray[TheItemType];
                        theIndex: csize_t): TheItemType {.noSideEffect, cdecl,
    importcpp: "Value", header: "NCollection_SparseArray.hxx".}
#proc `()`*[TheItemType](this: NCollectionSparseArray[TheItemType];
#                       theIndex: csize_t): TheItemType {.noSideEffect, cdecl,
#    importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc changeValue*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                              theIndex: csize_t): var TheItemType {.cdecl,
    importcpp: "ChangeValue", header: "NCollection_SparseArray.hxx".}
#proc `()`*[TheItemType](this: var NCollectionSparseArray[TheItemType];
#                       theIndex: csize_t): var TheItemType {.cdecl,
#    importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc setValue*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                           theIndex: csize_t; theValue: TheItemType): var TheItemType {.
    cdecl, importcpp: "SetValue", header: "NCollection_SparseArray.hxx".}
proc extent*[TheItemType](this: NCollectionSparseArray[TheItemType]): csize_t {.
    noSideEffect, cdecl, importcpp: "Extent", header: "NCollection_SparseArray.hxx".}
proc isEmpty*[TheItemType](this: NCollectionSparseArray[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", header: "NCollection_SparseArray.hxx".}
proc find*[TheItemType](this: NCollectionSparseArray[TheItemType];
                       theIndex: csize_t): TheItemType {.noSideEffect, cdecl,
    importcpp: "Find", header: "NCollection_SparseArray.hxx".}
proc changeFind*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                             theIndex: csize_t): var TheItemType {.cdecl,
    importcpp: "ChangeFind", header: "NCollection_SparseArray.hxx".}
proc `bind`*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                         theIndex: csize_t; theValue: TheItemType): var TheItemType {.
    cdecl, importcpp: "Bind", header: "NCollection_SparseArray.hxx".}
proc isBound*[TheItemType](this: NCollectionSparseArray[TheItemType];
                          theIndex: csize_t): bool {.noSideEffect, cdecl,
    importcpp: "IsBound", header: "NCollection_SparseArray.hxx".}
proc unBind*[TheItemType](this: var NCollectionSparseArray[TheItemType];
                         theIndex: csize_t): bool {.cdecl, importcpp: "UnBind",
    header: "NCollection_SparseArray.hxx".}


proc newNCollectionSparseArrayConstIterator*[TheItemType](): NCollectionSparseArrayConstIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::ConstIterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc newNCollectionSparseArrayConstIterator*[TheItemType](
    theVector: NCollectionSparseArray): NCollectionSparseArrayConstIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::ConstIterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc init*[TheItemType](this: var NCollectionSparseArrayConstIterator[TheItemType];
                       theVector: NCollectionSparseArray) {.cdecl,
    importcpp: "Init", header: "NCollection_SparseArray.hxx".}
proc value*[TheItemType](this: NCollectionSparseArrayConstIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_SparseArray.hxx".}
#proc `()`*[TheItemType](this: NCollectionSparseArrayConstIterator[TheItemType]): TheItemType {.
#    noSideEffect, cdecl, importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
proc key*[TheItemType](this: NCollectionSparseArrayConstIterator[TheItemType]): csize_t {.
    noSideEffect, cdecl, importcpp: "Key", header: "NCollection_SparseArray.hxx".}


proc newNCollectionSparseArrayIterator*[TheItemType](): NCollectionSparseArrayIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::Iterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc newNCollectionSparseArrayIterator*[TheItemType](
    theVector: var NCollectionSparseArray): NCollectionSparseArrayIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_SparseArray<\'*0>::Iterator(@)",
                  header: "NCollection_SparseArray.hxx".}
proc init*[TheItemType](this: var NCollectionSparseArrayIterator[TheItemType];
                       theVector: NCollectionSparseArray) {.cdecl,
    importcpp: "Init", header: "NCollection_SparseArray.hxx".}
proc changeValue*[TheItemType](this: var NCollectionSparseArrayIterator[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeValue", header: "NCollection_SparseArray.hxx".}
#proc `()`*[TheItemType](this: var NCollectionSparseArrayIterator[TheItemType]): var TheItemType {.
#    cdecl, importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
#proc `()`*[TheItemType](this: NCollectionSparseArrayIterator[TheItemType]): TheItemType {.
#    noSideEffect, cdecl, importcpp: "#(@)", header: "NCollection_SparseArray.hxx".}
