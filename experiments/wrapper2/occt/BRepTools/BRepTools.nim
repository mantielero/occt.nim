##  Created on: 1992-08-28
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Bnd_Box2d"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Compound"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRep_Builder"
discard "forward decl of BRepTools_WireExplorer"
discard "forward decl of BRepTools_Modification"
discard "forward decl of BRepTools_Modifier"
discard "forward decl of BRepTools_TrsfModification"
discard "forward decl of BRepTools_NurbsConvertModification"
discard "forward decl of BRepTools_GTrsfModification"
discard "forward decl of BRepTools_Substitution"
discard "forward decl of BRepTools_Quilt"
discard "forward decl of BRepTools_ShapeSet"
discard "forward decl of BRepTools_ReShape"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
type
  BRepTools* {.importcpp: "BRepTools", header: "BRepTools.hxx", bycopy.} = object ## !
                                                                          ## Returns in UMin,  UMax, VMin,  VMax  the
                                                                          ## bounding
                                                                          ## ! values in the
                                                                          ## parametric space of F.


proc uVBounds*(f: TopoDS_Face; uMin: var float; uMax: var float; vMin: var float;
              vMax: var float) {.importcpp: "BRepTools::UVBounds(@)",
                              header: "BRepTools.hxx".}
proc uVBounds*(f: TopoDS_Face; w: TopoDS_Wire; uMin: var float; uMax: var float;
              vMin: var float; vMax: var float) {.importcpp: "BRepTools::UVBounds(@)",
    header: "BRepTools.hxx".}
proc uVBounds*(f: TopoDS_Face; e: TopoDS_Edge; uMin: var float; uMax: var float;
              vMin: var float; vMax: var float) {.importcpp: "BRepTools::UVBounds(@)",
    header: "BRepTools.hxx".}
proc addUVBounds*(f: TopoDS_Face; b: var BndBox2d) {.
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc addUVBounds*(f: TopoDS_Face; w: TopoDS_Wire; b: var BndBox2d) {.
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc addUVBounds*(f: TopoDS_Face; e: TopoDS_Edge; b: var BndBox2d) {.
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc update*(v: TopoDS_Vertex) {.importcpp: "BRepTools::Update(@)",
                              header: "BRepTools.hxx".}
proc update*(e: TopoDS_Edge) {.importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc update*(w: TopoDS_Wire) {.importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc update*(f: TopoDS_Face) {.importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc update*(s: TopoDS_Shell) {.importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc update*(s: TopoDS_Solid) {.importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc update*(c: TopoDS_CompSolid) {.importcpp: "BRepTools::Update(@)",
                                 header: "BRepTools.hxx".}
proc update*(c: TopoDS_Compound) {.importcpp: "BRepTools::Update(@)",
                                header: "BRepTools.hxx".}
proc update*(s: TopoDS_Shape) {.importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc updateFaceUVPoints*(theF: TopoDS_Face) {.
    importcpp: "BRepTools::UpdateFaceUVPoints(@)", header: "BRepTools.hxx".}
proc clean*(s: TopoDS_Shape) {.importcpp: "BRepTools::Clean(@)",
                            header: "BRepTools.hxx".}
proc cleanGeometry*(theShape: TopoDS_Shape) {.
    importcpp: "BRepTools::CleanGeometry(@)", header: "BRepTools.hxx".}
proc removeUnusedPCurves*(s: TopoDS_Shape) {.
    importcpp: "BRepTools::RemoveUnusedPCurves(@)", header: "BRepTools.hxx".}
proc triangulation*(theShape: TopoDS_Shape; theLinDefl: float;
                   theToCheckFreeEdges: bool = false): bool {.
    importcpp: "BRepTools::Triangulation(@)", header: "BRepTools.hxx".}
proc compare*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): bool {.
    importcpp: "BRepTools::Compare(@)", header: "BRepTools.hxx".}
proc compare*(e1: TopoDS_Edge; e2: TopoDS_Edge): bool {.
    importcpp: "BRepTools::Compare(@)", header: "BRepTools.hxx".}
proc outerWire*(f: TopoDS_Face): TopoDS_Wire {.importcpp: "BRepTools::OuterWire(@)",
    header: "BRepTools.hxx".}
proc map3DEdges*(s: TopoDS_Shape; m: var TopToolsIndexedMapOfShape) {.
    importcpp: "BRepTools::Map3DEdges(@)", header: "BRepTools.hxx".}
proc isReallyClosed*(e: TopoDS_Edge; f: TopoDS_Face): bool {.
    importcpp: "BRepTools::IsReallyClosed(@)", header: "BRepTools.hxx".}
proc detectClosedness*(theFace: TopoDS_Face; theUclosed: var bool;
                      theVclosed: var bool) {.
    importcpp: "BRepTools::DetectClosedness(@)", header: "BRepTools.hxx".}
proc dump*(sh: TopoDS_Shape; s: var StandardOStream) {.
    importcpp: "BRepTools::Dump(@)", header: "BRepTools.hxx".}
proc write*(sh: TopoDS_Shape; s: var StandardOStream;
           theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "BRepTools::Write(@)", header: "BRepTools.hxx".}
proc read*(sh: var TopoDS_Shape; s: var StandardIStream; b: BRepBuilder;
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "BRepTools::Read(@)", header: "BRepTools.hxx".}
proc write*(sh: TopoDS_Shape; file: StandardCString;
           theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "BRepTools::Write(@)", header: "BRepTools.hxx".}
proc read*(sh: var TopoDS_Shape; file: StandardCString; b: BRepBuilder;
          theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "BRepTools::Read(@)", header: "BRepTools.hxx".}
proc evalAndUpdateTol*(theE: TopoDS_Edge; theC3d: Handle[GeomCurve];
                      theC2d: Handle[Geom2dCurve]; theS: Handle[GeomSurface];
                      theF: float; theL: float): float {.
    importcpp: "BRepTools::EvalAndUpdateTol(@)", header: "BRepTools.hxx".}
proc oriEdgeInFace*(theEdge: TopoDS_Edge; theFace: TopoDS_Face): TopAbsOrientation {.
    importcpp: "BRepTools::OriEdgeInFace(@)", header: "BRepTools.hxx".}
proc removeInternals*(theS: var TopoDS_Shape; theForce: bool = false) {.
    importcpp: "BRepTools::RemoveInternals(@)", header: "BRepTools.hxx".}
