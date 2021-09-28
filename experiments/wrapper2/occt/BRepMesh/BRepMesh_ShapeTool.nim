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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Bnd_Box"
type
  BRepMeshShapeTool* {.importcpp: "BRepMesh_ShapeTool",
                      header: "BRepMesh_ShapeTool.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## maximum
                                                                                        ## tolerance
                                                                                        ## of
                                                                                        ## the
                                                                                        ## given
                                                                                        ## face.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Considers
                                                                                        ## tolerances
                                                                                        ## of
                                                                                        ## edges
                                                                                        ## and
                                                                                        ## vertices
                                                                                        ## contained
                                                                                        ## in
                                                                                        ## the
                                                                                        ## given
                                                                                        ## face.


proc maxFaceTolerance*(theFace: TopoDS_Face): cfloat {.
    importcpp: "BRepMesh_ShapeTool::MaxFaceTolerance(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc boxMaxDimension*(theBox: BndBox; theMaxDimension: var cfloat) {.
    importcpp: "BRepMesh_ShapeTool::BoxMaxDimension(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc checkAndUpdateFlags*(theEdge: IEdgeHandle; thePCurve: IPCurveHandle) {.
    importcpp: "BRepMesh_ShapeTool::CheckAndUpdateFlags(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc addInFace*(theFace: TopoDS_Face;
               theTriangulation: var Handle[PolyTriangulation]) {.
    importcpp: "BRepMesh_ShapeTool::AddInFace(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc nullifyFace*(theFace: TopoDS_Face) {.importcpp: "BRepMesh_ShapeTool::NullifyFace(@)",
                                       header: "BRepMesh_ShapeTool.hxx".}
proc nullifyEdge*(theEdge: TopoDS_Edge;
                 theTriangulation: Handle[PolyTriangulation];
                 theLocation: TopLocLocation) {.
    importcpp: "BRepMesh_ShapeTool::NullifyEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc nullifyEdge*(theEdge: TopoDS_Edge; theLocation: TopLocLocation) {.
    importcpp: "BRepMesh_ShapeTool::NullifyEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc updateEdge*(theEdge: TopoDS_Edge;
                thePolygon: Handle[PolyPolygonOnTriangulation];
                theTriangulation: Handle[PolyTriangulation];
                theLocation: TopLocLocation) {.
    importcpp: "BRepMesh_ShapeTool::UpdateEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc updateEdge*(theEdge: TopoDS_Edge; thePolygon: Handle[PolyPolygon3D]) {.
    importcpp: "BRepMesh_ShapeTool::UpdateEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc updateEdge*(theEdge: TopoDS_Edge;
                thePolygon1: Handle[PolyPolygonOnTriangulation];
                thePolygon2: Handle[PolyPolygonOnTriangulation];
                theTriangulation: Handle[PolyTriangulation];
                theLocation: TopLocLocation) {.
    importcpp: "BRepMesh_ShapeTool::UpdateEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc useLocation*(thePnt: Pnt; theLoc: TopLocLocation): Pnt {.
    importcpp: "BRepMesh_ShapeTool::UseLocation(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc uVPoints*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
              theFirstPoint2d: var Pnt2d; theLastPoint2d: var Pnt2d;
              isConsiderOrientation: bool = false): bool {.
    importcpp: "BRepMesh_ShapeTool::UVPoints(@)", header: "BRepMesh_ShapeTool.hxx".}
proc range*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
           thePCurve: var Handle[Geom2dCurve]; theFirstParam: var cfloat;
           theLastParam: var cfloat; isConsiderOrientation: bool = false): bool {.
    importcpp: "BRepMesh_ShapeTool::Range(@)", header: "BRepMesh_ShapeTool.hxx".}
proc range*(theEdge: TopoDS_Edge; theCurve: var Handle[GeomCurve];
           theFirstParam: var cfloat; theLastParam: var cfloat;
           isConsiderOrientation: bool = false): bool {.
    importcpp: "BRepMesh_ShapeTool::Range(@)", header: "BRepMesh_ShapeTool.hxx".}
type
  BRepMeshShapeToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_ShapeTool::get_type_name(@)",
                            header: "BRepMesh_ShapeTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_ShapeTool::get_type_descriptor(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc dynamicType*(this: BRepMeshShapeTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_ShapeTool.hxx".}

























