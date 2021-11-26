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
    TheItemType] {.constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  header: "NCollection_Array1.hxx".}
proc constructNCollectionArray1Iterator*[TheItemType](
    theArray: NCollectionArray1; theToEnd: StandardBoolean = false): NCollectionArray1Iterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  header: "NCollection_Array1.hxx".}
proc init*[TheItemType](this: var NCollectionArray1Iterator[TheItemType];
                       theArray: NCollectionArray1) {.importcpp: "Init",
    header: "NCollection_Array1.hxx".}
proc more*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): StandardBoolean {.
    noSideEffect, importcpp: "More", header: "NCollection_Array1.hxx".}
proc next*[TheItemType](this: var NCollectionArray1Iterator[TheItemType]) {.
    importcpp: "Next", header: "NCollection_Array1.hxx".}
proc previous*[TheItemType](this: var NCollectionArray1Iterator[TheItemType]) {.
    importcpp: "Previous", header: "NCollection_Array1.hxx".}
#[
proc offset*[TheItemType](this: var NCollectionArray1Iterator[TheItemType];
                         theOffset: PtrdiffT) {.importcpp: "Offset",
    header: "NCollection_Array1.hxx".}

proc differ*[TheItemType](this: NCollectionArray1Iterator[TheItemType];
                         theOther: NCollectionArray1Iterator): PtrdiffT {.
    noSideEffect, importcpp: "Differ", header: "NCollection_Array1.hxx".}
]#
proc value*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Array1.hxx".}
proc changeValue*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): var TheItemType {.
    noSideEffect, importcpp: "ChangeValue", header: "NCollection_Array1.hxx".}
proc isEqual*[TheItemType](this: NCollectionArray1Iterator[TheItemType];
                          theOther: NCollectionArray1Iterator): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "NCollection_Array1.hxx".}

#[ type
  NCollectionArray1iterator* = NCollectionStlIterator[RandomAccessIteratorTag,
      NCollectionArray1Iterator, TheItemType, False]
  NCollectionArray1constIterator* = NCollectionStlIterator[
      RandomAccessIteratorTag, NCollectionArray1Iterator, TheItemType, True] ]#

proc begin*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1iterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_Array1.hxx".}
proc `end`*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1iterator {.
    noSideEffect, importcpp: "end", header: "NCollection_Array1.hxx".}

#[ proc cbegin*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1constIterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_Array1.hxx".} ]#
#[ proc cend*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1constIterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_Array1.hxx".} ]#
proc constructNCollectionArray1*[TheItemType](): NCollectionArray1[TheItemType] {.
    constructor, importcpp: "NCollection_Array1<\'*0>(@)",
    header: "NCollection_Array1.hxx".}
proc constructNCollectionArray1*[TheItemType](theLower: int; theUpper: int): NCollectionArray1[
    TheItemType] {.constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  header: "NCollection_Array1.hxx".}
proc constructNCollectionArray1*[TheItemType](theOther: NCollectionArray1): NCollectionArray1[
    TheItemType] {.constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  header: "NCollection_Array1.hxx".}
proc constructNCollectionArray1*[TheItemType](theBegin: TheItemType; theLower: int;
    theUpper: int): NCollectionArray1[TheItemType] {.constructor,
    importcpp: "NCollection_Array1<\'*0>(@)", header: "NCollection_Array1.hxx".}
proc init*[TheItemType](this: var NCollectionArray1[TheItemType];
                       theValue: TheItemType) {.importcpp: "Init",
    header: "NCollection_Array1.hxx".}
proc size*[TheItemType](this: NCollectionArray1[TheItemType]): int {.noSideEffect,
    importcpp: "Size", header: "NCollection_Array1.hxx".}
proc length*[TheItemType](this: NCollectionArray1[TheItemType]): int {.noSideEffect,
    importcpp: "Length", header: "NCollection_Array1.hxx".}
proc isEmpty*[TheItemType](this: NCollectionArray1[TheItemType]): StandardBoolean {.
    noSideEffect, importcpp: "IsEmpty", header: "NCollection_Array1.hxx".}
proc lower*[TheItemType](this: NCollectionArray1[TheItemType]): int {.noSideEffect,
    importcpp: "Lower", header: "NCollection_Array1.hxx".}
proc upper*[TheItemType](this: NCollectionArray1[TheItemType]): int {.noSideEffect,
    importcpp: "Upper", header: "NCollection_Array1.hxx".}
proc isDeletable*[TheItemType](this: NCollectionArray1[TheItemType]): StandardBoolean {.
    noSideEffect, importcpp: "IsDeletable", header: "NCollection_Array1.hxx".}
proc isAllocated*[TheItemType](this: NCollectionArray1[TheItemType]): StandardBoolean {.
    noSideEffect, importcpp: "IsAllocated", header: "NCollection_Array1.hxx".}
proc assign*[TheItemType](this: var NCollectionArray1[TheItemType];
                         theOther: NCollectionArray1): var NCollectionArray1 {.
    importcpp: "Assign", header: "NCollection_Array1.hxx".}
proc move*[TheItemType](this: var NCollectionArray1[TheItemType];
                       theOther: var NCollectionArray1): var NCollectionArray1 {.
    importcpp: "Move", header: "NCollection_Array1.hxx".}
proc first*[TheItemType](this: NCollectionArray1[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "First", header: "NCollection_Array1.hxx".}
proc changeFirst*[TheItemType](this: var NCollectionArray1[TheItemType]): var TheItemType {.
    importcpp: "ChangeFirst", header: "NCollection_Array1.hxx".}
proc last*[TheItemType](this: NCollectionArray1[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Last", header: "NCollection_Array1.hxx".}
proc changeLast*[TheItemType](this: var NCollectionArray1[TheItemType]): var TheItemType {.
    importcpp: "ChangeLast", header: "NCollection_Array1.hxx".}
proc value*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: int): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Array1.hxx".}
proc `()`*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: int): TheItemType {.
    noSideEffect, importcpp: "#(@)", header: "NCollection_Array1.hxx".}
proc `[]`*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: int): TheItemType {.
    noSideEffect, importcpp: "#[@]", header: "NCollection_Array1.hxx".}
proc changeValue*[TheItemType](this: var NCollectionArray1[TheItemType];
                              theIndex: int): var TheItemType {.
    importcpp: "ChangeValue", header: "NCollection_Array1.hxx".}
proc `()`*[TheItemType](this: var NCollectionArray1[TheItemType]; theIndex: int): var TheItemType {.
    importcpp: "#(@)", header: "NCollection_Array1.hxx".}
proc `[]`*[TheItemType](this: var NCollectionArray1[TheItemType]; theIndex: int): var TheItemType {.
    importcpp: "#[@]", header: "NCollection_Array1.hxx".}
proc setValue*[TheItemType](this: var NCollectionArray1[TheItemType]; theIndex: int;
                           theItem: TheItemType) {.importcpp: "SetValue",
    header: "NCollection_Array1.hxx".}
proc resize*[TheItemType](this: var NCollectionArray1[TheItemType]; theLower: int;
                         theUpper: int; theToCopyData: StandardBoolean) {.
    importcpp: "Resize", header: "NCollection_Array1.hxx".}
proc destroyNCollectionArray1*[TheItemType](
    this: var NCollectionArray1[TheItemType]) {.
    importcpp: "#.~NCollection_Array1()", header: "NCollection_Array1.hxx".}
