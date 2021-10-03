##  Created on: 2014-04-15
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Helper class that allows to use NCollection iterators as STL iterators.
## ! NCollection iterator can be extended to STL iterator of any category by
## ! adding necessary methods: STL forward iterator requires IsEqual method,
## ! STL bidirectional iterator requires Previous method, and STL random access
## ! iterator requires Offset and Differ methods. See NCollection_Vector as
## ! example of declaring custom STL iterators.

type
  NCollectionStlIterator*[Category; BaseIterator; ItemType;
                          IsConstant: static[bool]] {.
      importcpp: "NCollection_StlIterator<\'0,\'1,\'2,\'3>",
      header: "NCollection_StlIterator.hxx", bycopy.} = object ## ! Default constructor
    myIterator* {.importc: "myIterator".}: BaseIterator


proc constructNCollectionStlIterator*[Category; BaseIterator; ItemType;
                                     IsConstant: static[bool]](): NCollectionStlIterator[
    Category, BaseIterator, ItemType, IsConstant] {.cdecl, constructor,
    importcpp: "NCollection_StlIterator<\'*0,\'*1,\'*2,\'*3>(@)", dynlib: tkernel.}
proc constructNCollectionStlIterator*[Category; BaseIterator; ItemType;
                                     IsConstant: static[bool]](
    theIterator: BaseIterator): NCollectionStlIterator[Category, BaseIterator,
    ItemType, IsConstant] {.cdecl, constructor, importcpp: "NCollection_StlIterator<\'*0,\'*1,\'*2,\'*3>(@)",
                          dynlib: tkernel.}
proc constructNCollectionStlIterator*[Category; BaseIterator; ItemType;
                                     IsConstant: static[bool]](theIterator: NCollectionStlIterator[
    Category, BaseIterator, ItemType, False]): NCollectionStlIterator[Category,
    BaseIterator, ItemType, IsConstant] {.cdecl, constructor, importcpp: "NCollection_StlIterator<\'*0,\'*1,\'*2,\'*3>(@)",
                                       dynlib: tkernel.}
proc `iterator`*[Category; BaseIterator; ItemType; IsConstant: static[bool]](
    this: NCollectionStlIterator[Category, BaseIterator, ItemType, IsConstant]): BaseIterator {.
    noSideEffect, cdecl, importcpp: "Iterator", dynlib: tkernel.}
proc changeIterator*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: var NCollectionStlIterator[
    Category, BaseIterator, ItemType, IsConstant]): var BaseIterator {.cdecl,
    importcpp: "ChangeIterator", dynlib: tkernel.}
  ##  Note: Here we use SFINAE (Substitution failure is not an error) to choose
  ## ! Test for equality