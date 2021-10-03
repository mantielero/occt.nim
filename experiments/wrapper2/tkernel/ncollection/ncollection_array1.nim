##  Created on: 2002-04-15
##  Created by: Alexander Kartomin (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

##  *********************************************** Template for Array1 class
## *
##  Purpose:     The class Array1 represents unidimensional arrays
##               of fixed size known at run time.
##               The range of the index is user defined.
##               An array1 can be constructed with a "C array".
##               This functionality is useful to call methods expecting
##               an Array1. It allows to carry the bounds inside the arrays.
##
##  Examples:    Item tab[100]; //  An example with a C array
##               Array1OfItem ttab (tab[0],1,100);
##
##               Array1OfItem tttab (ttab(10),10,20); // a slice of ttab
##
##               If you want to reindex an array from 1 to Length do :
##
##               Array1 tab1(tab(tab.Lower()),1,tab.Length());
##
##  Warning:     Programs client of such a class must be independant
##               of the range of the first element. Then, a C++ for
##               loop must be written like this
##
##               for (i = A.Lower(); i <= A.Upper(); i++)
##
##  Changes:     In  comparison  to  TCollection  the  flag  isAllocated  was
##               renamed into myDeletable (alike in  the Array2).  For naming
##               compatibility the method IsAllocated remained in class along
##               with IsDeletable.
##

type
  NCollectionArray1*[TheItemType] {.importcpp: "NCollection_Array1<\'0>",
                                   header: "NCollection_Array1.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## STL-compliant
                                                                                  ## typedef
                                                                                  ## for
                                                                                  ## value
                                                                                  ## type
                                                                                  ##
                                                                                  ## !
                                                                                  ## Implementation
                                                                                  ## of
                                                                                  ## the
                                                                                  ## Iterator
                                                                                  ## interface.
                                                                                  ##
                                                                                  ## ----------
                                                                                  ## PUBLIC
                                                                                  ## METHODS
                                                                                  ## ------------
                                                                                  ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor;
                                                                                  ## should
                                                                                  ## be
                                                                                  ## used
                                                                                  ## with
                                                                                  ## caution.
                                                                                  ##
                                                                                  ## !
                                                                                  ## @sa
                                                                                  ## methods
                                                                                  ## Resize()
                                                                                  ## and
                                                                                  ## Move().
                                                                                  ##
                                                                                  ## ----------
                                                                                  ## PROTECTED
                                                                                  ## FIELDS
                                                                                  ## -----------
    ## !< Flag showing who allocated the array
    ## !< Pointer to '0'th array item

  NCollectionArray1valueType*[TheItemType] = TheItemType
  NCollectionArray1Iterator*[TheItemType] {.
      importcpp: "NCollection_Array1<\'0>::Iterator",
      header: "NCollection_Array1.hxx", bycopy.} = object ## ! Empty constructor - for later Init
    ## !< Pointer to the current element in the array
    ## !< Pointer to the past-the-end element in the array


proc constructNCollectionArray1Iterator*[TheItemType](): NCollectionArray1Iterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc constructNCollectionArray1Iterator*[TheItemType](
    theArray: NCollectionArray1; theToEnd: bool = standardFalse): NCollectionArray1Iterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc init*[TheItemType](this: var NCollectionArray1Iterator[TheItemType];
                       theArray: NCollectionArray1) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc more*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheItemType](this: var NCollectionArray1Iterator[TheItemType]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc previous*[TheItemType](this: var NCollectionArray1Iterator[TheItemType]) {.
    cdecl, importcpp: "Previous", dynlib: tkernel.}
proc offset*[TheItemType](this: var NCollectionArray1Iterator[TheItemType];
                         theOffset: PtrdiffT) {.cdecl, importcpp: "Offset",
    dynlib: tkernel.}
proc differ*[TheItemType](this: NCollectionArray1Iterator[TheItemType];
                         theOther: NCollectionArray1Iterator): PtrdiffT {.
    noSideEffect, cdecl, importcpp: "Differ", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc isEqual*[TheItemType](this: NCollectionArray1Iterator[TheItemType];
                          theOther: NCollectionArray1Iterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
type
  NCollectionArray1iterator* = NCollectionStlIterator[RandomAccessIteratorTag,
      NCollectionArray1Iterator, TheItemType, False]
  NCollectionArray1constIterator* = NCollectionStlIterator[
      RandomAccessIteratorTag, NCollectionArray1Iterator, TheItemType, True]

proc begin*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1iterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1iterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1constIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1constIterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollectionArray1*[TheItemType](): NCollectionArray1[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionArray1*[TheItemType](theLower: cint; theUpper: cint): NCollectionArray1[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollectionArray1*[TheItemType](theOther: NCollectionArray1): NCollectionArray1[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollectionArray1*[TheItemType](theBegin: TheItemType;
    theLower: cint; theUpper: cint): NCollectionArray1[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Array1<\'*0>(@)", dynlib: tkernel.}
proc init*[TheItemType](this: var NCollectionArray1[TheItemType];
                       theValue: TheItemType) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc size*[TheItemType](this: NCollectionArray1[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
proc length*[TheItemType](this: NCollectionArray1[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", dynlib: tkernel.}
proc isEmpty*[TheItemType](this: NCollectionArray1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc lower*[TheItemType](this: NCollectionArray1[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Lower", dynlib: tkernel.}
proc upper*[TheItemType](this: NCollectionArray1[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Upper", dynlib: tkernel.}
proc isDeletable*[TheItemType](this: NCollectionArray1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsDeletable", dynlib: tkernel.}
proc isAllocated*[TheItemType](this: NCollectionArray1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsAllocated", dynlib: tkernel.}
proc assign*[TheItemType](this: var NCollectionArray1[TheItemType];
                         theOther: NCollectionArray1): var NCollectionArray1 {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc move*[TheItemType](this: var NCollectionArray1[TheItemType];
                       theOther: var NCollectionArray1): var NCollectionArray1 {.
    cdecl, importcpp: "Move", dynlib: tkernel.}
proc first*[TheItemType](this: NCollectionArray1[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkernel.}
proc changeFirst*[TheItemType](this: var NCollectionArray1[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", dynlib: tkernel.}
proc last*[TheItemType](this: NCollectionArray1[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", dynlib: tkernel.}
proc changeLast*[TheItemType](this: var NCollectionArray1[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc `[]`*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc changeValue*[TheItemType](this: var NCollectionArray1[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollectionArray1[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc `[]`*[TheItemType](this: var NCollectionArray1[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc setValue*[TheItemType](this: var NCollectionArray1[TheItemType];
                           theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc resize*[TheItemType](this: var NCollectionArray1[TheItemType]; theLower: cint;
                         theUpper: cint; theToCopyData: bool) {.cdecl,
    importcpp: "Resize", dynlib: tkernel.}
proc destroyNCollectionArray1*[TheItemType](
    this: var NCollectionArray1[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_Array1()", dynlib: tkernel.}