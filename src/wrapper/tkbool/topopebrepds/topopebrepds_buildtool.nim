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


proc newTopOpeBRepDS_BuildTool*(): TopOpeBRepDS_BuildTool {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_BuildTool(@)", header: "TopOpeBRepDS_BuildTool.hxx".}
proc newTopOpeBRepDS_BuildTool*(outCurveType: TopOpeBRepToolOutCurveType): TopOpeBRepDS_BuildTool {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_BuildTool(@)", header: "TopOpeBRepDS_BuildTool.hxx".}
proc newTopOpeBRepDS_BuildTool*(gt: TopOpeBRepToolGeomTool): TopOpeBRepDS_BuildTool {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_BuildTool(@)", header: "TopOpeBRepDS_BuildTool.hxx".}
proc getGeomTool*(this: TopOpeBRepDS_BuildTool): TopOpeBRepToolGeomTool {.
    noSideEffect, cdecl, importcpp: "GetGeomTool", header: "TopOpeBRepDS_BuildTool.hxx".}
proc changeGeomTool*(this: var TopOpeBRepDS_BuildTool): var TopOpeBRepToolGeomTool {.
    cdecl, importcpp: "ChangeGeomTool", header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeVertex*(this: TopOpeBRepDS_BuildTool; v: var TopoDS_Shape;
                p: TopOpeBRepDS_Point) {.noSideEffect, cdecl,
                                       importcpp: "MakeVertex", header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeEdge*(this: TopOpeBRepDS_BuildTool; e: var TopoDS_Shape;
              c: TopOpeBRepDS_Curve) {.noSideEffect, cdecl, importcpp: "MakeEdge",
                                     header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeEdge*(this: TopOpeBRepDS_BuildTool; e: var TopoDS_Shape;
              c: TopOpeBRepDS_Curve; ds: TopOpeBRepDS_DataStructure) {.noSideEffect,
    cdecl, importcpp: "MakeEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeEdge*(this: TopOpeBRepDS_BuildTool; e: var TopoDS_Shape;
              c: Handle[GeomCurve]; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "MakeEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeEdge*(this: TopOpeBRepDS_BuildTool; e: var TopoDS_Shape) {.noSideEffect,
    cdecl, importcpp: "MakeEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeWire*(this: TopOpeBRepDS_BuildTool; w: var TopoDS_Shape) {.noSideEffect,
    cdecl, importcpp: "MakeWire", header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeFace*(this: TopOpeBRepDS_BuildTool; f: var TopoDS_Shape;
              s: TopOpeBRepDS_Surface) {.noSideEffect, cdecl, importcpp: "MakeFace",
                                       header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeShell*(this: TopOpeBRepDS_BuildTool; sh: var TopoDS_Shape) {.noSideEffect,
    cdecl, importcpp: "MakeShell", header: "TopOpeBRepDS_BuildTool.hxx".}
proc makeSolid*(this: TopOpeBRepDS_BuildTool; s: var TopoDS_Shape) {.noSideEffect,
    cdecl, importcpp: "MakeSolid", header: "TopOpeBRepDS_BuildTool.hxx".}
proc copyEdge*(this: TopOpeBRepDS_BuildTool; ein: TopoDS_Shape; eou: var TopoDS_Shape) {.
    noSideEffect, cdecl, importcpp: "CopyEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc getOrientedEdgeVertices*(this: TopOpeBRepDS_BuildTool; e: var TopoDS_Edge;
                             vmin: var TopoDS_Vertex; vmax: var TopoDS_Vertex;
                             parmin: var cfloat; parmax: var cfloat) {.noSideEffect,
    cdecl, importcpp: "GetOrientedEdgeVertices", header: "TopOpeBRepDS_BuildTool.hxx".}
proc updateEdgeCurveTol*(this: TopOpeBRepDS_BuildTool; f1: TopoDS_Face;
                        f2: TopoDS_Face; e: var TopoDS_Edge;
                        c3Dnew: Handle[GeomCurve]; tol3d: cfloat; tol2d1: cfloat;
                        tol2d2: cfloat; newtol: var cfloat; newparmin: var cfloat;
                        newparmax: var cfloat) {.noSideEffect, cdecl,
    importcpp: "UpdateEdgeCurveTol", header: "TopOpeBRepDS_BuildTool.hxx".}
proc approxCurves*(this: TopOpeBRepDS_BuildTool; c: TopOpeBRepDS_Curve;
                  e: var TopoDS_Edge; inewC: var cint;
                  hds: Handle[TopOpeBRepDS_HDataStructure]) {.noSideEffect, cdecl,
    importcpp: "ApproxCurves", header: "TopOpeBRepDS_BuildTool.hxx".}
proc computePCurves*(this: TopOpeBRepDS_BuildTool; c: TopOpeBRepDS_Curve;
                    e: var TopoDS_Edge; newC: var TopOpeBRepDS_Curve; compPC1: bool;
                    compPC2: bool; compC3D: bool) {.noSideEffect, cdecl,
    importcpp: "ComputePCurves", header: "TopOpeBRepDS_BuildTool.hxx".}
proc putPCurves*(this: TopOpeBRepDS_BuildTool; newC: TopOpeBRepDS_Curve;
                e: var TopoDS_Edge; compPC1: bool; compPC2: bool) {.noSideEffect, cdecl,
    importcpp: "PutPCurves", header: "TopOpeBRepDS_BuildTool.hxx".}
proc recomputeCurves*(this: TopOpeBRepDS_BuildTool; c: TopOpeBRepDS_Curve;
                     oldE: TopoDS_Edge; e: var TopoDS_Edge; inewC: var cint;
                     hds: Handle[TopOpeBRepDS_HDataStructure]) {.noSideEffect,
    cdecl, importcpp: "RecomputeCurves", header: "TopOpeBRepDS_BuildTool.hxx".}
proc copyFace*(this: TopOpeBRepDS_BuildTool; fin: TopoDS_Shape; fou: var TopoDS_Shape) {.
    noSideEffect, cdecl, importcpp: "CopyFace", header: "TopOpeBRepDS_BuildTool.hxx".}
proc addEdgeVertex*(this: TopOpeBRepDS_BuildTool; ein: TopoDS_Shape;
                   eou: var TopoDS_Shape; v: TopoDS_Shape) {.noSideEffect, cdecl,
    importcpp: "AddEdgeVertex", header: "TopOpeBRepDS_BuildTool.hxx".}
proc addEdgeVertex*(this: TopOpeBRepDS_BuildTool; e: var TopoDS_Shape; v: TopoDS_Shape) {.
    noSideEffect, cdecl, importcpp: "AddEdgeVertex", header: "TopOpeBRepDS_BuildTool.hxx".}
proc addWireEdge*(this: TopOpeBRepDS_BuildTool; w: var TopoDS_Shape; e: TopoDS_Shape) {.
    noSideEffect, cdecl, importcpp: "AddWireEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc addFaceWire*(this: TopOpeBRepDS_BuildTool; f: var TopoDS_Shape; w: TopoDS_Shape) {.
    noSideEffect, cdecl, importcpp: "AddFaceWire", header: "TopOpeBRepDS_BuildTool.hxx".}
proc addShellFace*(this: TopOpeBRepDS_BuildTool; sh: var TopoDS_Shape; f: TopoDS_Shape) {.
    noSideEffect, cdecl, importcpp: "AddShellFace", header: "TopOpeBRepDS_BuildTool.hxx".}
proc addSolidShell*(this: TopOpeBRepDS_BuildTool; s: var TopoDS_Shape;
                   sh: TopoDS_Shape) {.noSideEffect, cdecl,
                                     importcpp: "AddSolidShell", header: "TopOpeBRepDS_BuildTool.hxx".}
proc parameter*(this: TopOpeBRepDS_BuildTool; e: TopoDS_Shape; v: TopoDS_Shape;
               p: cfloat) {.noSideEffect, cdecl, importcpp: "Parameter",
                          header: "TopOpeBRepDS_BuildTool.hxx".}
proc range*(this: TopOpeBRepDS_BuildTool; e: TopoDS_Shape; first: cfloat; last: cfloat) {.
    noSideEffect, cdecl, importcpp: "Range", header: "TopOpeBRepDS_BuildTool.hxx".}
proc updateEdge*(this: TopOpeBRepDS_BuildTool; ein: TopoDS_Shape;
                eou: var TopoDS_Shape) {.noSideEffect, cdecl,
                                      importcpp: "UpdateEdge", header: "TopOpeBRepDS_BuildTool.hxx".}
proc parameter*(this: TopOpeBRepDS_BuildTool; c: TopOpeBRepDS_Curve;
               e: var TopoDS_Shape; v: var TopoDS_Shape) {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "TopOpeBRepDS_BuildTool.hxx".}
proc curve3D*(this: TopOpeBRepDS_BuildTool; e: var TopoDS_Shape; c: Handle[GeomCurve];
             tol: cfloat) {.noSideEffect, cdecl, importcpp: "Curve3D", header: "TopOpeBRepDS_BuildTool.hxx".}
proc pCurve*(this: TopOpeBRepDS_BuildTool; f: var TopoDS_Shape; e: var TopoDS_Shape;
            c: Handle[Geom2dCurve]) {.noSideEffect, cdecl, importcpp: "PCurve",
                                    header: "TopOpeBRepDS_BuildTool.hxx".}
proc pCurve*(this: TopOpeBRepDS_BuildTool; f: var TopoDS_Shape; e: var TopoDS_Shape;
            cds: TopOpeBRepDS_Curve; c: Handle[Geom2dCurve]) {.noSideEffect, cdecl,
    importcpp: "PCurve", header: "TopOpeBRepDS_BuildTool.hxx".}
proc orientation*(this: TopOpeBRepDS_BuildTool; s: var TopoDS_Shape;
                 o: TopAbsOrientation) {.noSideEffect, cdecl,
                                       importcpp: "Orientation", header: "TopOpeBRepDS_BuildTool.hxx".}
proc orientation*(this: TopOpeBRepDS_BuildTool; s: TopoDS_Shape): TopAbsOrientation {.
    noSideEffect, cdecl, importcpp: "Orientation", header: "TopOpeBRepDS_BuildTool.hxx".}
proc closed*(this: TopOpeBRepDS_BuildTool; s: var TopoDS_Shape; b: bool) {.noSideEffect,
    cdecl, importcpp: "Closed", header: "TopOpeBRepDS_BuildTool.hxx".}
proc approximation*(this: TopOpeBRepDS_BuildTool): bool {.noSideEffect, cdecl,
    importcpp: "Approximation", header: "TopOpeBRepDS_BuildTool.hxx".}
proc updateSurface*(this: TopOpeBRepDS_BuildTool; f: TopoDS_Shape;
                   su: Handle[GeomSurface]) {.noSideEffect, cdecl,
    importcpp: "UpdateSurface", header: "TopOpeBRepDS_BuildTool.hxx".}
proc updateSurface*(this: TopOpeBRepDS_BuildTool; e: TopoDS_Shape;
                   oldF: TopoDS_Shape; newF: TopoDS_Shape) {.noSideEffect, cdecl,
    importcpp: "UpdateSurface", header: "TopOpeBRepDS_BuildTool.hxx".}
proc overWrite*(this: TopOpeBRepDS_BuildTool): bool {.noSideEffect, cdecl,
    importcpp: "OverWrite", header: "TopOpeBRepDS_BuildTool.hxx".}
proc overWrite*(this: var TopOpeBRepDS_BuildTool; o: bool) {.cdecl,
    importcpp: "OverWrite", header: "TopOpeBRepDS_BuildTool.hxx".}
proc translate*(this: TopOpeBRepDS_BuildTool): bool {.noSideEffect, cdecl,
    importcpp: "Translate", header: "TopOpeBRepDS_BuildTool.hxx".}
proc translate*(this: var TopOpeBRepDS_BuildTool; t: bool) {.cdecl,
    importcpp: "Translate", header: "TopOpeBRepDS_BuildTool.hxx".}