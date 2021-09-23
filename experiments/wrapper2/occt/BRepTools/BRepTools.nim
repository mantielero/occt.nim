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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_IndexedMapOfShape,
  ../Standard/Standard_OStream, ../Standard/Standard_IStream,
  ../Standard/Standard_CString, ../Message/Message_ProgressRange

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


proc UVBounds*(F: TopoDS_Face; UMin: var Standard_Real; UMax: var Standard_Real;
              VMin: var Standard_Real; VMax: var Standard_Real) {.
    importcpp: "BRepTools::UVBounds(@)", header: "BRepTools.hxx".}
proc UVBounds*(F: TopoDS_Face; W: TopoDS_Wire; UMin: var Standard_Real;
              UMax: var Standard_Real; VMin: var Standard_Real;
              VMax: var Standard_Real) {.importcpp: "BRepTools::UVBounds(@)",
                                      header: "BRepTools.hxx".}
proc UVBounds*(F: TopoDS_Face; E: TopoDS_Edge; UMin: var Standard_Real;
              UMax: var Standard_Real; VMin: var Standard_Real;
              VMax: var Standard_Real) {.importcpp: "BRepTools::UVBounds(@)",
                                      header: "BRepTools.hxx".}
proc AddUVBounds*(F: TopoDS_Face; B: var Bnd_Box2d) {.
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc AddUVBounds*(F: TopoDS_Face; W: TopoDS_Wire; B: var Bnd_Box2d) {.
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc AddUVBounds*(F: TopoDS_Face; E: TopoDS_Edge; B: var Bnd_Box2d) {.
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc Update*(V: TopoDS_Vertex) {.importcpp: "BRepTools::Update(@)",
                              header: "BRepTools.hxx".}
proc Update*(E: TopoDS_Edge) {.importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc Update*(W: TopoDS_Wire) {.importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc Update*(F: TopoDS_Face) {.importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc Update*(S: TopoDS_Shell) {.importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc Update*(S: TopoDS_Solid) {.importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc Update*(C: TopoDS_CompSolid) {.importcpp: "BRepTools::Update(@)",
                                 header: "BRepTools.hxx".}
proc Update*(C: TopoDS_Compound) {.importcpp: "BRepTools::Update(@)",
                                header: "BRepTools.hxx".}
proc Update*(S: TopoDS_Shape) {.importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc UpdateFaceUVPoints*(theF: TopoDS_Face) {.
    importcpp: "BRepTools::UpdateFaceUVPoints(@)", header: "BRepTools.hxx".}
proc Clean*(S: TopoDS_Shape) {.importcpp: "BRepTools::Clean(@)",
                            header: "BRepTools.hxx".}
proc CleanGeometry*(theShape: TopoDS_Shape) {.
    importcpp: "BRepTools::CleanGeometry(@)", header: "BRepTools.hxx".}
proc RemoveUnusedPCurves*(S: TopoDS_Shape) {.
    importcpp: "BRepTools::RemoveUnusedPCurves(@)", header: "BRepTools.hxx".}
proc Triangulation*(theShape: TopoDS_Shape; theLinDefl: Standard_Real;
                   theToCheckFreeEdges: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BRepTools::Triangulation(@)", header: "BRepTools.hxx".}
proc Compare*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): Standard_Boolean {.
    importcpp: "BRepTools::Compare(@)", header: "BRepTools.hxx".}
proc Compare*(E1: TopoDS_Edge; E2: TopoDS_Edge): Standard_Boolean {.
    importcpp: "BRepTools::Compare(@)", header: "BRepTools.hxx".}
proc OuterWire*(F: TopoDS_Face): TopoDS_Wire {.importcpp: "BRepTools::OuterWire(@)",
    header: "BRepTools.hxx".}
proc Map3DEdges*(S: TopoDS_Shape; M: var TopTools_IndexedMapOfShape) {.
    importcpp: "BRepTools::Map3DEdges(@)", header: "BRepTools.hxx".}
proc IsReallyClosed*(E: TopoDS_Edge; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "BRepTools::IsReallyClosed(@)", header: "BRepTools.hxx".}
proc DetectClosedness*(theFace: TopoDS_Face; theUclosed: var Standard_Boolean;
                      theVclosed: var Standard_Boolean) {.
    importcpp: "BRepTools::DetectClosedness(@)", header: "BRepTools.hxx".}
proc Dump*(Sh: TopoDS_Shape; S: var Standard_OStream) {.
    importcpp: "BRepTools::Dump(@)", header: "BRepTools.hxx".}
proc Write*(Sh: TopoDS_Shape; S: var Standard_OStream;
           theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "BRepTools::Write(@)", header: "BRepTools.hxx".}
proc Read*(Sh: var TopoDS_Shape; S: var Standard_IStream; B: BRep_Builder;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "BRepTools::Read(@)", header: "BRepTools.hxx".}
proc Write*(Sh: TopoDS_Shape; File: Standard_CString;
           theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "BRepTools::Write(@)", header: "BRepTools.hxx".}
proc Read*(Sh: var TopoDS_Shape; File: Standard_CString; B: BRep_Builder;
          theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "BRepTools::Read(@)", header: "BRepTools.hxx".}
proc EvalAndUpdateTol*(theE: TopoDS_Edge; theC3d: handle[Geom_Curve];
                      theC2d: handle[Geom2d_Curve]; theS: handle[Geom_Surface];
                      theF: Standard_Real; theL: Standard_Real): Standard_Real {.
    importcpp: "BRepTools::EvalAndUpdateTol(@)", header: "BRepTools.hxx".}
proc OriEdgeInFace*(theEdge: TopoDS_Edge; theFace: TopoDS_Face): TopAbs_Orientation {.
    importcpp: "BRepTools::OriEdgeInFace(@)", header: "BRepTools.hxx".}
proc RemoveInternals*(theS: var TopoDS_Shape;
                     theForce: Standard_Boolean = Standard_False) {.
    importcpp: "BRepTools::RemoveInternals(@)", header: "BRepTools.hxx".}