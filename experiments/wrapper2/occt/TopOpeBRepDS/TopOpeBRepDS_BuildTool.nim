##  Created on: 1993-06-17
##  Created by: Jean Yves LEBEY
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRep/BRep_Builder,
  ../TopOpeBRepTool/TopOpeBRepTool_CurveTool, ../Standard/Standard_Boolean,
  ../TopOpeBRepTool/TopOpeBRepTool_OutCurveType, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_Orientation

discard "forward decl of TopOpeBRepTool_GeomTool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Point"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of Geom_Curve"
discard "forward decl of TopOpeBRepDS_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
type
  TopOpeBRepDS_BuildTool* {.importcpp: "TopOpeBRepDS_BuildTool",
                           header: "TopOpeBRepDS_BuildTool.hxx", bycopy.} = object


proc constructTopOpeBRepDS_BuildTool*(): TopOpeBRepDS_BuildTool {.constructor,
    importcpp: "TopOpeBRepDS_BuildTool(@)", header: "TopOpeBRepDS_BuildTool.hxx".}
proc constructTopOpeBRepDS_BuildTool*(OutCurveType: TopOpeBRepTool_OutCurveType): TopOpeBRepDS_BuildTool {.
    constructor, importcpp: "TopOpeBRepDS_BuildTool(@)",
    header: "TopOpeBRepDS_BuildTool.hxx".}
proc constructTopOpeBRepDS_BuildTool*(GT: TopOpeBRepTool_GeomTool): TopOpeBRepDS_BuildTool {.
    constructor, importcpp: "TopOpeBRepDS_BuildTool(@)",
    header: "TopOpeBRepDS_BuildTool.hxx".}
proc GetGeomTool*(this: TopOpeBRepDS_BuildTool): TopOpeBRepTool_GeomTool {.
    noSideEffect, importcpp: "GetGeomTool", header: "TopOpeBRepDS_BuildTool.hxx".}
