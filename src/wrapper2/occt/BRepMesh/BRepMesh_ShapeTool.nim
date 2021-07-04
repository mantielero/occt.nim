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
  ../Standard/Standard_Transient, ../Standard/Standard_Handle,
  ../Standard/Standard_Type, ../IMeshData/IMeshData_Types,
  ../Poly/Poly_Triangulation, ../Poly/Poly_PolygonOnTriangulation

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Bnd_Box"
type
  BRepMesh_ShapeTool* {.importcpp: "BRepMesh_ShapeTool",
                       header: "BRepMesh_ShapeTool.hxx", bycopy.} = object of Standard_Transient ##
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


proc MaxFaceTolerance*(theFace: TopoDS_Face): Standard_Real {.
    importcpp: "BRepMesh_ShapeTool::MaxFaceTolerance(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc BoxMaxDimension*(theBox: Bnd_Box; theMaxDimension: var Standard_Real) {.
    importcpp: "BRepMesh_ShapeTool::BoxMaxDimension(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc CheckAndUpdateFlags*(theEdge: IEdgeHandle; thePCurve: IPCurveHandle) {.
    importcpp: "BRepMesh_ShapeTool::CheckAndUpdateFlags(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc AddInFace*(theFace: TopoDS_Face;
               theTriangulation: var handle[Poly_Triangulation]) {.
    importcpp: "BRepMesh_ShapeTool::AddInFace(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc NullifyFace*(theFace: TopoDS_Face) {.importcpp: "BRepMesh_ShapeTool::NullifyFace(@)",
                                       header: "BRepMesh_ShapeTool.hxx".}
proc NullifyEdge*(theEdge: TopoDS_Edge;
                 theTriangulation: handle[Poly_Triangulation];
                 theLocation: TopLoc_Location) {.
    importcpp: "BRepMesh_ShapeTool::NullifyEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc NullifyEdge*(theEdge: TopoDS_Edge; theLocation: TopLoc_Location) {.
    importcpp: "BRepMesh_ShapeTool::NullifyEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc UpdateEdge*(theEdge: TopoDS_Edge;
                thePolygon: handle[Poly_PolygonOnTriangulation];
                theTriangulation: handle[Poly_Triangulation];
                theLocation: TopLoc_Location) {.
    importcpp: "BRepMesh_ShapeTool::UpdateEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc UpdateEdge*(theEdge: TopoDS_Edge; thePolygon: handle[Poly_Polygon3D]) {.
    importcpp: "BRepMesh_ShapeTool::UpdateEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc UpdateEdge*(theEdge: TopoDS_Edge;
                thePolygon1: handle[Poly_PolygonOnTriangulation];
                thePolygon2: handle[Poly_PolygonOnTriangulation];
                theTriangulation: handle[Poly_Triangulation];
                theLocation: TopLoc_Location) {.
    importcpp: "BRepMesh_ShapeTool::UpdateEdge(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc UseLocation*(thePnt: gp_Pnt; theLoc: TopLoc_Location): gp_Pnt {.
    importcpp: "BRepMesh_ShapeTool::UseLocation(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc UVPoints*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
              theFirstPoint2d: var gp_Pnt2d; theLastPoint2d: var gp_Pnt2d;
              isConsiderOrientation: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BRepMesh_ShapeTool::UVPoints(@)", header: "BRepMesh_ShapeTool.hxx".}
proc Range*(theEdge: TopoDS_Edge; theFace: TopoDS_Face;
           thePCurve: var handle[Geom2d_Curve]; theFirstParam: var Standard_Real;
           theLastParam: var Standard_Real;
           isConsiderOrientation: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BRepMesh_ShapeTool::Range(@)", header: "BRepMesh_ShapeTool.hxx".}
proc Range*(theEdge: TopoDS_Edge; theCurve: var handle[Geom_Curve];
           theFirstParam: var Standard_Real; theLastParam: var Standard_Real;
           isConsiderOrientation: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BRepMesh_ShapeTool::Range(@)", header: "BRepMesh_ShapeTool.hxx".}
type
  BRepMesh_ShapeToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_ShapeTool::get_type_name(@)",
                              header: "BRepMesh_ShapeTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_ShapeTool::get_type_descriptor(@)",
    header: "BRepMesh_ShapeTool.hxx".}
proc DynamicType*(this: BRepMesh_ShapeTool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_ShapeTool.hxx".}