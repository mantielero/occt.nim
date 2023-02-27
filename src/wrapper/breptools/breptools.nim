import breptools_types
import ../tkbrep/topods/topods_types
import ../tkmath/bnd/bnd_types
import ../tkernel/standard/standard_types
import ../tkbrep/toptools/toptools_types
import ../tkernel/message/message_types
import ../tkbrep/toptools/toptools_types
import ../tkbrep/brep/brep_types
import ../tkg3d/geom/geom_types
import ../tkg2d/geom2d/geom2d_types
import ../tkg3d/topabs/topabs_types
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
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of OSD_FileSystem"
type
  BRepTools* {.importcpp: "BRepTools", header: "BRepTools.hxx", bycopy.} = object ## !
                                                                          ## Returns in UMin,  UMax, VMin,  VMax  the
                                                                          ## bounding
                                                                          ## ! values in the
                                                                          ## parametric space of F.
                                                                          ## !
                                                                          ## Verifies that each Face from the shape has got a
                                                                          ## triangulation with a
                                                                          ## deflection
                                                                          ## smaller or equal to
                                                                          ## specified one
                                                                          ## ! and the Edges a
                                                                          ## discretization on this
                                                                          ## triangulation.
                                                                          ## ! @param
                                                                          ## theShape   [in] shape to verify
                                                                          ## ! @param
                                                                          ## theLinDefl [in]
                                                                          ## maximum
                                                                          ## allowed linear
                                                                          ## deflection
                                                                          ## ! @param
                                                                          ## theToCheckFreeEdges [in] if TRUE, then free Edges are
                                                                          ## required to have 3D
                                                                          ## polygon
                                                                          ## !
                                                                          ## @return FALSE if input Shape
                                                                          ## contains Faces
                                                                          ## without
                                                                          ## triangulation,
                                                                          ## !               or that
                                                                          ## triangulation has worse
                                                                          ## (greater)
                                                                          ## deflection than
                                                                          ## specified one,
                                                                          ## !               or Edges in Shape lack
                                                                          ## polygons on
                                                                          ## triangulation
                                                                          ## !               or free Edges in Shape lack 3D
                                                                          ## polygons
                                                                          ## !
                                                                          ## Returns  True if  the
                                                                          ## distance
                                                                          ## between the  two
                                                                          ## !
                                                                          ## vertices is lower than their
                                                                          ## tolerance.


proc UVBounds*(F: TopoDS_Face; UMin: var cfloat; UMax: var cfloat; VMin: var cfloat;
              VMax: var cfloat) {.cdecl, importcpp: "BRepTools::UVBounds(@)",
                               header: "BRepTools.hxx".}
proc UVBounds*(F: TopoDS_Face; W: TopoDS_Wire; UMin: var cfloat; UMax: var cfloat;
              VMin: var cfloat; VMax: var cfloat) {.cdecl,
    importcpp: "BRepTools::UVBounds(@)", header: "BRepTools.hxx".}
proc UVBounds*(F: TopoDS_Face; E: TopoDS_Edge; UMin: var cfloat; UMax: var cfloat;
              VMin: var cfloat; VMax: var cfloat) {.cdecl,
    importcpp: "BRepTools::UVBounds(@)", header: "BRepTools.hxx".}
