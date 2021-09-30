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

discard "forward decl of IMeshTools_CurveTessellator"
type
  BRepMeshEdgeDiscret* {.importcpp: "BRepMesh_EdgeDiscret",
                        header: "BRepMesh_EdgeDiscret.hxx", bycopy.} = object of IMeshToolsModelAlgo ##
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


proc constructBRepMeshEdgeDiscret*(): BRepMeshEdgeDiscret {.constructor,
    importcpp: "BRepMesh_EdgeDiscret(@)", header: "BRepMesh_EdgeDiscret.hxx".}
proc destroyBRepMeshEdgeDiscret*(this: var BRepMeshEdgeDiscret) {.
    importcpp: "#.~BRepMesh_EdgeDiscret()", header: "BRepMesh_EdgeDiscret.hxx".}
proc createEdgeTessellator*(theDEdge: IEdgeHandle;
                           theParameters: IMeshToolsParameters): Handle[
    IMeshToolsCurveTessellator] {.importcpp: "BRepMesh_EdgeDiscret::CreateEdgeTessellator(@)",
                                 header: "BRepMesh_EdgeDiscret.hxx".}
proc createEdgeTessellator*(theDEdge: IEdgeHandle;
                           theOrientation: TopAbsOrientation;
                           theDFace: IFaceHandle;
                           theParameters: IMeshToolsParameters): Handle[
    IMeshToolsCurveTessellator] {.importcpp: "BRepMesh_EdgeDiscret::CreateEdgeTessellator(@)",
                                 header: "BRepMesh_EdgeDiscret.hxx".}
proc createEdgeTessellationExtractor*(theDEdge: IEdgeHandle; theDFace: IFaceHandle): Handle[
    IMeshToolsCurveTessellator] {.importcpp: "BRepMesh_EdgeDiscret::CreateEdgeTessellationExtractor(@)",
                                 header: "BRepMesh_EdgeDiscret.hxx".}
proc `()`*(this: BRepMeshEdgeDiscret; theEdgeIndex: int) {.noSideEffect,
    importcpp: "#(@)", header: "BRepMesh_EdgeDiscret.hxx".}
proc tessellate3d*(theDEdge: IEdgeHandle;
                  theTessellator: Handle[IMeshToolsCurveTessellator];
                  theUpdateEnds: StandardBoolean) {.
    importcpp: "BRepMesh_EdgeDiscret::Tessellate3d(@)",
    header: "BRepMesh_EdgeDiscret.hxx".}
proc tessellate2d*(theDEdge: IEdgeHandle; theUpdateEnds: StandardBoolean) {.
    importcpp: "BRepMesh_EdgeDiscret::Tessellate2d(@)",
    header: "BRepMesh_EdgeDiscret.hxx".}
type
  BRepMeshEdgeDiscretbaseType* = IMeshToolsModelAlgo

proc getTypeName*(): cstring {.importcpp: "BRepMesh_EdgeDiscret::get_type_name(@)",
                            header: "BRepMesh_EdgeDiscret.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_EdgeDiscret::get_type_descriptor(@)",
    header: "BRepMesh_EdgeDiscret.hxx".}
proc dynamicType*(this: BRepMeshEdgeDiscret): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_EdgeDiscret.hxx".}