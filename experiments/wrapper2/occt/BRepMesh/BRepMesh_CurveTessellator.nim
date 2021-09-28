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

discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom2d_Curve"
discard "forward decl of IMeshTools_Parameters"
type
  BRepMeshCurveTessellator* {.importcpp: "BRepMesh_CurveTessellator",
                             header: "BRepMesh_CurveTessellator.hxx", bycopy.} = object of IMeshToolsCurveTessellator ##
                                                                                                               ## !
                                                                                                               ## Constructor.
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## Performs
                                                                                                               ## initialization
                                                                                                               ## of
                                                                                                               ## this
                                                                                                               ## tool.


proc constructBRepMeshCurveTessellator*(theEdge: IEdgeHandle;
                                       theParameters: IMeshToolsParameters): BRepMeshCurveTessellator {.
    constructor, importcpp: "BRepMesh_CurveTessellator(@)",
    header: "BRepMesh_CurveTessellator.hxx".}
proc constructBRepMeshCurveTessellator*(theEdge: IEdgeHandle;
                                       theOrientation: TopAbsOrientation;
                                       theFace: IFaceHandle;
                                       theParameters: IMeshToolsParameters): BRepMeshCurveTessellator {.
    constructor, importcpp: "BRepMesh_CurveTessellator(@)",
    header: "BRepMesh_CurveTessellator.hxx".}
proc destroyBRepMeshCurveTessellator*(this: var BRepMeshCurveTessellator) {.
    importcpp: "#.~BRepMesh_CurveTessellator()",
    header: "BRepMesh_CurveTessellator.hxx".}
proc pointsNb*(this: BRepMeshCurveTessellator): cint {.noSideEffect,
    importcpp: "PointsNb", header: "BRepMesh_CurveTessellator.hxx".}
proc value*(this: BRepMeshCurveTessellator; theIndex: cint; thePoint: var Pnt;
           theParameter: var cfloat): bool {.noSideEffect, importcpp: "Value",
    header: "BRepMesh_CurveTessellator.hxx".}
type
  BRepMeshCurveTessellatorbaseType* = IMeshToolsCurveTessellator

proc getTypeName*(): cstring {.importcpp: "BRepMesh_CurveTessellator::get_type_name(@)",
                            header: "BRepMesh_CurveTessellator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_CurveTessellator::get_type_descriptor(@)",
    header: "BRepMesh_CurveTessellator.hxx".}
proc dynamicType*(this: BRepMeshCurveTessellator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepMesh_CurveTessellator.hxx".}

























