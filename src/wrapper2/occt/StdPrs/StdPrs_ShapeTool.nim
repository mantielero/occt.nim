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

import
  ../Standard/Standard_DefineAlloc, ../TopoDS/TopoDS, ../TopoDS/TopoDS_Edge,
  ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Vertex,
  ../TopExp/TopExp_Explorer,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_IndexedMapOfShape, ../TopTools/TopTools_HSequenceOfShape

discard "forward decl of Bnd_Box"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Polygon3D"
type
  StdPrs_ShapeTool* {.importcpp: "StdPrs_ShapeTool",
                     header: "StdPrs_ShapeTool.hxx", bycopy.} = object ## ! Constructs the tool and initializes it using theShape and theAllVertices
                                                                  ## ! (optional) arguments. By default, only isolated and internal vertices are considered,
                                                                  ## ! however if theAllVertices argument is equal to True, all shape's vertices are taken into account.


proc constructStdPrs_ShapeTool*(theShape: TopoDS_Shape; theAllVertices: Standard_Boolean = Standard_False): StdPrs_ShapeTool {.
    constructor, importcpp: "StdPrs_ShapeTool(@)", header: "StdPrs_ShapeTool.hxx".}
proc InitFace*(this: var StdPrs_ShapeTool) {.importcpp: "InitFace",
    header: "StdPrs_ShapeTool.hxx".}
proc MoreFace*(this: StdPrs_ShapeTool): Standard_Boolean {.noSideEffect,
    importcpp: "MoreFace", header: "StdPrs_ShapeTool.hxx".}
proc NextFace*(this: var StdPrs_ShapeTool) {.importcpp: "NextFace",
    header: "StdPrs_ShapeTool.hxx".}
proc GetFace*(this: StdPrs_ShapeTool): TopoDS_Face {.noSideEffect,
    importcpp: "GetFace", header: "StdPrs_ShapeTool.hxx".}
proc FaceBound*(this: StdPrs_ShapeTool): Bnd_Box {.noSideEffect,
    importcpp: "FaceBound", header: "StdPrs_ShapeTool.hxx".}
proc IsPlanarFace*(this: StdPrs_ShapeTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsPlanarFace", header: "StdPrs_ShapeTool.hxx".}
proc InitCurve*(this: var StdPrs_ShapeTool) {.importcpp: "InitCurve",
    header: "StdPrs_ShapeTool.hxx".}
proc MoreCurve*(this: StdPrs_ShapeTool): Standard_Boolean {.noSideEffect,
    importcpp: "MoreCurve", header: "StdPrs_ShapeTool.hxx".}
proc NextCurve*(this: var StdPrs_ShapeTool) {.importcpp: "NextCurve",
    header: "StdPrs_ShapeTool.hxx".}
proc GetCurve*(this: StdPrs_ShapeTool): TopoDS_Edge {.noSideEffect,
    importcpp: "GetCurve", header: "StdPrs_ShapeTool.hxx".}
proc CurveBound*(this: StdPrs_ShapeTool): Bnd_Box {.noSideEffect,
    importcpp: "CurveBound", header: "StdPrs_ShapeTool.hxx".}
proc Neighbours*(this: StdPrs_ShapeTool): Standard_Integer {.noSideEffect,
    importcpp: "Neighbours", header: "StdPrs_ShapeTool.hxx".}
proc FacesOfEdge*(this: StdPrs_ShapeTool): handle[TopTools_HSequenceOfShape] {.
    noSideEffect, importcpp: "FacesOfEdge", header: "StdPrs_ShapeTool.hxx".}
proc InitVertex*(this: var StdPrs_ShapeTool) {.importcpp: "InitVertex",
    header: "StdPrs_ShapeTool.hxx".}
proc MoreVertex*(this: StdPrs_ShapeTool): Standard_Boolean {.noSideEffect,
    importcpp: "MoreVertex", header: "StdPrs_ShapeTool.hxx".}
proc NextVertex*(this: var StdPrs_ShapeTool) {.importcpp: "NextVertex",
    header: "StdPrs_ShapeTool.hxx".}
proc GetVertex*(this: StdPrs_ShapeTool): TopoDS_Vertex {.noSideEffect,
    importcpp: "GetVertex", header: "StdPrs_ShapeTool.hxx".}
proc HasSurface*(this: StdPrs_ShapeTool): Standard_Boolean {.noSideEffect,
    importcpp: "HasSurface", header: "StdPrs_ShapeTool.hxx".}
proc CurrentTriangulation*(this: StdPrs_ShapeTool; l: var TopLoc_Location): handle[
    Poly_Triangulation] {.noSideEffect, importcpp: "CurrentTriangulation",
                         header: "StdPrs_ShapeTool.hxx".}
proc HasCurve*(this: StdPrs_ShapeTool): Standard_Boolean {.noSideEffect,
    importcpp: "HasCurve", header: "StdPrs_ShapeTool.hxx".}
proc PolygonOnTriangulation*(this: StdPrs_ShapeTool;
                            Indices: var handle[Poly_PolygonOnTriangulation];
                            T: var handle[Poly_Triangulation];
                            l: var TopLoc_Location) {.noSideEffect,
    importcpp: "PolygonOnTriangulation", header: "StdPrs_ShapeTool.hxx".}
proc Polygon3D*(this: StdPrs_ShapeTool; l: var TopLoc_Location): handle[Poly_Polygon3D] {.
    noSideEffect, importcpp: "Polygon3D", header: "StdPrs_ShapeTool.hxx".}
proc IsPlanarFace*(theFace: TopoDS_Face): Standard_Boolean {.
    importcpp: "StdPrs_ShapeTool::IsPlanarFace(@)", header: "StdPrs_ShapeTool.hxx".}