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
  PtrdiffT* {.importcpp:"std::ptrdiff_t".} = object
  RandomAccessIteratorTag* {.importcpp:"std::random_access_iterator_tag".} = object
  TheItemType* = object
  
  NCollectionArray1*[TheItemType] {.importcpp: "NCollection_Array1<\'0>",
                                   header: "NCollection_Array1.hxx", bycopy.} = object of RootObj ##
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
      header: "NCollection_Array1.hxx", bycopy.} = object of RootObj ## ! Empty constructor - for later Init
    ## !< Pointer to the current element in the array
    ## !< Pointer to the past-the-end element in the array


proc newNCollectionArray1Iterator*[TheItemType](): NCollectionArray1Iterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  header: "NCollection_Array1.hxx".}
proc newNCollectionArray1Iterator*[TheItemType](theArray: NCollectionArray1;
    theToEnd: bool = false): NCollectionArray1Iterator[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
    header: "NCollection_Array1.hxx".}
proc init*[TheItemType](this: var NCollectionArray1Iterator[TheItemType];
                       theArray: NCollectionArray1) {.cdecl, importcpp: "Init",
    header: "NCollection_Array1.hxx".}
proc more*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", header: "NCollection_Array1.hxx".}
proc next*[TheItemType](this: var NCollectionArray1Iterator[TheItemType]) {.cdecl,
    importcpp: "Next", header: "NCollection_Array1.hxx".}
proc previous*[TheItemType](this: var NCollectionArray1Iterator[TheItemType]) {.
    cdecl, importcpp: "Previous", header: "NCollection_Array1.hxx".}
proc offset*[TheItemType](this: var NCollectionArray1Iterator[TheItemType];
                         theOffset: PtrdiffT) {.cdecl, importcpp: "Offset",
    header: "NCollection_Array1.hxx".}
proc differ*[TheItemType](this: NCollectionArray1Iterator[TheItemType];
                         theOther: NCollectionArray1Iterator): PtrdiffT {.
    noSideEffect, cdecl, importcpp: "Differ", header: "NCollection_Array1.hxx".}
proc value*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_Array1.hxx".}
proc changeValue*[TheItemType](this: NCollectionArray1Iterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", header: "NCollection_Array1.hxx".}
proc isEqual*[TheItemType](this: NCollectionArray1Iterator[TheItemType];
                          theOther: NCollectionArray1Iterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "NCollection_Array1.hxx".}
type
#  NCollectionArray1iterator* = NCollectionStlIterator[RandomAccessIteratorTag,
#      NCollectionArray1Iterator, TheItemType, False]
  NCollectionArray1constIterator* = NCollectionStlIterator[
      RandomAccessIteratorTag, NCollectionArray1Iterator, TheItemType, true]

proc begin*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1iterator {.
    noSideEffect, cdecl, importcpp: "begin", header: "NCollection_Array1.hxx".}
proc `end`*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1iterator {.
    noSideEffect, cdecl, importcpp: "end", header: "NCollection_Array1.hxx".}
proc cbegin*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1constIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", header: "NCollection_Array1.hxx".}
proc cend*[TheItemType](this: NCollectionArray1[TheItemType]): NCollectionArray1constIterator {.
    noSideEffect, cdecl, importcpp: "cend", header: "NCollection_Array1.hxx".}
proc newNCollectionArray1*[TheItemType](): NCollectionArray1[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Array1<\'*0>(@)", header: "NCollection_Array1.hxx".}
proc newNCollectionArray1*[TheItemType](theLower: cint; theUpper: cint): NCollectionArray1[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  header: "NCollection_Array1.hxx".}
proc newNCollectionArray1*[TheItemType](theOther: NCollectionArray1): NCollectionArray1[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  header: "NCollection_Array1.hxx".}
proc newNCollectionArray1*[TheItemType](theBegin: TheItemType; theLower: cint;
                                       theUpper: cint): NCollectionArray1[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  header: "NCollection_Array1.hxx".}
proc init*[TheItemType](this: var NCollectionArray1[TheItemType];
                       theValue: TheItemType) {.cdecl, importcpp: "Init",
    header: "NCollection_Array1.hxx".}
proc size*[TheItemType](this: NCollectionArray1[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", header: "NCollection_Array1.hxx".}
proc length*[TheItemType](this: NCollectionArray1[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", header: "NCollection_Array1.hxx".}
proc isEmpty*[TheItemType](this: NCollectionArray1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", header: "NCollection_Array1.hxx".}
proc lower*[TheItemType](this: NCollectionArray1[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Lower", header: "NCollection_Array1.hxx".}
proc upper*[TheItemType](this: NCollectionArray1[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Upper", header: "NCollection_Array1.hxx".}
proc isDeletable*[TheItemType](this: NCollectionArray1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsDeletable", header: "NCollection_Array1.hxx".}
proc isAllocated*[TheItemType](this: NCollectionArray1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsAllocated", header: "NCollection_Array1.hxx".}
proc assign*[TheItemType](this: var NCollectionArray1[TheItemType];
                         theOther: NCollectionArray1): var NCollectionArray1 {.
    cdecl, importcpp: "Assign", header: "NCollection_Array1.hxx".}
proc move*[TheItemType](this: var NCollectionArray1[TheItemType];
                       theOther: var NCollectionArray1): var NCollectionArray1 {.
    cdecl, importcpp: "Move", header: "NCollection_Array1.hxx".}
proc first*[TheItemType](this: NCollectionArray1[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", header: "NCollection_Array1.hxx".}
proc changeFirst*[TheItemType](this: var NCollectionArray1[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", header: "NCollection_Array1.hxx".}
proc last*[TheItemType](this: NCollectionArray1[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", header: "NCollection_Array1.hxx".}
proc changeLast*[TheItemType](this: var NCollectionArray1[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", header: "NCollection_Array1.hxx".}
proc value*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_Array1.hxx".}
#proc `()`*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: cint): TheItemType {.
#    noSideEffect, cdecl, importcpp: "#(@)", header: "NCollection_Array1.hxx".}
proc `[]`*[TheItemType](this: NCollectionArray1[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "NCollection_Array1.hxx".}
proc changeValue*[TheItemType](this: var NCollectionArray1[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", header: "NCollection_Array1.hxx".}
#proc `()`*[TheItemType](this: var NCollectionArray1[TheItemType]; theIndex: cint): var TheItemType {.
#    cdecl, importcpp: "#(@)", header: "NCollection_Array1.hxx".}
proc `[]`*[TheItemType](this: var NCollectionArray1[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#[@]", header: "NCollection_Array1.hxx".}
proc setValue*[TheItemType](this: var NCollectionArray1[TheItemType];
                           theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "SetValue", header: "NCollection_Array1.hxx".}
proc resize*[TheItemType](this: var NCollectionArray1[TheItemType]; theLower: cint;
                         theUpper: cint; theToCopyData: bool) {.cdecl,
    importcpp: "Resize", header: "NCollection_Array1.hxx".}
proc destroyNCollectionArray1*[TheItemType](
    this: var NCollectionArray1[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_Array1()", header: "NCollection_Array1.hxx".}