proc AddUVBounds*(F: TopoDS_Face; B: var Bnd_Box2d) {.cdecl,
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc AddUVBounds*(F: TopoDS_Face; W: TopoDS_Wire; B: var Bnd_Box2d) {.cdecl,
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc AddUVBounds*(F: TopoDS_Face; E: TopoDS_Edge; B: var Bnd_Box2d) {.cdecl,
    importcpp: "BRepTools::AddUVBounds(@)", header: "BRepTools.hxx".}
proc Update*(V: TopoDS_Vertex) {.cdecl, importcpp: "BRepTools::Update(@)",
                              header: "BRepTools.hxx".}
proc Update*(E: TopoDS_Edge) {.cdecl, importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc Update*(W: TopoDS_Wire) {.cdecl, importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc Update*(F: TopoDS_Face) {.cdecl, importcpp: "BRepTools::Update(@)",
                            header: "BRepTools.hxx".}
proc Update*(S: TopoDS_Shell) {.cdecl, importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc Update*(S: TopoDS_Solid) {.cdecl, importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc Update*(C: TopoDS_CompSolid) {.cdecl, importcpp: "BRepTools::Update(@)",
                                 header: "BRepTools.hxx".}
proc Update*(C: TopoDS_Compound) {.cdecl, importcpp: "BRepTools::Update(@)",
                                header: "BRepTools.hxx".}
proc Update*(S: TopoDS_Shape) {.cdecl, importcpp: "BRepTools::Update(@)",
                             header: "BRepTools.hxx".}
proc UpdateFaceUVPoints*(theF: TopoDS_Face) {.cdecl,
    importcpp: "BRepTools::UpdateFaceUVPoints(@)", header: "BRepTools.hxx".}
proc Clean*(theShape: TopoDS_Shape; theForce: bool = false) {.cdecl,
    importcpp: "BRepTools::Clean(@)", header: "BRepTools.hxx".}
proc CleanGeometry*(theShape: TopoDS_Shape) {.cdecl,
    importcpp: "BRepTools::CleanGeometry(@)", header: "BRepTools.hxx".}
proc RemoveUnusedPCurves*(S: TopoDS_Shape) {.cdecl,
    importcpp: "BRepTools::RemoveUnusedPCurves(@)", header: "BRepTools.hxx".}
proc Triangulation*(theShape: TopoDS_Shape; theLinDefl: cfloat;
                   theToCheckFreeEdges: bool = false): bool {.cdecl,
    importcpp: "BRepTools::Triangulation(@)", header: "BRepTools.hxx".}
proc LoadTriangulation*(theShape: TopoDS_Shape; theTriangulationIdx: cint = -1;
                       theToSetAsActive: bool = false; theFileSystem: Handle[
    OSD_FileSystem] = Handle[OSD_FileSystem]()): bool {.cdecl,
    importcpp: "BRepTools::LoadTriangulation(@)", header: "BRepTools.hxx".}
proc UnloadTriangulation*(theShape: TopoDS_Shape; theTriangulationIdx: cint = -1): bool {.
    cdecl, importcpp: "BRepTools::UnloadTriangulation(@)", header: "BRepTools.hxx".}
proc ActivateTriangulation*(theShape: TopoDS_Shape; theTriangulationIdx: cint;
                           theToActivateStrictly: bool = false): bool {.cdecl,
    importcpp: "BRepTools::ActivateTriangulation(@)", header: "BRepTools.hxx".}
proc LoadAllTriangulations*(theShape: TopoDS_Shape; theFileSystem: Handle[
    OSD_FileSystem] = Handle[OSD_FileSystem]()): bool {.cdecl,
    importcpp: "BRepTools::LoadAllTriangulations(@)", header: "BRepTools.hxx".}
proc UnloadAllTriangulations*(theShape: TopoDS_Shape): bool {.cdecl,
    importcpp: "BRepTools::UnloadAllTriangulations(@)", header: "BRepTools.hxx".}
proc Compare*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): bool {.cdecl,
    importcpp: "BRepTools::Compare(@)", header: "BRepTools.hxx".}
proc Compare*(E1: TopoDS_Edge; E2: TopoDS_Edge): bool {.cdecl,
    importcpp: "BRepTools::Compare(@)", header: "BRepTools.hxx".}
proc OuterWire*(F: TopoDS_Face): TopoDS_Wire {.cdecl,
    importcpp: "BRepTools::OuterWire(@)", header: "BRepTools.hxx".}
proc Map3DEdges*(S: TopoDS_Shape; M: var TopTools_IndexedMapOfShape) {.cdecl,
    importcpp: "BRepTools::Map3DEdges(@)", header: "BRepTools.hxx".}
proc IsReallyClosed*(E: TopoDS_Edge; F: TopoDS_Face): bool {.cdecl,
    importcpp: "BRepTools::IsReallyClosed(@)", header: "BRepTools.hxx".}
proc DetectClosedness*(theFace: TopoDS_Face; theUclosed: var bool;
                      theVclosed: var bool) {.cdecl,
    importcpp: "BRepTools::DetectClosedness(@)", header: "BRepTools.hxx".}
proc Dump*(Sh: TopoDS_Shape; S: var Standard_OStream) {.cdecl,
    importcpp: "BRepTools::Dump(@)", header: "BRepTools.hxx".}
proc Write*(theShape: TopoDS_Shape; theStream: var Standard_OStream;
           theProgress: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "BRepTools::Write(@)", header: "BRepTools.hxx".}
proc Write*(theShape: TopoDS_Shape; theStream: var Standard_OStream;
           theWithTriangles: bool; theWithNormals: bool;
           theVersion: TopTools_FormatVersion;
           theProgress: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "BRepTools::Write(@)", header: "BRepTools.hxx".}
proc Read*(Sh: var TopoDS_Shape; S: var Standard_IStream; B: BRep_Builder;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "BRepTools::Read(@)", header: "BRepTools.hxx".}
proc Write*(theShape: TopoDS_Shape; theFile: cstring;
           theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "BRepTools::Write(@)", header: "BRepTools.hxx".}
proc Write*(theShape: TopoDS_Shape; theFile: cstring; theWithTriangles: bool;
           theWithNormals: bool; theVersion: TopTools_FormatVersion;
           theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "BRepTools::Write(@)", header: "BRepTools.hxx".}
proc Read*(Sh: var TopoDS_Shape; File: cstring; B: BRep_Builder;
          theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "BRepTools::Read(@)", header: "BRepTools.hxx".}
proc EvalAndUpdateTol*(theE: TopoDS_Edge; theC3d: Handle[Geom_Curve];
                      theC2d: Handle[Geom2d_Curve]; theS: Handle[Geom_Surface];
                      theF: cfloat; theL: cfloat): cfloat {.cdecl,
    importcpp: "BRepTools::EvalAndUpdateTol(@)", header: "BRepTools.hxx".}
proc OriEdgeInFace*(theEdge: TopoDS_Edge; theFace: TopoDS_Face): TopAbs_Orientation {.
    cdecl, importcpp: "BRepTools::OriEdgeInFace(@)", header: "BRepTools.hxx".}
proc RemoveInternals*(theS: var TopoDS_Shape; theForce: bool = false) {.cdecl,
    importcpp: "BRepTools::RemoveInternals(@)", header: "BRepTools.hxx".}
proc CheckLocations*(theS: TopoDS_Shape; theProblemShapes: var TopTools_ListOfShape) {.
    cdecl, importcpp: "BRepTools::CheckLocations(@)", header: "BRepTools.hxx".}