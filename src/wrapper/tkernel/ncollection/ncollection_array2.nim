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

##  *********************************************** Template for Array2 class
## *
##  Purpose:   The class Array2 represents bi-dimensional arrays
##             of fixed size known at run time.
##             The ranges of indices are user defined.
##
##             Class allocates one 1D array storing full data (all Rows and Columns)
##             and extra 1D array storing pointers to each Row.
##
##  Warning:   Programs clients of such class must be independent
##             of the range of the first element. Then, a C++ for
##             loop must be written like this
##
##             for (i = A.LowerRow(); i <= A.UpperRow(); i++)
##               for (j = A.LowerCol(); j <= A.UpperCol(); j++)
##

type
  NCollectionArray2*[TheItemType] {.importcpp: "NCollection_Array2<\'0>",
                                   header: "NCollection_Array2.hxx", bycopy.} = object of RootObj ##
                                                                                  ## !
                                                                                  ## STL-compliant
                                                                                  ## typedef
                                                                                  ## for
                                                                                  ## value
                                                                                  ## type
                                                                                  ##
                                                                                  ## ****************
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
                                                                                  ## -----------
                                                                                  ## PRIVATE
                                                                                  ## METHODS
                                                                                  ## -----------
                                                                                  ##
                                                                                  ## !
                                                                                  ## Allocate
                                                                                  ## memory
                                                                                  ## for
                                                                                  ## the
                                                                                  ## array,
                                                                                  ## set
                                                                                  ## up
                                                                                  ## indirection
                                                                                  ## table
                                                                                  ##
                                                                                  ## ----------
                                                                                  ## PROTECTED
                                                                                  ## FIELDS
                                                                                  ## -----------
    ## !< Pointer to the row pointers table
    ## !< Pointer to the memory array
    ## !< Flag showing who allocated the array
    ##  ----------- FRIEND CLASSES ------------

  NCollectionArray2valueType*[TheItemType] = TheItemType
  NCollectionArray2Iterator*[TheItemType] {.
      importcpp: "NCollection_Array2<\'0>::Iterator",
      header: "NCollection_Array2.hxx", bycopy.} = object of RootObj ## ! Empty constructor - for later Init
    ## !< Index of the current item
    ## !< Total amount of items
    ## !< Pointer to the array being iterated


proc newNCollectionArray2Iterator*[TheItemType](): NCollectionArray2Iterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Array2<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc newNCollectionArray2Iterator*[TheItemType](theArray: NCollectionArray2): NCollectionArray2Iterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Array2<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc init*[TheItemType](this: var NCollectionArray2Iterator[TheItemType];
                       theArray: NCollectionArray2) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc more*[TheItemType](this: NCollectionArray2Iterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheItemType](this: var NCollectionArray2Iterator[TheItemType]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionArray2Iterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheItemType](this: NCollectionArray2Iterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc newNCollectionArray2*[TheItemType](): NCollectionArray2[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Array2<\'*0>(@)", dynlib: tkernel.}
proc newNCollectionArray2*[TheItemType](theRowLower: cint; theRowUpper: cint;
                                       theColLower: cint; theColUpper: cint): NCollectionArray2[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array2<\'*0>(@)",
                  dynlib: tkernel.}
proc newNCollectionArray2*[TheItemType](theOther: NCollectionArray2): NCollectionArray2[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array2<\'*0>(@)",
                  dynlib: tkernel.}
proc newNCollectionArray2*[TheItemType](theBegin: TheItemType; theRowLower: cint;
                                       theRowUpper: cint; theColLower: cint;
                                       theColUpper: cint): NCollectionArray2[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array2<\'*0>(@)",
                  dynlib: tkernel.}
proc init*[TheItemType](this: var NCollectionArray2[TheItemType];
                       theValue: TheItemType) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc size*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
proc length*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", dynlib: tkernel.}
proc nbRows*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "NbRows", dynlib: tkernel.}
proc nbColumns*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "NbColumns", dynlib: tkernel.}
proc rowLength*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "RowLength", dynlib: tkernel.}
proc colLength*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "ColLength", dynlib: tkernel.}
proc lowerRow*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "LowerRow", dynlib: tkernel.}
proc upperRow*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "UpperRow", dynlib: tkernel.}
proc lowerCol*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "LowerCol", dynlib: tkernel.}
proc upperCol*[TheItemType](this: NCollectionArray2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "UpperCol", dynlib: tkernel.}
proc isDeletable*[TheItemType](this: NCollectionArray2[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsDeletable", dynlib: tkernel.}
proc assign*[TheItemType](this: var NCollectionArray2[TheItemType];
                         theOther: NCollectionArray2): var NCollectionArray2 {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc move*[TheItemType](this: var NCollectionArray2[TheItemType];
                       theOther: var NCollectionArray2): var NCollectionArray2 {.
    cdecl, importcpp: "Move", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionArray2[TheItemType]; theRow: cint;
#                        theCol: cint): TheItemType {.noSideEffect, cdecl,
#    importcpp: "Value", dynlib: tkernel.}
#proc `()`*[TheItemType](this: NCollectionArray2[TheItemType]; theRow: cint;
                       theCol: cint): TheItemType {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkernel.}
proc changeValue*[TheItemType](this: var NCollectionArray2[TheItemType];
#                              theRow: cint; theCol: cint): var TheItemType {.cdecl,
#    importcpp: "ChangeValue", dynlib: tkernel.}
#proc `()`*[TheItemType](this: var NCollectionArray2[TheItemType]; theRow: cint;
                       theCol: cint): var TheItemType {.cdecl, importcpp: "#(@)",
    dynlib: tkernel.}
proc setValue*[TheItemType](this: var NCollectionArray2[TheItemType]; theRow: cint;
                           theCol: cint; theItem: TheItemType) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc resize*[TheItemType](this: var NCollectionArray2[TheItemType];
                         theRowLower: cint; theRowUpper: cint; theColLower: cint;
                         theColUpper: cint; theToCopyData: bool) {.cdecl,
    importcpp: "Resize", dynlib: tkernel.}
proc destroyNCollectionArray2*[TheItemType](
    this: var NCollectionArray2[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_Array2()", dynlib: tkernel.}