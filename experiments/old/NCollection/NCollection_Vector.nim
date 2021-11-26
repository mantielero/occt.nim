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
  NCollection_Vector*[TheItemType] {.importcpp: "NCollection_Vector<\'0>",
                                    header: "NCollection_Vector.hxx", bycopy.} = object #of NCollection_BaseVector ##
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

  NCollection_Vectorvalue_type*[TheItemType] = TheItemType
  NCollection_VectorIterator*[TheItemType] {.
      importcpp: "NCollection_Vector<\'0>::Iterator",
      header: "NCollection_Vector.hxx", bycopy.} = object #of NCollection_VectorIterator ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor
                                                                                 ## -
                                                                                 ## for
                                                                                 ## later
                                                                                 ## Init


proc constructNCollection_VectorIterator*[TheItemType](): NCollection_VectorIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_Vector<\'*0>::Iterator(@)",
                  header: "NCollection_Vector.hxx".}
proc constructNCollection_VectorIterator*[TheItemType](
    theVector: NCollection_Vector; theToEnd: Standard_Boolean = false): NCollection_VectorIterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_Vector<\'*0>::Iterator(@)",
                  header: "NCollection_Vector.hxx".}
proc Init*[TheItemType](this: var NCollection_VectorIterator[TheItemType];
                       theVector: NCollection_Vector) {.importcpp: "Init",
    header: "NCollection_Vector.hxx".}
proc More*[TheItemType](this: NCollection_VectorIterator[TheItemType]): Standard_Boolean {.
    noSideEffect, importcpp: "More", header: "NCollection_Vector.hxx".}
proc Next*[TheItemType](this: var NCollection_VectorIterator[TheItemType]) {.
    importcpp: "Next", header: "NCollection_Vector.hxx".}
proc Previous*[TheItemType](this: var NCollection_VectorIterator[TheItemType]) {.
    importcpp: "Previous", header: "NCollection_Vector.hxx".}
#[ proc Offset*[TheItemType](this: var NCollection_VectorIterator[TheItemType];
                         theOffset: ptrdiff_t) {.importcpp: "Offset",
    header: "NCollection_Vector.hxx".} ]#
#[ proc Differ*[TheItemType](this: NCollection_VectorIterator[TheItemType];
                         theOther: NCollection_VectorIterator): ptrdiff_t {.
    noSideEffect, importcpp: "Differ", header: "NCollection_Vector.hxx".} ]#
proc Value*[TheItemType](this: NCollection_VectorIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Vector.hxx".}
proc ChangeValue*[TheItemType](this: NCollection_VectorIterator[TheItemType]): var TheItemType {.
    noSideEffect, importcpp: "ChangeValue", header: "NCollection_Vector.hxx".}
proc IsEqual*[TheItemType](this: NCollection_VectorIterator[TheItemType];
                          theOther: NCollection_VectorIterator): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "NCollection_Vector.hxx".}
#[ type
  NCollection_Vectoriterator* = NCollection_StlIterator[
      random_access_iterator_tag, NCollection_VectorIterator, TheItemType, false]
  NCollection_Vectorconst_iterator* = NCollection_StlIterator[
      random_access_iterator_tag, NCollection_VectorIterator, TheItemType, true] ]#

proc begin*[TheItemType](this: NCollection_Vector[TheItemType]): NCollection_Vectoriterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_Vector.hxx".}
proc `end`*[TheItemType](this: NCollection_Vector[TheItemType]): NCollection_Vectoriterator {.
    noSideEffect, importcpp: "end", header: "NCollection_Vector.hxx".}
#[ proc cbegin*[TheItemType](this: NCollection_Vector[TheItemType]): NCollection_Vectorconst_iterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_Vector.hxx".} ]#
#[ proc cend*[TheItemType](this: NCollection_Vector[TheItemType]): NCollection_Vectorconst_iterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_Vector.hxx".} ]#
#[ proc constructNCollection_Vector*[TheItemType](theIncrement: int = 256;
    theAlloc: handle[NCollection_BaseAllocator] = nil): NCollection_Vector[
    TheItemType] {.constructor, importcpp: "NCollection_Vector<\'*0>(@)",
                  header: "NCollection_Vector.hxx".} ]#
