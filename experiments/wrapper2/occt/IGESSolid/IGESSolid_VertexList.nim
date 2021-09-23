##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TColgp/TColgp_HArray1OfXYZ,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESSolid_VertexList"
discard "forward decl of IGESSolid_VertexList"
type
  Handle_IGESSolid_VertexList* = handle[IGESSolid_VertexList]

## ! defines VertexList, Type <502> Form Number <1>
## ! in package IGESSolid
## ! A vertex is a point in R3. A vertex is the bound of an
## ! edge and can participate in the bounds of a face.
## ! It contains one or more vertices.

type
  IGESSolid_VertexList* {.importcpp: "IGESSolid_VertexList",
                         header: "IGESSolid_VertexList.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_VertexList*(): IGESSolid_VertexList {.constructor,
    importcpp: "IGESSolid_VertexList(@)", header: "IGESSolid_VertexList.hxx".}
proc Init*(this: var IGESSolid_VertexList; vertices: handle[TColgp_HArray1OfXYZ]) {.
    importcpp: "Init", header: "IGESSolid_VertexList.hxx".}
proc NbVertices*(this: IGESSolid_VertexList): Standard_Integer {.noSideEffect,
    importcpp: "NbVertices", header: "IGESSolid_VertexList.hxx".}
proc Vertex*(this: IGESSolid_VertexList; num: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Vertex", header: "IGESSolid_VertexList.hxx".}
type
  IGESSolid_VertexListbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_VertexList::get_type_name(@)",
                              header: "IGESSolid_VertexList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_VertexList::get_type_descriptor(@)",
    header: "IGESSolid_VertexList.hxx".}
proc DynamicType*(this: IGESSolid_VertexList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_VertexList.hxx".}