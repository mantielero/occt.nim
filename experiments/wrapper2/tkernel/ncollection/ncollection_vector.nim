when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
                                    header: "NCollection_Vector.hxx", bycopy.} = object of NCollection_BaseVector ##
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
      header: "NCollection_Vector.hxx", bycopy.} = object of NCollection_VectorIterator ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor
                                                                                 ## -
                                                                                 ## for
                                                                                 ## later
                                                                                 ## Init


proc constructNCollection_VectorIterator*[TheItemType](): NCollection_VectorIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Vector<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc constructNCollection_VectorIterator*[TheItemType](
    theVector: NCollection_Vector; theToEnd: bool = Standard_False): NCollection_VectorIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Vector<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc Init*[TheItemType](this: var NCollection_VectorIterator[TheItemType];
                       theVector: NCollection_Vector) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc More*[TheItemType](this: NCollection_VectorIterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc Next*[TheItemType](this: var NCollection_VectorIterator[TheItemType]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc Previous*[TheItemType](this: var NCollection_VectorIterator[TheItemType]) {.
    cdecl, importcpp: "Previous", dynlib: tkernel.}
proc Offset*[TheItemType](this: var NCollection_VectorIterator[TheItemType];
                         theOffset: ptrdiff_t) {.cdecl, importcpp: "Offset",
    dynlib: tkernel.}
proc Differ*[TheItemType](this: NCollection_VectorIterator[TheItemType];
                         theOther: NCollection_VectorIterator): ptrdiff_t {.
    noSideEffect, cdecl, importcpp: "Differ", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_VectorIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: NCollection_VectorIterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc IsEqual*[TheItemType](this: NCollection_VectorIterator[TheItemType];
                          theOther: NCollection_VectorIterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
type
  NCollection_Vectoriterator* = NCollection_StlIterator[
      random_access_iterator_tag, NCollection_VectorIterator, TheItemType, false]
  NCollection_Vectorconst_iterator* = NCollection_StlIterator[
      random_access_iterator_tag, NCollection_VectorIterator, TheItemType, true]

proc begin*[TheItemType](this: NCollection_Vector[TheItemType]): NCollection_Vectoriterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheItemType](this: NCollection_Vector[TheItemType]): NCollection_Vectoriterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheItemType](this: NCollection_Vector[TheItemType]): NCollection_Vectorconst_iterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheItemType](this: NCollection_Vector[TheItemType]): NCollection_Vectorconst_iterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollection_Vector*[TheItemType](theIncrement: cint = 256;
    theAlloc: handle[NCollection_BaseAllocator] = nil): NCollection_Vector[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Vector<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollection_Vector*[TheItemType](theOther: NCollection_Vector): NCollection_Vector[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Vector<\'*0>(@)",
                  dynlib: tkernel.}
proc destroyNCollection_Vector*[TheItemType](
    this: var NCollection_Vector[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_Vector()", dynlib: tkernel.}
proc Length*[TheItemType](this: NCollection_Vector[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", dynlib: tkernel.}
proc Size*[TheItemType](this: NCollection_Vector[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
proc Lower*[TheItemType](this: NCollection_Vector[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Lower", dynlib: tkernel.}
proc Upper*[TheItemType](this: NCollection_Vector[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Upper", dynlib: tkernel.}
proc IsEmpty*[TheItemType](this: NCollection_Vector[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc Assign*[TheItemType](this: var NCollection_Vector[TheItemType];
                         theOther: NCollection_Vector;
                         theOwnAllocator: bool = Standard_True) {.cdecl,
    importcpp: "Assign", dynlib: tkernel.}
proc Append*[TheItemType](this: var NCollection_Vector[TheItemType];
                         theValue: TheItemType): var TheItemType {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc Appended*[TheItemType](this: var NCollection_Vector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "Appended", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollection_Vector[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc `[]`*[TheItemType](this: NCollection_Vector[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_Vector[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc First*[TheItemType](this: NCollection_Vector[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkernel.}
proc ChangeFirst*[TheItemType](this: var NCollection_Vector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", dynlib: tkernel.}
proc Last*[TheItemType](this: NCollection_Vector[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", dynlib: tkernel.}
proc ChangeLast*[TheItemType](this: var NCollection_Vector[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollection_Vector[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc `[]`*[TheItemType](this: var NCollection_Vector[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: var NCollection_Vector[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc SetValue*[TheItemType](this: var NCollection_Vector[TheItemType];
                           theIndex: cint; theValue: TheItemType): var TheItemType {.
    cdecl, importcpp: "SetValue", dynlib: tkernel.}
## ignored statement
