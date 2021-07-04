##  Created on: 1997-12-15
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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
  TopOpeBRepDS_define, TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State

##  TopOpeBRepDS_redu.cxx

proc FUN_scanloi*(lII: TopOpeBRepDS_ListOfInterference;
                 lFOR: var TopOpeBRepDS_ListOfInterference;
                 FOR: var Standard_Integer;
                 lREV: var TopOpeBRepDS_ListOfInterference;
                 REV: var Standard_Integer;
                 lINT: var TopOpeBRepDS_ListOfInterference;
                 INT: var Standard_Integer) {.importcpp: "FUN_scanloi(@)",
    header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_redu2d1d*(BDS: TopOpeBRepDS_DataStructure; ISE: Standard_Integer;
                     I2d: handle[TopOpeBRepDS_Interference];
                     l1d: TopOpeBRepDS_ListOfInterference;
                     newT2d: var TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "FUN_ds_redu2d1d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_GetTr*(BDS: TopOpeBRepDS_DataStructure; ISE: Standard_Integer;
                  G: Standard_Integer; LIG: TopOpeBRepDS_ListOfInterference;
                  stb: var TopAbs_State; isb: var Standard_Integer;
                  bdim: var Standard_Integer; sta: var TopAbs_State;
                  isa: var Standard_Integer; adim: var Standard_Integer): Standard_Boolean {.
    importcpp: "FUN_ds_GetTr(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
##  TopOpeBRepDS_EXPORT.cxx

proc FDS_SetT*(T: var TopOpeBRepDS_Transition; T0: TopOpeBRepDS_Transition) {.
    importcpp: "FDS_SetT(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_hasUNK*(T: TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "FDS_hasUNK(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_copy*(LI: TopOpeBRepDS_ListOfInterference;
              LII: var TopOpeBRepDS_ListOfInterference) {.importcpp: "FDS_copy(@)",
    header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_copy*(LI: TopTools_ListOfShape; LII: var TopTools_ListOfShape) {.
    importcpp: "FDS_copy(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_assign*(LI: TopOpeBRepDS_ListOfInterference;
                LII: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FDS_assign(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_assign*(LI: TopTools_ListOfShape; LII: var TopTools_ListOfShape) {.
    importcpp: "FDS_assign(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_samRk*(BDS: TopOpeBRepDS_DataStructure; Rk: Standard_Integer;
                  LI: var TopTools_ListOfShape; LIsrk: var TopTools_ListOfShape) {.
    importcpp: "FUN_ds_samRk(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_data*(I: handle[TopOpeBRepDS_Interference]; GT1: var TopOpeBRepDS_Kind;
              G1: var Standard_Integer; ST1: var TopOpeBRepDS_Kind;
              S1: var Standard_Integer) {.importcpp: "FDS_data(@)",
                                       header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_data*(it: TopOpeBRepDS_ListIteratorOfListOfInterference;
              I: var handle[TopOpeBRepDS_Interference]; GT1: var TopOpeBRepDS_Kind;
              G1: var Standard_Integer; ST1: var TopOpeBRepDS_Kind;
              S1: var Standard_Integer): Standard_Boolean {.
    importcpp: "FDS_data(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_Tdata*(I: handle[TopOpeBRepDS_Interference]; SB: var TopAbs_ShapeEnum;
               IB: var Standard_Integer; SA: var TopAbs_ShapeEnum;
               IA: var Standard_Integer) {.importcpp: "FDS_Tdata(@)",
                                        header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_Idata*(I: handle[TopOpeBRepDS_Interference]; SB: var TopAbs_ShapeEnum;
               IB: var Standard_Integer; SA: var TopAbs_ShapeEnum;
               IA: var Standard_Integer; GT1: var TopOpeBRepDS_Kind;
               G1: var Standard_Integer; ST1: var TopOpeBRepDS_Kind;
               S1: var Standard_Integer) {.importcpp: "FDS_Idata(@)",
                                        header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_getVsdm*(BDS: TopOpeBRepDS_DataStructure; iV: Standard_Integer;
                    iVsdm: var Standard_Integer): Standard_Boolean {.
    importcpp: "FUN_ds_getVsdm(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_sdm*(BDS: TopOpeBRepDS_DataStructure; s1: TopoDS_Shape; s2: TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_ds_sdm(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_aresamdom*(BDS: TopOpeBRepDS_DataStructure; ES: TopoDS_Shape;
                   F1: TopoDS_Shape; F2: TopoDS_Shape): Standard_Boolean {.
    importcpp: "FDS_aresamdom(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_aresamdom*(BDS: TopOpeBRepDS_DataStructure; SI: Standard_Integer;
                   isb1: Standard_Integer; isb2: Standard_Integer): Standard_Boolean {.
    importcpp: "FDS_aresamdom(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_EdgeIsConnexToSameDomainFaces*(E: TopoDS_Shape;
                                       HDS: handle[TopOpeBRepDS_HDataStructure]): Standard_Boolean {.
    importcpp: "FDS_EdgeIsConnexToSameDomainFaces(@)",
    header: "TopOpeBRepDS_EXPORT.hxx".}
##  not used

proc FDS_SIisGIofIofSBAofTofI*(BDS: TopOpeBRepDS_DataStructure;
                              SI: Standard_Integer;
                              I: handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    importcpp: "FDS_SIisGIofIofSBAofTofI(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_Parameter*(I: handle[TopOpeBRepDS_Interference]): Standard_Real {.
    importcpp: "FDS_Parameter(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_Parameter*(I: handle[TopOpeBRepDS_Interference]; par: var Standard_Real): Standard_Boolean {.
    importcpp: "FDS_Parameter(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_HasSameDomain3d*(BDS: TopOpeBRepDS_DataStructure; E: TopoDS_Shape;
                         PLSD: ptr TopTools_ListOfShape = nil): Standard_Boolean {.
    importcpp: "FDS_HasSameDomain3d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_Config3d*(E1: TopoDS_Shape; E2: TopoDS_Shape; c: var TopOpeBRepDS_Config): Standard_Boolean {.
    importcpp: "FDS_Config3d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_HasSameDomain2d*(BDS: TopOpeBRepDS_DataStructure; E: TopoDS_Shape;
                         PLSD: ptr TopTools_ListOfShape = nil): Standard_Boolean {.
    importcpp: "FDS_HasSameDomain2d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_getupperlower*(HDS: handle[TopOpeBRepDS_HDataStructure];
                       edgeIndex: Standard_Integer; paredge: Standard_Real;
                       p1: var Standard_Real; p2: var Standard_Real) {.
    importcpp: "FDS_getupperlower(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_getoov*(v: TopoDS_Shape; BDS: TopOpeBRepDS_DataStructure;
                   oov: var TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_ds_getoov(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_getoov*(v: TopoDS_Shape; HDS: handle[TopOpeBRepDS_HDataStructure];
                   oov: var TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_ds_getoov(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_selectTRAINTinterference*(li: TopOpeBRepDS_ListOfInterference; liINTERNAL: var TopOpeBRepDS_ListOfInterference): Standard_Boolean {.
    importcpp: "FUN_selectTRAINTinterference(@)",
    header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_completeforSE1*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforSE1(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_completeforSE2*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforSE2(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_completeforSE3*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforSE3(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_completeforSE4*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforSE4(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_completeforSE5*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforSE5(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_completeforSE6*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforSE6(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
## Standard_EXPORT void FUN_ds_completeforSE7(const Handle(TopOpeBRepDS_HDataStructure)& HDS);

proc FUN_ds_completeforE7*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforE7(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_completeforSE8*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforSE8(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
## Standard_EXPORT void FUN_ds_completeFEIGb1(const Handle(TopOpeBRepDS_HDataStructure)& HDS);

proc FUN_ds_PURGEforE9*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_PURGEforE9(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_completeforSE9*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_completeforSE9(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_complete1dForSESDM*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_complete1dForSESDM(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_redusamsha*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_redusamsha(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_shareG*(HDS: handle[TopOpeBRepDS_HDataStructure];
                   iF1: Standard_Integer; iF2: Standard_Integer;
                   iE2: Standard_Integer; Esp: TopoDS_Edge;
                   shareG: var Standard_Boolean): Standard_Boolean {.
    importcpp: "FUN_ds_shareG(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_mkTonFsdm*(HDS: handle[TopOpeBRepDS_HDataStructure];
                      iF1: Standard_Integer; iF2: Standard_Integer;
                      iE2: Standard_Integer; iEG: Standard_Integer;
                      paronEG: Standard_Real; Esp: TopoDS_Edge;
                      pardef: Standard_Boolean; T: var TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "FUN_ds_mkTonFsdm(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_oriEinF*(BDS: TopOpeBRepDS_DataStructure; E: TopoDS_Edge;
                    F: TopoDS_Shape; O: var TopAbs_Orientation): Standard_Integer {.
    importcpp: "FUN_ds_oriEinF(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_FillSDMFaces*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_FillSDMFaces(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_addSEsdm1d*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_addSEsdm1d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_hasI2d*(EIX: Standard_Integer; LI: TopOpeBRepDS_ListOfInterference;
                   LI2d: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_ds_hasI2d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_PointToVertex*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FUN_ds_PointToVertex(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_hasFEI*(pDS2d: TopOpeBRepDS_PDataStructure; F: TopoDS_Shape;
                   GI: Standard_Integer; ITRA: Standard_Integer): Standard_Boolean {.
    importcpp: "FUN_ds_hasFEI(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_ONesd*(BDS: TopOpeBRepDS_DataStructure; IE: Standard_Integer;
                  EspON: TopoDS_Shape; IEsd: var Standard_Integer): Standard_Boolean {.
    importcpp: "FUN_ds_ONesd(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_stateEwithF2d*(BDS: TopOpeBRepDS_DataStructure; E: TopoDS_Edge;
                       pE: Standard_Real; KDS: TopOpeBRepDS_Kind;
                       GDS: Standard_Integer; F1: TopoDS_Face;
                       TrmemeS: var TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "FDS_stateEwithF2d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_parbefaft*(BDS: TopOpeBRepDS_DataStructure; E: TopoDS_Edge;
                   pE: Standard_Real; pbef: Standard_Real; paft: Standard_Real;
                   isonboundper: Standard_Boolean; p1: var Standard_Real;
                   p2: var Standard_Real): Standard_Boolean {.
    importcpp: "FDS_parbefaft(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FDS_LOIinfsup*(BDS: TopOpeBRepDS_DataStructure; E: TopoDS_Edge;
                   pE: Standard_Real; KDS: TopOpeBRepDS_Kind; GDS: Standard_Integer;
                   LOI: TopOpeBRepDS_ListOfInterference; pbef: var Standard_Real;
                   paft: var Standard_Real; isonboundper: var Standard_Boolean): Standard_Boolean {.
    importcpp: "FDS_LOIinfsup(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc FUN_ds_FEIGb1TO0*(HDS: var handle[TopOpeBRepDS_HDataStructure];
                      MEspON: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State) {.
    importcpp: "FUN_ds_FEIGb1TO0(@)", header: "TopOpeBRepDS_EXPORT.hxx".}