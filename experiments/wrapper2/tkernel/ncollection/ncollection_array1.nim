when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
  NCollection_Array1*[TheItemType] {.importcpp: "NCollection_Array1<\'0>",
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

  NCollection_Array1value_type*[TheItemType] = TheItemType
  NCollection_Array1Iterator*[TheItemType] {.
      importcpp: "NCollection_Array1<\'0>::Iterator",
      header: "NCollection_Array1.hxx", bycopy.} = object ## ! Empty constructor - for later Init
    ## !< Pointer to the current element in the array
    ## !< Pointer to the past-the-end element in the array


proc constructNCollection_Array1Iterator*[TheItemType](): NCollection_Array1Iterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc constructNCollection_Array1Iterator*[TheItemType](
    theArray: NCollection_Array1; theToEnd: bool = Standard_False): NCollection_Array1Iterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc Init*[TheItemType](this: var NCollection_Array1Iterator[TheItemType];
                       theArray: NCollection_Array1) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc More*[TheItemType](this: NCollection_Array1Iterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc Next*[TheItemType](this: var NCollection_Array1Iterator[TheItemType]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc Previous*[TheItemType](this: var NCollection_Array1Iterator[TheItemType]) {.
    cdecl, importcpp: "Previous", dynlib: tkernel.}
proc Offset*[TheItemType](this: var NCollection_Array1Iterator[TheItemType];
                         theOffset: ptrdiff_t) {.cdecl, importcpp: "Offset",
    dynlib: tkernel.}
proc Differ*[TheItemType](this: NCollection_Array1Iterator[TheItemType];
                         theOther: NCollection_Array1Iterator): ptrdiff_t {.
    noSideEffect, cdecl, importcpp: "Differ", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_Array1Iterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: NCollection_Array1Iterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc IsEqual*[TheItemType](this: NCollection_Array1Iterator[TheItemType];
                          theOther: NCollection_Array1Iterator): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
type
  NCollection_Array1iterator* = NCollection_StlIterator[
      random_access_iterator_tag, NCollection_Array1Iterator, TheItemType, false]
  NCollection_Array1const_iterator* = NCollection_StlIterator[
      random_access_iterator_tag, NCollection_Array1Iterator, TheItemType, true]

proc begin*[TheItemType](this: NCollection_Array1[TheItemType]): NCollection_Array1iterator {.
    noSideEffect, cdecl, importcpp: "begin", dynlib: tkernel.}
proc `end`*[TheItemType](this: NCollection_Array1[TheItemType]): NCollection_Array1iterator {.
    noSideEffect, cdecl, importcpp: "end", dynlib: tkernel.}
proc cbegin*[TheItemType](this: NCollection_Array1[TheItemType]): NCollection_Array1const_iterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheItemType](this: NCollection_Array1[TheItemType]): NCollection_Array1const_iterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollection_Array1*[TheItemType](): NCollection_Array1[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Array1*[TheItemType](theLower: cint; theUpper: cint): NCollection_Array1[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollection_Array1*[TheItemType](theOther: NCollection_Array1): NCollection_Array1[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollection_Array1*[TheItemType](theBegin: TheItemType;
    theLower: cint; theUpper: cint): NCollection_Array1[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Array1<\'*0>(@)", dynlib: tkernel.}
proc Init*[TheItemType](this: var NCollection_Array1[TheItemType];
                       theValue: TheItemType) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc Size*[TheItemType](this: NCollection_Array1[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
proc Length*[TheItemType](this: NCollection_Array1[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", dynlib: tkernel.}
proc IsEmpty*[TheItemType](this: NCollection_Array1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc Lower*[TheItemType](this: NCollection_Array1[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Lower", dynlib: tkernel.}
proc Upper*[TheItemType](this: NCollection_Array1[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Upper", dynlib: tkernel.}
proc IsDeletable*[TheItemType](this: NCollection_Array1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsDeletable", dynlib: tkernel.}
proc IsAllocated*[TheItemType](this: NCollection_Array1[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsAllocated", dynlib: tkernel.}
proc Assign*[TheItemType](this: var NCollection_Array1[TheItemType];
                         theOther: NCollection_Array1): var NCollection_Array1 {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc Move*[TheItemType](this: var NCollection_Array1[TheItemType];
                       theOther: var NCollection_Array1): var NCollection_Array1 {.
    cdecl, importcpp: "Move", dynlib: tkernel.}
proc First*[TheItemType](this: NCollection_Array1[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkernel.}
proc ChangeFirst*[TheItemType](this: var NCollection_Array1[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeFirst", dynlib: tkernel.}
proc Last*[TheItemType](this: NCollection_Array1[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Last", dynlib: tkernel.}
proc ChangeLast*[TheItemType](this: var NCollection_Array1[TheItemType]): var TheItemType {.
    cdecl, importcpp: "ChangeLast", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_Array1[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollection_Array1[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc `[]`*[TheItemType](this: NCollection_Array1[TheItemType]; theIndex: cint): TheItemType {.
    noSideEffect, cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: var NCollection_Array1[TheItemType];
                              theIndex: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollection_Array1[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#(@)", dynlib: tkernel.}
proc `[]`*[TheItemType](this: var NCollection_Array1[TheItemType]; theIndex: cint): var TheItemType {.
    cdecl, importcpp: "#[@]", dynlib: tkernel.}
proc SetValue*[TheItemType](this: var NCollection_Array1[TheItemType];
                           theIndex: cint; theItem: TheItemType) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc Resize*[TheItemType](this: var NCollection_Array1[TheItemType]; theLower: cint;
                         theUpper: cint; theToCopyData: bool) {.cdecl,
    importcpp: "Resize", dynlib: tkernel.}
proc destroyNCollection_Array1*[TheItemType](
    this: var NCollection_Array1[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_Array1()", dynlib: tkernel.}