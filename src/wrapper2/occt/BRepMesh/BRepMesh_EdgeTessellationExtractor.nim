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

## ! Auxiliary class implements functionality retrieving tessellated
## ! representation of an edge stored in polygon.

type
  BRepMeshEdgeTessellationExtractor* {.importcpp: "BRepMesh_EdgeTessellationExtractor", header: "BRepMesh_EdgeTessellationExtractor.hxx",
                                      bycopy.} = object of IMeshToolsCurveTessellator ##
                                                                                 ## !
                                                                                 ## Constructor.


proc constructBRepMeshEdgeTessellationExtractor*(theEdge: IEdgeHandle;
    theFace: IFaceHandle): BRepMeshEdgeTessellationExtractor {.constructor,
    importcpp: "BRepMesh_EdgeTessellationExtractor(@)",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc destroyBRepMeshEdgeTessellationExtractor*(
    this: var BRepMeshEdgeTessellationExtractor) {.
    importcpp: "#.~BRepMesh_EdgeTessellationExtractor()",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc pointsNb*(this: BRepMeshEdgeTessellationExtractor): StandardInteger {.
    noSideEffect, importcpp: "PointsNb",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc value*(this: BRepMeshEdgeTessellationExtractor; theIndex: StandardInteger;
           thePoint: var GpPnt; theParameter: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Value",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
type
  BRepMeshEdgeTessellationExtractorbaseType* = IMeshToolsCurveTessellator

proc getTypeName*(): cstring {.importcpp: "BRepMesh_EdgeTessellationExtractor::get_type_name(@)",
                            header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_EdgeTessellationExtractor::get_type_descriptor(@)",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}
proc dynamicType*(this: BRepMeshEdgeTessellationExtractor): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_EdgeTessellationExtractor.hxx".}

