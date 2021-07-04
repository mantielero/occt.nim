##  Created on: 2016-04-19
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  ../IMeshTools/IMeshTools_CurveTessellator, ../IMeshData/IMeshData_Types,
  BRepMesh_EdgeParameterProvider, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfInteger, ../TopLoc/TopLoc_Location

## ! Auxiliary class implements functionality retrieving tessellated
## ! representation of an edge stored in polygon.

type
  BRepMesh_EdgeTessellationExtractor* {.importcpp: "BRepMesh_EdgeTessellationExtractor", header: "BRepMesh_EdgeTessellationExtractor.hxx",
                                       bycopy.} = object of IMeshTools_CurveTessellator ##
                                                                                   ## !
                                                                                   ## Constructor.


proc constructBRepMesh_EdgeTessellationExtractor*(theEdge: IEdgeHandle;
    theFace: IFaceHandle): BRepMesh_EdgeTessellationExtractor {.constructor,
    importcpp: "BRepMesh_EdgeTessellationExtractor(@)",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc destroyBRepMesh_EdgeTessellationExtractor*(
    this: var BRepMesh_EdgeTessellationExtractor) {.
    importcpp: "#.~BRepMesh_EdgeTessellationExtractor()",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc PointsNb*(this: BRepMesh_EdgeTessellationExtractor): Standard_Integer {.
    noSideEffect, importcpp: "PointsNb",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc Value*(this: BRepMesh_EdgeTessellationExtractor; theIndex: Standard_Integer;
           thePoint: var gp_Pnt; theParameter: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "Value",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
type
  BRepMesh_EdgeTessellationExtractorbase_type* = IMeshTools_CurveTessellator

proc get_type_name*(): cstring {.importcpp: "BRepMesh_EdgeTessellationExtractor::get_type_name(@)",
                              header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_EdgeTessellationExtractor::get_type_descriptor(@)",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc DynamicType*(this: BRepMesh_EdgeTessellationExtractor): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}