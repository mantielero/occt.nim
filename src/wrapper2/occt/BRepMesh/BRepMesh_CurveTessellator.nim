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
  ../IMeshTools/IMeshTools_CurveTessellator,
  ../GCPnts/GCPnts_TangentialDeflection, ../TopoDS/TopoDS_Vertex,
  ../BRepAdaptor/BRepAdaptor_Curve, ../IMeshData/IMeshData_Types

discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom2d_Curve"
discard "forward decl of IMeshTools_Parameters"
type
  BRepMesh_CurveTessellator* {.importcpp: "BRepMesh_CurveTessellator",
                              header: "BRepMesh_CurveTessellator.hxx", bycopy.} = object of IMeshTools_CurveTessellator ##
                                                                                                                 ## !
                                                                                                                 ## Constructor.
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## Performs
                                                                                                                 ## initialization
                                                                                                                 ## of
                                                                                                                 ## this
                                                                                                                 ## tool.


proc constructBRepMesh_CurveTessellator*(theEdge: IEdgeHandle;
                                        theParameters: IMeshTools_Parameters): BRepMesh_CurveTessellator {.
    constructor, importcpp: "BRepMesh_CurveTessellator(@)",
    header: "BRepMesh_CurveTessellator.hxx".}
proc constructBRepMesh_CurveTessellator*(theEdge: IEdgeHandle;
                                        theOrientation: TopAbs_Orientation;
                                        theFace: IFaceHandle;
                                        theParameters: IMeshTools_Parameters): BRepMesh_CurveTessellator {.
    constructor, importcpp: "BRepMesh_CurveTessellator(@)",
    header: "BRepMesh_CurveTessellator.hxx".}
proc destroyBRepMesh_CurveTessellator*(this: var BRepMesh_CurveTessellator) {.
    importcpp: "#.~BRepMesh_CurveTessellator()",
    header: "BRepMesh_CurveTessellator.hxx".}
proc PointsNb*(this: BRepMesh_CurveTessellator): Standard_Integer {.noSideEffect,
    importcpp: "PointsNb", header: "BRepMesh_CurveTessellator.hxx".}
proc Value*(this: BRepMesh_CurveTessellator; theIndex: Standard_Integer;
           thePoint: var gp_Pnt; theParameter: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "Value", header: "BRepMesh_CurveTessellator.hxx".}
type
  BRepMesh_CurveTessellatorbase_type* = IMeshTools_CurveTessellator

proc get_type_name*(): cstring {.importcpp: "BRepMesh_CurveTessellator::get_type_name(@)",
                              header: "BRepMesh_CurveTessellator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_CurveTessellator::get_type_descriptor(@)",
    header: "BRepMesh_CurveTessellator.hxx".}
proc DynamicType*(this: BRepMesh_CurveTessellator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepMesh_CurveTessellator.hxx".}