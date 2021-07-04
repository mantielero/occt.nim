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

import
  IGESSolid_VertexList, IGESSolid_Array1OfVertexList,
  ../NCollection/NCollection_DefineHArray1

type
  IGESSolid_HArray1OfVertexList* {.importcpp: "IGESSolid_HArray1OfVertexList",
                                  header: "IGESSolid_HArray1OfVertexList.hxx",
                                  bycopy.} = object of IGESSolid_Array1OfVertexList


proc constructIGESSolid_HArray1OfVertexList*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESSolid_HArray1OfVertexList {.constructor,
    importcpp: "IGESSolid_HArray1OfVertexList(@)",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
proc constructIGESSolid_HArray1OfVertexList*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESSolid_HArray1OfVertexList {.
    constructor, importcpp: "IGESSolid_HArray1OfVertexList(@)",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
proc constructIGESSolid_HArray1OfVertexList*(
    theOther: IGESSolid_Array1OfVertexList): IGESSolid_HArray1OfVertexList {.
    constructor, importcpp: "IGESSolid_HArray1OfVertexList(@)",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
proc Array1*(this: IGESSolid_HArray1OfVertexList): IGESSolid_Array1OfVertexList {.
    noSideEffect, importcpp: "Array1", header: "IGESSolid_HArray1OfVertexList.hxx".}
proc ChangeArray1*(this: var IGESSolid_HArray1OfVertexList): var IGESSolid_Array1OfVertexList {.
    importcpp: "ChangeArray1", header: "IGESSolid_HArray1OfVertexList.hxx".}
type
  IGESSolid_HArray1OfVertexListbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESSolid_HArray1OfVertexList::get_type_name(@)",
                              header: "IGESSolid_HArray1OfVertexList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_HArray1OfVertexList::get_type_descriptor(@)",
    header: "IGESSolid_HArray1OfVertexList.hxx".}
proc DynamicType*(this: IGESSolid_HArray1OfVertexList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_HArray1OfVertexList.hxx".}