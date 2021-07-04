##  Created on: 1994-10-10
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face,
  ../TopAbs/TopAbs_Orientation, TopOpeBRep_PFacesIntersector,
  ../TopOpeBRepDS/TopOpeBRepDS_PDataStructure, ../Standard/Standard_Integer,
  TopOpeBRep_PLineInter, ../Standard/Standard_Boolean,
  ../TopOpeBRepDS/TopOpeBRepDS_Transition, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopOpeBRepDS/TopOpeBRepDS_ListOfInterference, TopOpeBRep_PointClassifier,
  ../TopOpeBRepTool/TopOpeBRepTool_PShapeClassifier,
  ../TopOpeBRepDS/TopOpeBRepDS_Kind,
  ../TopOpeBRepDS/TopOpeBRepDS_ListIteratorOfListOfInterference,
  ../TopAbs/TopAbs_State, ../Standard/Standard_Real

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRep_FFDumper"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_FacesIntersector"
discard "forward decl of TopOpeBRep_PointClassifier"
discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_VPointInterClassifier"
discard "forward decl of TopOpeBRep_VPointInterIterator"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Point"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of TopOpeBRepDS_DataStructure"
type
  TopOpeBRep_FacesFiller* {.importcpp: "TopOpeBRep_FacesFiller",
                           header: "TopOpeBRep_FacesFiller.hxx", bycopy.} = object


proc constructTopOpeBRep_FacesFiller*(): TopOpeBRep_FacesFiller {.constructor,
    importcpp: "TopOpeBRep_FacesFiller(@)", header: "TopOpeBRep_FacesFiller.hxx".}
proc Insert*(this: var TopOpeBRep_FacesFiller; F1: TopoDS_Shape; F2: TopoDS_Shape;
            FACINT: var TopOpeBRep_FacesIntersector;
            HDS: handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Insert",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessSectionEdges*(this: var TopOpeBRep_FacesFiller) {.
    importcpp: "ProcessSectionEdges", header: "TopOpeBRep_FacesFiller.hxx".}
proc ChangePointClassifier*(this: var TopOpeBRep_FacesFiller): var TopOpeBRep_PointClassifier {.
    importcpp: "ChangePointClassifier", header: "TopOpeBRep_FacesFiller.hxx".}
