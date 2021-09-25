##  Created on: 1993-01-11
##  Created by: SIVA
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

type
  IGESSolidHArray1OfVertexList* {.importcpp: "IGESSolid_HArray1OfVertexList",
                                 header: "IGESSolid_HArray1OfVertexList.hxx",
                                 bycopy.} = object of IGESSolidArray1OfVertexList


proc constructIGESSolidHArray1OfVertexList*(theLower: int; theUpper: int): IGESSolidHArray1OfVertexList {.
    constructor, importcpp: "IGESSolid_HArray1OfVertexList(@)",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
proc constructIGESSolidHArray1OfVertexList*(theLower: int; theUpper: int;
    theValue: ValueType): IGESSolidHArray1OfVertexList {.constructor,
    importcpp: "IGESSolid_HArray1OfVertexList(@)",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
proc constructIGESSolidHArray1OfVertexList*(theOther: IGESSolidArray1OfVertexList): IGESSolidHArray1OfVertexList {.
    constructor, importcpp: "IGESSolid_HArray1OfVertexList(@)",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
proc array1*(this: IGESSolidHArray1OfVertexList): IGESSolidArray1OfVertexList {.
    noSideEffect, importcpp: "Array1", header: "IGESSolid_HArray1OfVertexList.hxx".}
proc changeArray1*(this: var IGESSolidHArray1OfVertexList): var IGESSolidArray1OfVertexList {.
    importcpp: "ChangeArray1", header: "IGESSolid_HArray1OfVertexList.hxx".}
type
  IGESSolidHArray1OfVertexListbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESSolid_HArray1OfVertexList::get_type_name(@)",
                            header: "IGESSolid_HArray1OfVertexList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_HArray1OfVertexList::get_type_descriptor(@)",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
proc dynamicType*(this: IGESSolidHArray1OfVertexList): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
