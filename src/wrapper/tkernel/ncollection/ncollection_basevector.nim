import ncollection_types

##  Created on: 2002-04-24
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

##  this value defines the number of blocks that are reserved
##  when the capacity of vector is increased

proc getCapacity*(theIncrement: cint): cint {.cdecl.} =
  discard

## ! Class NCollection_BaseVector - base for NCollection_Vector template



proc clear*(this: var NCollectionBaseVector) {.cdecl, importcpp: "Clear",
    header: "NCollection_BaseVector.hxx".}
proc setIncrement*(this: var NCollectionBaseVector; aIncrement: cint) {.cdecl,
    importcpp: "SetIncrement", header: "NCollection_BaseVector.hxx".}
proc allocator*(this: NCollectionBaseVector): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", header: "NCollection_BaseVector.hxx".}
