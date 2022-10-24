import ncollection_types

##  Created on: 2009-09-23
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

## ! Auxiliary class optimizing creation of array buffer
## ! (using stack allocation for small arrays).



proc newNCollectionLocalArray*[TheItem; Max_Array_Size: static[cint]](
    theSize: csize_t): NCollectionLocalArray[TheItem, Max_Array_Size] {.cdecl,
    constructor, importcpp: "NCollection_LocalArray<\'*0,\'*1>(@)", header: "NCollection_LocalArray.hxx".}
proc newNCollectionLocalArray*[TheItem; Max_Array_Size: static[cint]](): NCollectionLocalArray[
    TheItem, Max_Array_Size] {.cdecl, constructor,
                             importcpp: "NCollection_LocalArray<\'*0,\'*1>(@)",
                             header: "NCollection_LocalArray.hxx".}
proc destroyNCollectionLocalArray*[TheItem; Max_Array_Size: static[cint]](
    this: var NCollectionLocalArray[TheItem, Max_Array_Size]) {.cdecl,
    importcpp: "#.~NCollection_LocalArray()", header: "NCollection_LocalArray.hxx".}
proc allocate*[TheItem; Max_Array_Size: static[cint]](
    this: var NCollectionLocalArray[TheItem, Max_Array_Size]; theSize: csize_t) {.
    cdecl, importcpp: "Allocate", header: "NCollection_LocalArray.hxx".}
proc size*[TheItem; Max_Array_Size: static[cint]](
    this: NCollectionLocalArray[TheItem, Max_Array_Size]): csize_t {.noSideEffect,
    cdecl, importcpp: "Size", header: "NCollection_LocalArray.hxx".}
converter `theItem*`*[TheItem; Max_Array_Size: static[cint]](
    this: NCollectionLocalArray[TheItem, Max_Array_Size]): ptr TheItem {.
    noSideEffect, cdecl, importcpp: "NCollection_LocalArray::operator theItem*",
    header: "NCollection_LocalArray.hxx".}
