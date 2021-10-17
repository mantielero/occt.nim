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

type
  NCollectionVector*[TheItemType] {.importcpp: "NCollection_Vector<\'0>",
                                   header: "NCollection_Vector.hxx", bycopy.} = object of NCollectionBaseVector ##
                                                                                                         ## !
                                                                                                         ## STL-compliant
                                                                                                         ## typedef
                                                                                                         ## for
                                                                                                         ## value
                                                                                                         ## type
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Nested
                                                                                                         ## class
                                                                                                         ## Iterator
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @name
                                                                                                         ## public
                                                                                                         ## methods
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Constructor
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @name
                                                                                                         ## private
                                                                                                         ## methods

  NCollectionVectorvalueType*[TheItemType] = TheItemType
  NCollectionVectorIterator*[TheItemType] {.
      importcpp: "NCollection_Vector<\'0>::Iterator",
      header: "NCollection_Vector.hxx", bycopy.} = object of RootObj ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor
                                                                                ## -
                                                                                ## for
                                                                                ## later
                                                                                ## Init


proc newNCollectionVectorIterator*[TheItemType](): NCollectionVectorIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Vector<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc newNCollectionVectorIterator*[TheItemType](theVector: NCollectionVector;
    theToEnd: bool = false): NCollectionVectorIterator[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Vector<\'*0>::Iterator(@)",
    dynlib: tkernel.}
proc init*[TheItemType](this: var NCollectionVectorIterator[TheItemType];
                       theVector: NCollectionVector) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc more*[TheItemType](this: NCollectionVectorIterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheItemType](this: var NCollectionVectorIterator[TheItemType]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc previous*[TheItemType](this: var NCollectionVectorIterator[TheItemType]) {.
    cdecl, importcpp: "Previous", dynlib: tkernel.}
proc offset*[TheItemType](this: var NCollectionVectorIterator[TheItemType];
                         theOffset: PtrdiffT) {.cdecl, importcpp: "Offset",
    dynlib: tkernel.}
proc differ*[TheItemType](this: NCollectionVectorIterator[TheItemType];
                         theOther: NCollectionVectorIterator): PtrdiffT {.
    noSideEffect, cdecl, importcpp: "Differ", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionVectorIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheItemType](this: NCollectionVectorIterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc isEqual*[TheItemType](this: NCollectionVectorIterator[TheItemType];
                          theOther: NCollectionVectorIterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
type
#  NCollectionVectoriterator* = NCollectionStlIterator[RandomAccessIteratorTag,
#      NCollectionVectorIterator, TheItemType, False]
  NCollectionVectorconstIterator* = NCollectionStlIterator[
      RandomAccessIteratorTag, NCollectionVectorIterator, TheItemType, true]

proc begin*[TheItemType](this: NCollectionVector[TheItemType]): NCollectionVectoriterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheItemType](this: NCollectionVector[TheItemType]): NCollectionVectoriterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheItemType](this: NCollectionVector[TheItemType]): NCollectionVectorconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheItemType](this: NCollectionVector[TheItemType]): NCollectionVectorconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc newNCollectionVector*[TheItemType](theIncrement: cint = 256; theAlloc: Handle[
    NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](nil)): NCollectionVector[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Vector<\'*0>(@)", dynlib: tkernel.}
proc newNCollectionVector*[TheItemType](theOther: NCollectionVector): NCollectionVector[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Vector<\'*0>(@)",
                  dynlib: tkernel.}
proc destroyNCollectionVector*[TheItemType](
    this: var NCollectionVector[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_Vector()", dynlib: tkernel.}
proc length*[TheItemType](this: NCollectionVector[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", dynlib: tkernel.}
proc size*[TheItemType](this: NCollectionVector[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
proc lower*[TheItemType](this: NCollectionVector[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Lower", dynlib: tkernel.}
proc upper*[TheItemType](this: NCollectionVector[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Upper", dynlib: tkernel.}
proc isEmpty*[TheItemType](this: NCollectionVector[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc assign*[TheItemType](this: var NCollectionVector[TheItemType];
                         theOther: NCollectionVector;
                         theOwnAllocator: bool = true) {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc append*[TheItemType](this: var NCollectionVector[TheItemType];
                         theValue: TheItemType): var TheItemType {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc appended*[TheItemType](this: var NCollectionVector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "Appended", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollectionVector[TheItemType]; theIndex: cint): TheItemType {.
#    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
#proc `[]`*[TheItemType](this: NCollectionVector[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionVector[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc first*[TheItemType](this: NCollectionVector[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkernel.}
proc changeFirst*[TheItemType](this: var NCollectionVector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", dynlib: tkernel.}
proc last*[TheItemType](this: NCollectionVector[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", dynlib: tkernel.}
proc changeLast*[TheItemType](this: var NCollectionVector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollectionVector[TheItemType]; theIndex: cint): var TheItemType {.
#    cdecl, importcpp: "#(@)", dynlib: tkernel.}
#proc `[]`*[TheItemType](this: var NCollectionVector[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc changeValue*[TheItemType](this: var NCollectionVector[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc setValue*[TheItemType](this: var NCollectionVector[TheItemType];
                           theIndex: cint; theValue: TheItemType): var TheItemType {.
    cdecl, importcpp: "SetValue", dynlib: tkernel.}
## ignored statement
