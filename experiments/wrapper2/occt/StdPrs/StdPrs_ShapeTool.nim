##  Created on: 1993-01-27
##  Created by: Jean-Louis Frenkel
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

discard "forward decl of Bnd_Box"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Polygon3D"
type
  StdPrsShapeTool* {.importcpp: "StdPrs_ShapeTool", header: "StdPrs_ShapeTool.hxx",
                    bycopy.} = object ## ! Constructs the tool and initializes it using theShape and theAllVertices
                                   ## ! (optional) arguments. By default, only isolated and internal vertices are considered,
                                   ## ! however if theAllVertices argument is equal to True, all shape's vertices are taken into account.


proc constructStdPrsShapeTool*(theShape: TopoDS_Shape; theAllVertices: bool = false): StdPrsShapeTool {.
    constructor, importcpp: "StdPrs_ShapeTool(@)", header: "StdPrs_ShapeTool.hxx".}
proc initFace*(this: var StdPrsShapeTool) {.importcpp: "InitFace",
                                        header: "StdPrs_ShapeTool.hxx".}
proc moreFace*(this: StdPrsShapeTool): bool {.noSideEffect, importcpp: "MoreFace",
    header: "StdPrs_ShapeTool.hxx".}
proc nextFace*(this: var StdPrsShapeTool) {.importcpp: "NextFace",
                                        header: "StdPrs_ShapeTool.hxx".}
proc getFace*(this: StdPrsShapeTool): TopoDS_Face {.noSideEffect,
    importcpp: "GetFace", header: "StdPrs_ShapeTool.hxx".}
proc faceBound*(this: StdPrsShapeTool): BndBox {.noSideEffect,
    importcpp: "FaceBound", header: "StdPrs_ShapeTool.hxx".}
proc isPlanarFace*(this: StdPrsShapeTool): bool {.noSideEffect,
    importcpp: "IsPlanarFace", header: "StdPrs_ShapeTool.hxx".}
proc initCurve*(this: var StdPrsShapeTool) {.importcpp: "InitCurve",
    header: "StdPrs_ShapeTool.hxx".}
proc moreCurve*(this: StdPrsShapeTool): bool {.noSideEffect, importcpp: "MoreCurve",
    header: "StdPrs_ShapeTool.hxx".}
proc nextCurve*(this: var StdPrsShapeTool) {.importcpp: "NextCurve",
    header: "StdPrs_ShapeTool.hxx".}
proc getCurve*(this: StdPrsShapeTool): TopoDS_Edge {.noSideEffect,
    importcpp: "GetCurve", header: "StdPrs_ShapeTool.hxx".}
proc curveBound*(this: StdPrsShapeTool): BndBox {.noSideEffect,
    importcpp: "CurveBound", header: "StdPrs_ShapeTool.hxx".}
proc neighbours*(this: StdPrsShapeTool): int {.noSideEffect, importcpp: "Neighbours",
    header: "StdPrs_ShapeTool.hxx".}
proc facesOfEdge*(this: StdPrsShapeTool): Handle[TopToolsHSequenceOfShape] {.
    noSideEffect, importcpp: "FacesOfEdge", header: "StdPrs_ShapeTool.hxx".}
proc initVertex*(this: var StdPrsShapeTool) {.importcpp: "InitVertex",
    header: "StdPrs_ShapeTool.hxx".}
proc moreVertex*(this: StdPrsShapeTool): bool {.noSideEffect,
    importcpp: "MoreVertex", header: "StdPrs_ShapeTool.hxx".}
proc nextVertex*(this: var StdPrsShapeTool) {.importcpp: "NextVertex",
    header: "StdPrs_ShapeTool.hxx".}
proc getVertex*(this: StdPrsShapeTool): TopoDS_Vertex {.noSideEffect,
    importcpp: "GetVertex", header: "StdPrs_ShapeTool.hxx".}
proc hasSurface*(this: StdPrsShapeTool): bool {.noSideEffect,
    importcpp: "HasSurface", header: "StdPrs_ShapeTool.hxx".}
proc currentTriangulation*(this: StdPrsShapeTool; l: var TopLocLocation): Handle[
    PolyTriangulation] {.noSideEffect, importcpp: "CurrentTriangulation",
                        header: "StdPrs_ShapeTool.hxx".}
proc hasCurve*(this: StdPrsShapeTool): bool {.noSideEffect, importcpp: "HasCurve",
    header: "StdPrs_ShapeTool.hxx".}
proc polygonOnTriangulation*(this: StdPrsShapeTool;
                            indices: var Handle[PolyPolygonOnTriangulation];
                            t: var Handle[PolyTriangulation]; l: var TopLocLocation) {.
    noSideEffect, importcpp: "PolygonOnTriangulation",
    header: "StdPrs_ShapeTool.hxx".}
proc polygon3D*(this: StdPrsShapeTool; l: var TopLocLocation): Handle[PolyPolygon3D] {.
    noSideEffect, importcpp: "Polygon3D", header: "StdPrs_ShapeTool.hxx".}
proc isPlanarFace*(theFace: TopoDS_Face): bool {.
    importcpp: "StdPrs_ShapeTool::IsPlanarFace(@)", header: "StdPrs_ShapeTool.hxx".}
