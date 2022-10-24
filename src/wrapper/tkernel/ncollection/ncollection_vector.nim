import ncollection_types

##  Created on: 2002-04-23
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2002-2013 OPEN CASCADE SAS
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

## ! Class NCollection_Vector (dynamic array of objects)
## !
## ! This class is similar to NCollection_Array1  though the indices always start
## ! at 0 (in Array1 the first index must be specified)
## !
## ! The Vector is always created with 0 length. It can be enlarged by two means:
## !  1. Calling the method Append (val) - then "val" is added to the end of the
## !     vector (the vector length is incremented)
## !  2. Calling the method SetValue (i, val)  - if "i" is greater than or equal
## !     to the current length of the vector,  the vector is enlarged to accomo-
## !     date this index
## !
## ! The methods Append and SetValue return  a non-const reference  to the copied
## ! object  inside  the vector.  This reference  is guaranteed to be valid until
## ! the vector is destroyed. It can be used to access the vector member directly
## ! or to pass its address to other data structures.
## !
## ! The vector iterator remembers the length of the vector  at the moment of the
## ! creation or initialisation of the iterator.   Therefore the iteration begins
## ! at index 0  and stops at the index equal to (remembered_length-1).  It is OK
## ! to enlarge the vector during the iteration.




proc newNCollectionVectorIterator*[TheItemType](): NCollectionVectorIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Vector<\'*0>::Iterator(@)",
                  header: "NCollection_Vector.hxx".}
proc newNCollectionVectorIterator*[TheItemType](theVector: NCollectionVector;
    theToEnd: bool = false): NCollectionVectorIterator[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Vector<\'*0>::Iterator(@)",
    header: "NCollection_Vector.hxx".}
proc init*[TheItemType](this: var NCollectionVectorIterator[TheItemType];
                       theVector: NCollectionVector) {.cdecl, importcpp: "Init",
    header: "NCollection_Vector.hxx".}
proc more*[TheItemType](this: NCollectionVectorIterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", header: "NCollection_Vector.hxx".}
proc next*[TheItemType](this: var NCollectionVectorIterator[TheItemType]) {.cdecl,
    importcpp: "Next", header: "NCollection_Vector.hxx".}
proc previous*[TheItemType](this: var NCollectionVectorIterator[TheItemType]) {.
    cdecl, importcpp: "Previous", header: "NCollection_Vector.hxx".}
proc offset*[TheItemType](this: var NCollectionVectorIterator[TheItemType];
                         theOffset: PtrdiffT) {.cdecl, importcpp: "Offset",
    header: "NCollection_Vector.hxx".}
proc differ*[TheItemType](this: NCollectionVectorIterator[TheItemType];
                         theOther: NCollectionVectorIterator): PtrdiffT {.
    noSideEffect, cdecl, importcpp: "Differ", header: "NCollection_Vector.hxx".}
proc value*[TheItemType](this: NCollectionVectorIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_Vector.hxx".}
proc changeValue*[TheItemType](this: NCollectionVectorIterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", header: "NCollection_Vector.hxx".}
proc isEqual*[TheItemType](this: NCollectionVectorIterator[TheItemType];
                          theOther: NCollectionVectorIterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "NCollection_Vector.hxx".}

proc begin*[TheItemType](this: NCollectionVector[TheItemType]): NCollectionVectoriterator {.
    noSideEffect, cdecl, importcpp: "begin", header: "NCollection_Vector.hxx".}
proc `end`*[TheItemType](this: NCollectionVector[TheItemType]): NCollectionVectoriterator {.
    noSideEffect, cdecl, importcpp: "end", header: "NCollection_Vector.hxx".}
proc cbegin*[TheItemType](this: NCollectionVector[TheItemType]): NCollectionVectorconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", header: "NCollection_Vector.hxx".}
proc cend*[TheItemType](this: NCollectionVector[TheItemType]): NCollectionVectorconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", header: "NCollection_Vector.hxx".}
proc newNCollectionVector*[TheItemType](theIncrement: cint = 256; theAlloc: Handle[
    NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](nil)): NCollectionVector[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Vector<\'*0>(@)", header: "NCollection_Vector.hxx".}
proc newNCollectionVector*[TheItemType](theOther: NCollectionVector): NCollectionVector[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Vector<\'*0>(@)",
                  header: "NCollection_Vector.hxx".}
proc destroyNCollectionVector*[TheItemType](
    this: var NCollectionVector[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_Vector()", header: "NCollection_Vector.hxx".}
proc length*[TheItemType](this: NCollectionVector[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", header: "NCollection_Vector.hxx".}
proc size*[TheItemType](this: NCollectionVector[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", header: "NCollection_Vector.hxx".}
proc lower*[TheItemType](this: NCollectionVector[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Lower", header: "NCollection_Vector.hxx".}
proc upper*[TheItemType](this: NCollectionVector[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Upper", header: "NCollection_Vector.hxx".}
proc isEmpty*[TheItemType](this: NCollectionVector[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", header: "NCollection_Vector.hxx".}
proc assign*[TheItemType](this: var NCollectionVector[TheItemType];
                         theOther: NCollectionVector;
                         theOwnAllocator: bool = true) {.cdecl,
    importcpp: "Assign", header: "NCollection_Vector.hxx".}
proc append*[TheItemType](this: var NCollectionVector[TheItemType];
                         theValue: TheItemType): var TheItemType {.cdecl,
    importcpp: "Append", header: "NCollection_Vector.hxx".}
proc appended*[TheItemType](this: var NCollectionVector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "Appended", header: "NCollection_Vector.hxx".}
proc `()`*[TheItemType](this: NCollectionVector[TheItemType]; theIndex: cint): TheItemType {.
#    noSideEffect, cdecl, importcpp: "#(@)", header: "NCollection_Vector.hxx".}
#proc `[]`*[TheItemType](this: NCollectionVector[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "NCollection_Vector.hxx".}
proc value*[TheItemType](this: NCollectionVector[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_Vector.hxx".}
proc first*[TheItemType](this: NCollectionVector[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", header: "NCollection_Vector.hxx".}
proc changeFirst*[TheItemType](this: var NCollectionVector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", header: "NCollection_Vector.hxx".}
proc last*[TheItemType](this: NCollectionVector[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", header: "NCollection_Vector.hxx".}
proc changeLast*[TheItemType](this: var NCollectionVector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", header: "NCollection_Vector.hxx".}
proc `()`*[TheItemType](this: var NCollectionVector[TheItemType]; theIndex: cint): var TheItemType {.
#    cdecl, importcpp: "#(@)", header: "NCollection_Vector.hxx".}
#proc `[]`*[TheItemType](this: var NCollectionVector[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#[@]", header: "NCollection_Vector.hxx".}
proc changeValue*[TheItemType](this: var NCollectionVector[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", header: "NCollection_Vector.hxx".}
proc setValue*[TheItemType](this: var NCollectionVector[TheItemType];
                           theIndex: cint; theValue: TheItemType): var TheItemType {.
    cdecl, importcpp: "SetValue", header: "NCollection_Vector.hxx".}
## ignored statement