proc ChangeGeomTool*(this: var TopOpeBRepDS_BuildTool): var TopOpeBRepTool_GeomTool {.
    importcpp: "ChangeGeomTool", header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeVertex*(this: TopOpeBRepDS_BuildTool; V: var TopoDS_Shape;
                P: TopOpeBRepDS_Point) {.noSideEffect, importcpp: "MakeVertex",
                                       header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeEdge*(this: TopOpeBRepDS_BuildTool; E: var TopoDS_Shape;
              C: TopOpeBRepDS_Curve) {.noSideEffect, importcpp: "MakeEdge",
                                     header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeEdge*(this: TopOpeBRepDS_BuildTool; E: var TopoDS_Shape;
              C: TopOpeBRepDS_Curve; DS: TopOpeBRepDS_DataStructure) {.noSideEffect,
    importcpp: "MakeEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeEdge*(this: TopOpeBRepDS_BuildTool; E: var TopoDS_Shape;
              C: handle[Geom_Curve]; Tol: Standard_Real) {.noSideEffect,
    importcpp: "MakeEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeEdge*(this: TopOpeBRepDS_BuildTool; E: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeWire*(this: TopOpeBRepDS_BuildTool; W: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeWire", header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeFace*(this: TopOpeBRepDS_BuildTool; F: var TopoDS_Shape;
              S: TopOpeBRepDS_Surface) {.noSideEffect, importcpp: "MakeFace",
                                       header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeShell*(this: TopOpeBRepDS_BuildTool; Sh: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeShell", header: "TopOpeBRepDS_BuildTool.hxx".}
proc MakeSolid*(this: TopOpeBRepDS_BuildTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeSolid", header: "TopOpeBRepDS_BuildTool.hxx".}
proc CopyEdge*(this: TopOpeBRepDS_BuildTool; Ein: TopoDS_Shape; Eou: var TopoDS_Shape) {.
    noSideEffect, importcpp: "CopyEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc GetOrientedEdgeVertices*(this: TopOpeBRepDS_BuildTool; E: var TopoDS_Edge;
                             Vmin: var TopoDS_Vertex; Vmax: var TopoDS_Vertex;
                             Parmin: var Standard_Real; Parmax: var Standard_Real) {.
    noSideEffect, importcpp: "GetOrientedEdgeVertices",
    header: "TopOpeBRepDS_BuildTool.hxx".}
proc UpdateEdgeCurveTol*(this: TopOpeBRepDS_BuildTool; F1: TopoDS_Face;
                        F2: TopoDS_Face; E: var TopoDS_Edge;
                        C3Dnew: handle[Geom_Curve]; tol3d: Standard_Real;
                        tol2d1: Standard_Real; tol2d2: Standard_Real;
                        newtol: var Standard_Real; newparmin: var Standard_Real;
                        newparmax: var Standard_Real) {.noSideEffect,
    importcpp: "UpdateEdgeCurveTol", header: "TopOpeBRepDS_BuildTool.hxx".}
proc ApproxCurves*(this: TopOpeBRepDS_BuildTool; C: TopOpeBRepDS_Curve;
                  E: var TopoDS_Edge; inewC: var Standard_Integer;
                  HDS: handle[TopOpeBRepDS_HDataStructure]) {.noSideEffect,
    importcpp: "ApproxCurves", header: "TopOpeBRepDS_BuildTool.hxx".}
proc ComputePCurves*(this: TopOpeBRepDS_BuildTool; C: TopOpeBRepDS_Curve;
                    E: var TopoDS_Edge; newC: var TopOpeBRepDS_Curve;
                    CompPC1: Standard_Boolean; CompPC2: Standard_Boolean;
                    CompC3D: Standard_Boolean) {.noSideEffect,
    importcpp: "ComputePCurves", header: "TopOpeBRepDS_BuildTool.hxx".}
proc PutPCurves*(this: TopOpeBRepDS_BuildTool; newC: TopOpeBRepDS_Curve;
                E: var TopoDS_Edge; CompPC1: Standard_Boolean;
                CompPC2: Standard_Boolean) {.noSideEffect, importcpp: "PutPCurves",
    header: "TopOpeBRepDS_BuildTool.hxx".}
proc RecomputeCurves*(this: TopOpeBRepDS_BuildTool; C: TopOpeBRepDS_Curve;
                     oldE: TopoDS_Edge; E: var TopoDS_Edge;
                     inewC: var Standard_Integer;
                     HDS: handle[TopOpeBRepDS_HDataStructure]) {.noSideEffect,
    importcpp: "RecomputeCurves", header: "TopOpeBRepDS_BuildTool.hxx".}
proc CopyFace*(this: TopOpeBRepDS_BuildTool; Fin: TopoDS_Shape; Fou: var TopoDS_Shape) {.
    noSideEffect, importcpp: "CopyFace", header: "TopOpeBRepDS_BuildTool.hxx".}
proc AddEdgeVertex*(this: TopOpeBRepDS_BuildTool; Ein: TopoDS_Shape;
                   Eou: var TopoDS_Shape; V: TopoDS_Shape) {.noSideEffect,
    importcpp: "AddEdgeVertex", header: "TopOpeBRepDS_BuildTool.hxx".}
proc AddEdgeVertex*(this: TopOpeBRepDS_BuildTool; E: var TopoDS_Shape; V: TopoDS_Shape) {.
    noSideEffect, importcpp: "AddEdgeVertex", header: "TopOpeBRepDS_BuildTool.hxx".}
proc AddWireEdge*(this: TopOpeBRepDS_BuildTool; W: var TopoDS_Shape; E: TopoDS_Shape) {.
    noSideEffect, importcpp: "AddWireEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc AddFaceWire*(this: TopOpeBRepDS_BuildTool; F: var TopoDS_Shape; W: TopoDS_Shape) {.
    noSideEffect, importcpp: "AddFaceWire", header: "TopOpeBRepDS_BuildTool.hxx".}
proc AddShellFace*(this: TopOpeBRepDS_BuildTool; Sh: var TopoDS_Shape; F: TopoDS_Shape) {.
    noSideEffect, importcpp: "AddShellFace", header: "TopOpeBRepDS_BuildTool.hxx".}
proc AddSolidShell*(this: TopOpeBRepDS_BuildTool; S: var TopoDS_Shape;
                   Sh: TopoDS_Shape) {.noSideEffect, importcpp: "AddSolidShell",
                                     header: "TopOpeBRepDS_BuildTool.hxx".}
proc Parameter*(this: TopOpeBRepDS_BuildTool; E: TopoDS_Shape; V: TopoDS_Shape;
               P: Standard_Real) {.noSideEffect, importcpp: "Parameter",
                                 header: "TopOpeBRepDS_BuildTool.hxx".}
proc Range*(this: TopOpeBRepDS_BuildTool; E: TopoDS_Shape; first: Standard_Real;
           last: Standard_Real) {.noSideEffect, importcpp: "Range",
                                header: "TopOpeBRepDS_BuildTool.hxx".}
proc UpdateEdge*(this: TopOpeBRepDS_BuildTool; Ein: TopoDS_Shape;
                Eou: var TopoDS_Shape) {.noSideEffect, importcpp: "UpdateEdge",
                                      header: "TopOpeBRepDS_BuildTool.hxx".}
proc Parameter*(this: TopOpeBRepDS_BuildTool; C: TopOpeBRepDS_Curve;
               E: var TopoDS_Shape; V: var TopoDS_Shape) {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRepDS_BuildTool.hxx".}
proc Curve3D*(this: TopOpeBRepDS_BuildTool; E: var TopoDS_Shape;
             C: handle[Geom_Curve]; Tol: Standard_Real) {.noSideEffect,
    importcpp: "Curve3D", header: "TopOpeBRepDS_BuildTool.hxx".}
proc PCurve*(this: TopOpeBRepDS_BuildTool; F: var TopoDS_Shape; E: var TopoDS_Shape;
            C: handle[Geom2d_Curve]) {.noSideEffect, importcpp: "PCurve",
                                     header: "TopOpeBRepDS_BuildTool.hxx".}
proc PCurve*(this: TopOpeBRepDS_BuildTool; F: var TopoDS_Shape; E: var TopoDS_Shape;
            CDS: TopOpeBRepDS_Curve; C: handle[Geom2d_Curve]) {.noSideEffect,
    importcpp: "PCurve", header: "TopOpeBRepDS_BuildTool.hxx".}
proc Orientation*(this: TopOpeBRepDS_BuildTool; S: var TopoDS_Shape;
                 O: TopAbs_Orientation) {.noSideEffect, importcpp: "Orientation",
                                        header: "TopOpeBRepDS_BuildTool.hxx".}
proc Orientation*(this: TopOpeBRepDS_BuildTool; S: TopoDS_Shape): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation", header: "TopOpeBRepDS_BuildTool.hxx".}
proc Closed*(this: TopOpeBRepDS_BuildTool; S: var TopoDS_Shape; B: Standard_Boolean) {.
    noSideEffect, importcpp: "Closed", header: "TopOpeBRepDS_BuildTool.hxx".}
proc Approximation*(this: TopOpeBRepDS_BuildTool): Standard_Boolean {.noSideEffect,
    importcpp: "Approximation", header: "TopOpeBRepDS_BuildTool.hxx".}
proc UpdateSurface*(this: TopOpeBRepDS_BuildTool; F: TopoDS_Shape;
                   SU: handle[Geom_Surface]) {.noSideEffect,
    importcpp: "UpdateSurface", header: "TopOpeBRepDS_BuildTool.hxx".}
proc UpdateSurface*(this: TopOpeBRepDS_BuildTool; E: TopoDS_Shape;
                   oldF: TopoDS_Shape; newF: TopoDS_Shape) {.noSideEffect,
    importcpp: "UpdateSurface", header: "TopOpeBRepDS_BuildTool.hxx".}
proc OverWrite*(this: TopOpeBRepDS_BuildTool): Standard_Boolean {.noSideEffect,
    importcpp: "OverWrite", header: "TopOpeBRepDS_BuildTool.hxx".}
proc OverWrite*(this: var TopOpeBRepDS_BuildTool; O: Standard_Boolean) {.
    importcpp: "OverWrite", header: "TopOpeBRepDS_BuildTool.hxx".}
proc Translate*(this: TopOpeBRepDS_BuildTool): Standard_Boolean {.noSideEffect,
    importcpp: "Translate", header: "TopOpeBRepDS_BuildTool.hxx".}
proc Translate*(this: var TopOpeBRepDS_BuildTool; T: Standard_Boolean) {.
    importcpp: "Translate", header: "TopOpeBRepDS_BuildTool.hxx".}