proc constructNCollection_Vector*[TheItemType](theOther: NCollection_Vector): NCollection_Vector[
    TheItemType] {.constructor, importcpp: "NCollection_Vector<\'*0>(@)",
                  header: "NCollection_Vector.hxx".}
proc destroyNCollection_Vector*[TheItemType](
    this: var NCollection_Vector[TheItemType]) {.
    importcpp: "#.~NCollection_Vector()", header: "NCollection_Vector.hxx".}
proc Length*[TheItemType](this: NCollection_Vector[TheItemType]): int {.
    noSideEffect, importcpp: "Length", header: "NCollection_Vector.hxx".}
proc Size*[TheItemType](this: NCollection_Vector[TheItemType]): int {.noSideEffect,
    importcpp: "Size", header: "NCollection_Vector.hxx".}
proc Lower*[TheItemType](this: NCollection_Vector[TheItemType]): int {.noSideEffect,
    importcpp: "Lower", header: "NCollection_Vector.hxx".}
proc Upper*[TheItemType](this: NCollection_Vector[TheItemType]): int {.noSideEffect,
    importcpp: "Upper", header: "NCollection_Vector.hxx".}
proc IsEmpty*[TheItemType](this: NCollection_Vector[TheItemType]): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty", header: "NCollection_Vector.hxx".}
proc Assign*[TheItemType](this: var NCollection_Vector[TheItemType];
                         theOther: NCollection_Vector;
                         theOwnAllocator: Standard_Boolean = true) {.
    importcpp: "Assign", header: "NCollection_Vector.hxx".}
proc Append*[TheItemType](this: var NCollection_Vector[TheItemType];
                         theValue: TheItemType): var TheItemType {.
    importcpp: "Append", header: "NCollection_Vector.hxx".}
proc Appended*[TheItemType](this: var NCollection_Vector[TheItemType]): var TheItemType {.
    importcpp: "Appended", header: "NCollection_Vector.hxx".}
proc `()`*[TheItemType](this: NCollection_Vector[TheItemType]; theIndex: int): TheItemType {.
    noSideEffect, importcpp: "#(@)", header: "NCollection_Vector.hxx".}
proc `[]`*[TheItemType](this: NCollection_Vector[TheItemType]; theIndex: int): TheItemType {.
    noSideEffect, importcpp: "#[@]", header: "NCollection_Vector.hxx".}
proc Value*[TheItemType](this: NCollection_Vector[TheItemType]; theIndex: int): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Vector.hxx".}
proc First*[TheItemType](this: NCollection_Vector[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "First", header: "NCollection_Vector.hxx".}
proc ChangeFirst*[TheItemType](this: var NCollection_Vector[TheItemType]): var TheItemType {.
    importcpp: "ChangeFirst", header: "NCollection_Vector.hxx".}
proc Last*[TheItemType](this: NCollection_Vector[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Last", header: "NCollection_Vector.hxx".}
proc ChangeLast*[TheItemType](this: var NCollection_Vector[TheItemType]): var TheItemType {.
    importcpp: "ChangeLast", header: "NCollection_Vector.hxx".}
proc `()`*[TheItemType](this: var NCollection_Vector[TheItemType]; theIndex: int): var TheItemType {.
    importcpp: "#(@)", header: "NCollection_Vector.hxx".}
proc `[]`*[TheItemType](this: var NCollection_Vector[TheItemType]; theIndex: int): var TheItemType {.
    importcpp: "#[@]", header: "NCollection_Vector.hxx".}
proc ChangeValue*[TheItemType](this: var NCollection_Vector[TheItemType];
                              theIndex: int): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_Vector.hxx".}
proc SetValue*[TheItemType](this: var NCollection_Vector[TheItemType];
                           theIndex: int; theValue: TheItemType): var TheItemType {.
    importcpp: "SetValue", header: "NCollection_Vector.hxx".}
## ! Assignment to the collection of the same type
## template <class TheItemType> inline
## void NCollection_Vector<TheItemType>::Assign (const NCollection_Vector& theOther,
##                                               const Standard_Boolean    theOwnAllocator);
