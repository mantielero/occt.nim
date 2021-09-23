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
  ../IMeshTools/IMeshTools_ModelAlgo, ../IMeshTools/IMeshTools_Parameters,
  ../IMeshData/IMeshData_Types

discard "forward decl of IMeshTools_CurveTessellator"
type
  BRepMesh_EdgeDiscret* {.importcpp: "BRepMesh_EdgeDiscret",
                         header: "BRepMesh_EdgeDiscret.hxx", bycopy.} = object of IMeshTools_ModelAlgo ##
                                                                                                ## !
                                                                                                ## Constructor.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Performs
                                                                                                ## processing
                                                                                                ## of
                                                                                                ## edges
                                                                                                ## of
                                                                                                ## the
                                                                                                ## given
                                                                                                ## model.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Checks
                                                                                                ## existing
                                                                                                ## discretization
                                                                                                ## of
                                                                                                ## the
                                                                                                ## edge
                                                                                                ## and
                                                                                                ## updates
                                                                                                ## data
                                                                                                ## model.


proc constructBRepMesh_EdgeDiscret*(): BRepMesh_EdgeDiscret {.constructor,
    importcpp: "BRepMesh_EdgeDiscret(@)", header: "BRepMesh_EdgeDiscret.hxx".}
proc destroyBRepMesh_EdgeDiscret*(this: var BRepMesh_EdgeDiscret) {.
    importcpp: "#.~BRepMesh_EdgeDiscret()", header: "BRepMesh_EdgeDiscret.hxx".}
proc CreateEdgeTessellator*(theDEdge: IEdgeHandle;
                           theParameters: IMeshTools_Parameters): handle[
    IMeshTools_CurveTessellator] {.importcpp: "BRepMesh_EdgeDiscret::CreateEdgeTessellator(@)",
                                  header: "BRepMesh_EdgeDiscret.hxx".}
proc CreateEdgeTessellator*(theDEdge: IEdgeHandle;
                           theOrientation: TopAbs_Orientation;
                           theDFace: IFaceHandle;
                           theParameters: IMeshTools_Parameters): handle[
    IMeshTools_CurveTessellator] {.importcpp: "BRepMesh_EdgeDiscret::CreateEdgeTessellator(@)",
                                  header: "BRepMesh_EdgeDiscret.hxx".}
proc CreateEdgeTessellationExtractor*(theDEdge: IEdgeHandle; theDFace: IFaceHandle): handle[
    IMeshTools_CurveTessellator] {.importcpp: "BRepMesh_EdgeDiscret::CreateEdgeTessellationExtractor(@)",
                                  header: "BRepMesh_EdgeDiscret.hxx".}
proc `()`*(this: BRepMesh_EdgeDiscret; theEdgeIndex: Standard_Integer) {.
    noSideEffect, importcpp: "#(@)", header: "BRepMesh_EdgeDiscret.hxx".}
proc Tessellate3d*(theDEdge: IEdgeHandle;
                  theTessellator: handle[IMeshTools_CurveTessellator];
                  theUpdateEnds: Standard_Boolean) {.
    importcpp: "BRepMesh_EdgeDiscret::Tessellate3d(@)",
    header: "BRepMesh_EdgeDiscret.hxx".}
proc Tessellate2d*(theDEdge: IEdgeHandle; theUpdateEnds: Standard_Boolean) {.
    importcpp: "BRepMesh_EdgeDiscret::Tessellate2d(@)",
    header: "BRepMesh_EdgeDiscret.hxx".}
type
  BRepMesh_EdgeDiscretbase_type* = IMeshTools_ModelAlgo

proc get_type_name*(): cstring {.importcpp: "BRepMesh_EdgeDiscret::get_type_name(@)",
                              header: "BRepMesh_EdgeDiscret.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_EdgeDiscret::get_type_descriptor(@)",
    header: "BRepMesh_EdgeDiscret.hxx".}
proc DynamicType*(this: BRepMesh_EdgeDiscret): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_EdgeDiscret.hxx".}