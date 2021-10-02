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
  NCollection_Array2*[TheItemType] {.importcpp: "NCollection_Array2<\'0>",
                                    header: "NCollection_Array2.hxx", bycopy.} = object ##
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

  NCollection_Array2value_type*[TheItemType] = TheItemType
  NCollection_Array2Iterator*[TheItemType] {.
      importcpp: "NCollection_Array2<\'0>::Iterator",
      header: "NCollection_Array2.hxx", bycopy.} = object ## ! Empty constructor - for later Init
    ## !< Index of the current item
    ## !< Total amount of items
    ## !< Pointer to the array being iterated


proc constructNCollection_Array2Iterator*[TheItemType](): NCollection_Array2Iterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_Array2<\'*0>::Iterator(@)",
                  dynlib: tkernel.}
proc constructNCollection_Array2Iterator*[TheItemType](
    theArray: NCollection_Array2): NCollection_Array2Iterator[TheItemType] {.cdecl,
    constructor, importcpp: "NCollection_Array2<\'*0>::Iterator(@)",
    dynlib: tkernel.}
proc Init*[TheItemType](this: var NCollection_Array2Iterator[TheItemType];
                       theArray: NCollection_Array2) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc More*[TheItemType](this: NCollection_Array2Iterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc Next*[TheItemType](this: var NCollection_Array2Iterator[TheItemType]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_Array2Iterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: NCollection_Array2Iterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}
proc constructNCollection_Array2*[TheItemType](): NCollection_Array2[TheItemType] {.
    cdecl, constructor, importcpp: "NCollection_Array2<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Array2*[TheItemType](theRowLower: cint;
    theRowUpper: cint; theColLower: cint; theColUpper: cint): NCollection_Array2[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array2<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollection_Array2*[TheItemType](theOther: NCollection_Array2): NCollection_Array2[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array2<\'*0>(@)",
                  dynlib: tkernel.}
proc constructNCollection_Array2*[TheItemType](theBegin: TheItemType;
    theRowLower: cint; theRowUpper: cint; theColLower: cint; theColUpper: cint): NCollection_Array2[
    TheItemType] {.cdecl, constructor, importcpp: "NCollection_Array2<\'*0>(@)",
                  dynlib: tkernel.}
proc Init*[TheItemType](this: var NCollection_Array2[TheItemType];
                       theValue: TheItemType) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc Size*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkernel.}
proc Length*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "Length", dynlib: tkernel.}
proc NbRows*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "NbRows", dynlib: tkernel.}
proc NbColumns*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "NbColumns", dynlib: tkernel.}
proc RowLength*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "RowLength", dynlib: tkernel.}
proc ColLength*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "ColLength", dynlib: tkernel.}
proc LowerRow*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "LowerRow", dynlib: tkernel.}
proc UpperRow*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "UpperRow", dynlib: tkernel.}
proc LowerCol*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "LowerCol", dynlib: tkernel.}
proc UpperCol*[TheItemType](this: NCollection_Array2[TheItemType]): cint {.
    noSideEffect, cdecl, importcpp: "UpperCol", dynlib: tkernel.}
proc IsDeletable*[TheItemType](this: NCollection_Array2[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "IsDeletable", dynlib: tkernel.}
proc Assign*[TheItemType](this: var NCollection_Array2[TheItemType];
                         theOther: NCollection_Array2): var NCollection_Array2 {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc Move*[TheItemType](this: var NCollection_Array2[TheItemType];
                       theOther: var NCollection_Array2): var NCollection_Array2 {.
    cdecl, importcpp: "Move", dynlib: tkernel.}
proc Value*[TheItemType](this: NCollection_Array2[TheItemType]; theRow: cint;
                        theCol: cint): TheItemType {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkernel.}
proc `()`*[TheItemType](this: NCollection_Array2[TheItemType]; theRow: cint;
                       theCol: cint): TheItemType {.noSideEffect, cdecl,
    importcpp: "#(@)", dynlib: tkernel.}
proc ChangeValue*[TheItemType](this: var NCollection_Array2[TheItemType];
                              theRow: cint; theCol: cint): var TheItemType {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc `()`*[TheItemType](this: var NCollection_Array2[TheItemType]; theRow: cint;
                       theCol: cint): var TheItemType {.cdecl, importcpp: "#(@)",
    dynlib: tkernel.}
proc SetValue*[TheItemType](this: var NCollection_Array2[TheItemType]; theRow: cint;
                           theCol: cint; theItem: TheItemType) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc Resize*[TheItemType](this: var NCollection_Array2[TheItemType];
                         theRowLower: cint; theRowUpper: cint; theColLower: cint;
                         theColUpper: cint; theToCopyData: bool) {.cdecl,
    importcpp: "Resize", dynlib: tkernel.}
proc destroyNCollection_Array2*[TheItemType](
    this: var NCollection_Array2[TheItemType]) {.cdecl,
    importcpp: "#.~NCollection_Array2()", dynlib: tkernel.}