proc PShapeClassifier*(this: TopOpeBRep_FacesFiller): TopOpeBRepTool_PShapeClassifier {.
    noSideEffect, importcpp: "PShapeClassifier",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc SetPShapeClassifier*(this: var TopOpeBRep_FacesFiller;
                         PSC: TopOpeBRepTool_PShapeClassifier) {.
    importcpp: "SetPShapeClassifier", header: "TopOpeBRep_FacesFiller.hxx".}
proc LoadLine*(this: var TopOpeBRep_FacesFiller; L: var TopOpeBRep_LineInter) {.
    importcpp: "LoadLine", header: "TopOpeBRep_FacesFiller.hxx".}
proc CheckLine*(this: TopOpeBRep_FacesFiller; L: var TopOpeBRep_LineInter): Standard_Boolean {.
    noSideEffect, importcpp: "CheckLine", header: "TopOpeBRep_FacesFiller.hxx".}
proc VP_Position*(this: var TopOpeBRep_FacesFiller;
                 FACINT: var TopOpeBRep_FacesIntersector) {.
    importcpp: "VP_Position", header: "TopOpeBRep_FacesFiller.hxx".}
proc VP_Position*(this: var TopOpeBRep_FacesFiller; L: var TopOpeBRep_LineInter) {.
    importcpp: "VP_Position", header: "TopOpeBRep_FacesFiller.hxx".}
proc VP_PositionOnL*(this: var TopOpeBRep_FacesFiller; L: var TopOpeBRep_LineInter) {.
    importcpp: "VP_PositionOnL", header: "TopOpeBRep_FacesFiller.hxx".}
proc VP_PositionOnR*(this: var TopOpeBRep_FacesFiller; L: var TopOpeBRep_LineInter) {.
    importcpp: "VP_PositionOnR", header: "TopOpeBRep_FacesFiller.hxx".}
proc VP_Position*(this: var TopOpeBRep_FacesFiller; VP: var TopOpeBRep_VPointInter;
                 VPC: var TopOpeBRep_VPointInterClassifier) {.
    importcpp: "VP_Position", header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessLine*(this: var TopOpeBRep_FacesFiller) {.importcpp: "ProcessLine",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc ResetDSC*(this: var TopOpeBRep_FacesFiller) {.importcpp: "ResetDSC",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessRLine*(this: var TopOpeBRep_FacesFiller) {.importcpp: "ProcessRLine",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc FillLineVPonR*(this: var TopOpeBRep_FacesFiller) {.importcpp: "FillLineVPonR",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc FillLine*(this: var TopOpeBRep_FacesFiller) {.importcpp: "FillLine",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc AddShapesLine*(this: var TopOpeBRep_FacesFiller) {.importcpp: "AddShapesLine",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc GetESL*(this: var TopOpeBRep_FacesFiller; LES: var TopTools_ListOfShape) {.
    importcpp: "GetESL", header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessVPR*(this: var TopOpeBRep_FacesFiller; FF: var TopOpeBRep_FacesFiller;
                VP: TopOpeBRep_VPointInter) {.importcpp: "ProcessVPR",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessVPIonR*(this: var TopOpeBRep_FacesFiller;
                   VPI: var TopOpeBRep_VPointInterIterator;
                   trans1: TopOpeBRepDS_Transition; F1: TopoDS_Shape;
                   ShapeIndex: Standard_Integer) {.importcpp: "ProcessVPIonR",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessVPonR*(this: var TopOpeBRep_FacesFiller; VP: TopOpeBRep_VPointInter;
                  trans1: TopOpeBRepDS_Transition; F1: TopoDS_Shape;
                  ShapeIndex: Standard_Integer) {.importcpp: "ProcessVPonR",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessVPonclosingR*(this: var TopOpeBRep_FacesFiller;
                         VP: TopOpeBRep_VPointInter; F1: TopoDS_Shape;
                         ShapeIndex: Standard_Integer;
                         transEdge: TopOpeBRepDS_Transition;
                         PVKind: TopOpeBRepDS_Kind; PVIndex: Standard_Integer;
                         EPIfound: Standard_Boolean;
                         IEPI: handle[TopOpeBRepDS_Interference]) {.
    importcpp: "ProcessVPonclosingR", header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessVPondgE*(this: var TopOpeBRep_FacesFiller; VP: TopOpeBRep_VPointInter;
                    ShapeIndex: Standard_Integer; PVKind: var TopOpeBRepDS_Kind;
                    PVIndex: var Standard_Integer; EPIfound: var Standard_Boolean;
                    IEPI: var handle[TopOpeBRepDS_Interference];
                    CPIfound: var Standard_Boolean;
                    ICPI: var handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    importcpp: "ProcessVPondgE", header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessVPInotonR*(this: var TopOpeBRep_FacesFiller;
                      VPI: var TopOpeBRep_VPointInterIterator) {.
    importcpp: "ProcessVPInotonR", header: "TopOpeBRep_FacesFiller.hxx".}
proc ProcessVPnotonR*(this: var TopOpeBRep_FacesFiller; VP: TopOpeBRep_VPointInter) {.
    importcpp: "ProcessVPnotonR", header: "TopOpeBRep_FacesFiller.hxx".}
proc GetGeometry*(this: var TopOpeBRep_FacesFiller;
                 IT: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                 VP: TopOpeBRep_VPointInter; G: var Standard_Integer;
                 K: var TopOpeBRepDS_Kind): Standard_Boolean {.
    importcpp: "GetGeometry", header: "TopOpeBRep_FacesFiller.hxx".}
proc MakeGeometry*(this: var TopOpeBRep_FacesFiller; VP: TopOpeBRep_VPointInter;
                  ShapeIndex: Standard_Integer; K: var TopOpeBRepDS_Kind): Standard_Integer {.
    importcpp: "MakeGeometry", header: "TopOpeBRep_FacesFiller.hxx".}
proc StoreCurveInterference*(this: var TopOpeBRep_FacesFiller;
                            I: handle[TopOpeBRepDS_Interference]) {.
    importcpp: "StoreCurveInterference", header: "TopOpeBRep_FacesFiller.hxx".}
proc GetFFGeometry*(this: TopOpeBRep_FacesFiller; DSP: TopOpeBRepDS_Point;
                   K: var TopOpeBRepDS_Kind; G: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetFFGeometry", header: "TopOpeBRep_FacesFiller.hxx".}
proc GetFFGeometry*(this: TopOpeBRep_FacesFiller; VP: TopOpeBRep_VPointInter;
                   K: var TopOpeBRepDS_Kind; G: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetFFGeometry", header: "TopOpeBRep_FacesFiller.hxx".}
proc ChangeFacesIntersector*(this: var TopOpeBRep_FacesFiller): var TopOpeBRep_FacesIntersector {.
    importcpp: "ChangeFacesIntersector", header: "TopOpeBRep_FacesFiller.hxx".}
proc HDataStructure*(this: var TopOpeBRep_FacesFiller): handle[
    TopOpeBRepDS_HDataStructure] {.importcpp: "HDataStructure",
                                  header: "TopOpeBRep_FacesFiller.hxx".}
proc ChangeDataStructure*(this: var TopOpeBRep_FacesFiller): var TopOpeBRepDS_DataStructure {.
    importcpp: "ChangeDataStructure", header: "TopOpeBRep_FacesFiller.hxx".}
proc Face*(this: TopOpeBRep_FacesFiller; I: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "Face", header: "TopOpeBRep_FacesFiller.hxx".}
proc FaceFaceTransition*(this: TopOpeBRep_FacesFiller; L: TopOpeBRep_LineInter;
                        I: Standard_Integer): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "FaceFaceTransition",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc FaceFaceTransition*(this: TopOpeBRep_FacesFiller; I: Standard_Integer): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "FaceFaceTransition",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc PFacesIntersectorDummy*(this: TopOpeBRep_FacesFiller): TopOpeBRep_PFacesIntersector {.
    noSideEffect, importcpp: "PFacesIntersectorDummy",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc PDataStructureDummy*(this: TopOpeBRep_FacesFiller): TopOpeBRepDS_PDataStructure {.
    noSideEffect, importcpp: "PDataStructureDummy",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc PLineInterDummy*(this: TopOpeBRep_FacesFiller): TopOpeBRep_PLineInter {.
    noSideEffect, importcpp: "PLineInterDummy",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc SetTraceIndex*(this: var TopOpeBRep_FacesFiller; exF1: Standard_Integer;
                   exF2: Standard_Integer) {.importcpp: "SetTraceIndex",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc GetTraceIndex*(this: TopOpeBRep_FacesFiller; exF1: var Standard_Integer;
                   exF2: var Standard_Integer) {.noSideEffect,
    importcpp: "GetTraceIndex", header: "TopOpeBRep_FacesFiller.hxx".}
proc Lminmax*(L: TopOpeBRep_LineInter; pmin: var Standard_Real;
             pmax: var Standard_Real) {.importcpp: "TopOpeBRep_FacesFiller::Lminmax(@)",
                                     header: "TopOpeBRep_FacesFiller.hxx".}
proc LSameDomainERL*(L: TopOpeBRep_LineInter; ERL: TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRep_FacesFiller::LSameDomainERL(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc IsVPtransLok*(L: TopOpeBRep_LineInter; iVP: Standard_Integer;
                  SI12: Standard_Integer; T: var TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "TopOpeBRep_FacesFiller::IsVPtransLok(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc TransvpOK*(L: TopOpeBRep_LineInter; iVP: Standard_Integer; SI: Standard_Integer;
               isINOUT: Standard_Boolean): Standard_Boolean {.
    importcpp: "TopOpeBRep_FacesFiller::TransvpOK(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc VPParamOnER*(vp: TopOpeBRep_VPointInter; Lrest: TopOpeBRep_LineInter): Standard_Real {.
    importcpp: "TopOpeBRep_FacesFiller::VPParamOnER(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc EqualpPonR*(Lrest: TopOpeBRep_LineInter; VP1: TopOpeBRep_VPointInter;
                VP2: TopOpeBRep_VPointInter): Standard_Boolean {.
    importcpp: "TopOpeBRep_FacesFiller::EqualpPonR(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}