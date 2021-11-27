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

##  TopOpeBRepDS_redu.cxx

proc fUN_scanloi*(lII: TopOpeBRepDS_ListOfInterference;
                 lFOR: var TopOpeBRepDS_ListOfInterference; `for`: var cint;
                 lREV: var TopOpeBRepDS_ListOfInterference; rev: var cint;
                 lINT: var TopOpeBRepDS_ListOfInterference; int: var cint) {.cdecl,
    importcpp: "FUN_scanloi(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsRedu2d1d*(bds: TopOpeBRepDS_DataStructure; ise: cint;
                    i2d: Handle[TopOpeBRepDS_Interference];
                    l1d: TopOpeBRepDS_ListOfInterference;
                    newT2d: var TopOpeBRepDS_Transition): bool {.cdecl,
    importcpp: "FUN_ds_redu2d1d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsGetTr*(bds: TopOpeBRepDS_DataStructure; ise: cint; g: cint;
                 lig: TopOpeBRepDS_ListOfInterference; stb: var TopAbsState;
                 isb: var cint; bdim: var cint; sta: var TopAbsState; isa: var cint;
                 adim: var cint): bool {.cdecl, importcpp: "FUN_ds_GetTr(@)",
                                     header: "TopOpeBRepDS_EXPORT.hxx".}
##  TopOpeBRepDS_EXPORT.cxx

proc fDS_SetT*(t: var TopOpeBRepDS_Transition; t0: TopOpeBRepDS_Transition) {.cdecl,
    importcpp: "FDS_SetT(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_hasUNK*(t: TopOpeBRepDS_Transition): bool {.cdecl,
    importcpp: "FDS_hasUNK(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_copy*(li: TopOpeBRepDS_ListOfInterference;
              lii: var TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "FDS_copy(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_copy*(li: TopToolsListOfShape; lii: var TopToolsListOfShape) {.cdecl,
    importcpp: "FDS_copy(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_assign*(li: TopOpeBRepDS_ListOfInterference;
                lii: var TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "FDS_assign(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_assign*(li: TopToolsListOfShape; lii: var TopToolsListOfShape) {.cdecl,
    importcpp: "FDS_assign(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsSamRk*(bds: TopOpeBRepDS_DataStructure; rk: cint;
                 li: var TopToolsListOfShape; lIsrk: var TopToolsListOfShape) {.cdecl,
    importcpp: "FUN_ds_samRk(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_data*(i: Handle[TopOpeBRepDS_Interference]; gt1: var TopOpeBRepDS_Kind;
              g1: var cint; st1: var TopOpeBRepDS_Kind; s1: var cint) {.cdecl,
    importcpp: "FDS_data(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_data*(it: TopOpeBRepDS_ListIteratorOfListOfInterference;
              i: var Handle[TopOpeBRepDS_Interference]; gt1: var TopOpeBRepDS_Kind;
              g1: var cint; st1: var TopOpeBRepDS_Kind; s1: var cint): bool {.cdecl,
    importcpp: "FDS_data(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_Tdata*(i: Handle[TopOpeBRepDS_Interference]; sb: var TopAbsShapeEnum;
               ib: var cint; sa: var TopAbsShapeEnum; ia: var cint) {.cdecl,
    importcpp: "FDS_Tdata(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_Idata*(i: Handle[TopOpeBRepDS_Interference]; sb: var TopAbsShapeEnum;
               ib: var cint; sa: var TopAbsShapeEnum; ia: var cint;
               gt1: var TopOpeBRepDS_Kind; g1: var cint; st1: var TopOpeBRepDS_Kind;
               s1: var cint) {.cdecl, importcpp: "FDS_Idata(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsGetVsdm*(bds: TopOpeBRepDS_DataStructure; iV: cint; iVsdm: var cint): bool {.
    cdecl, importcpp: "FUN_ds_getVsdm(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsSdm*(bds: TopOpeBRepDS_DataStructure; s1: TopoDS_Shape; s2: TopoDS_Shape): bool {.
    cdecl, importcpp: "FUN_ds_sdm(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_aresamdom*(bds: TopOpeBRepDS_DataStructure; es: TopoDS_Shape;
                   f1: TopoDS_Shape; f2: TopoDS_Shape): bool {.cdecl,
    importcpp: "FDS_aresamdom(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_aresamdom*(bds: TopOpeBRepDS_DataStructure; si: cint; isb1: cint; isb2: cint): bool {.
    cdecl, importcpp: "FDS_aresamdom(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_EdgeIsConnexToSameDomainFaces*(e: TopoDS_Shape;
                                       hds: Handle[TopOpeBRepDS_HDataStructure]): bool {.
    cdecl, importcpp: "FDS_EdgeIsConnexToSameDomainFaces(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
##  not used

proc fDS_SIisGIofIofSBAofTofI*(bds: TopOpeBRepDS_DataStructure; si: cint;
                              i: Handle[TopOpeBRepDS_Interference]): bool {.cdecl,
    importcpp: "FDS_SIisGIofIofSBAofTofI(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_Parameter*(i: Handle[TopOpeBRepDS_Interference]): cfloat {.cdecl,
    importcpp: "FDS_Parameter(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_Parameter*(i: Handle[TopOpeBRepDS_Interference]; par: var cfloat): bool {.
    cdecl, importcpp: "FDS_Parameter(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_HasSameDomain3d*(bds: TopOpeBRepDS_DataStructure; e: TopoDS_Shape;
                         plsd: ptr TopToolsListOfShape = nil): bool {.cdecl,
    importcpp: "FDS_HasSameDomain3d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_Config3d*(e1: TopoDS_Shape; e2: TopoDS_Shape; c: var TopOpeBRepDS_Config): bool {.
    cdecl, importcpp: "FDS_Config3d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_HasSameDomain2d*(bds: TopOpeBRepDS_DataStructure; e: TopoDS_Shape;
                         plsd: ptr TopToolsListOfShape = nil): bool {.cdecl,
    importcpp: "FDS_HasSameDomain2d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_getupperlower*(hds: Handle[TopOpeBRepDS_HDataStructure]; edgeIndex: cint;
                       paredge: cfloat; p1: var cfloat; p2: var cfloat) {.cdecl,
    importcpp: "FDS_getupperlower(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsGetoov*(v: TopoDS_Shape; bds: TopOpeBRepDS_DataStructure;
                  oov: var TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_ds_getoov(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsGetoov*(v: TopoDS_Shape; hds: Handle[TopOpeBRepDS_HDataStructure];
                  oov: var TopoDS_Shape): bool {.cdecl,
    importcpp: "FUN_ds_getoov(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_selectTRAINTinterference*(li: TopOpeBRepDS_ListOfInterference; liINTERNAL: var TopOpeBRepDS_ListOfInterference): bool {.
    cdecl, importcpp: "FUN_selectTRAINTinterference(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsCompleteforSE1*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforSE1(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsCompleteforSE2*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforSE2(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsCompleteforSE3*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforSE3(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsCompleteforSE4*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforSE4(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsCompleteforSE5*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforSE5(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsCompleteforSE6*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforSE6(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
## Standard_EXPORT void FUN_ds_completeforSE7(const Handle(TopOpeBRepDS_HDataStructure)& HDS);

proc fUN_dsCompleteforE7*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforE7(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsCompleteforSE8*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforSE8(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
## Standard_EXPORT void FUN_ds_completeFEIGb1(const Handle(TopOpeBRepDS_HDataStructure)& HDS);

proc fUN_dsPURGEforE9*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_PURGEforE9(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsCompleteforSE9*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_completeforSE9(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsComplete1dForSESDM*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_complete1dForSESDM(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsRedusamsha*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_redusamsha(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsShareG*(hds: Handle[TopOpeBRepDS_HDataStructure]; iF1: cint; iF2: cint;
                  iE2: cint; esp: TopoDS_Edge; shareG: var bool): bool {.cdecl,
    importcpp: "FUN_ds_shareG(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsMkTonFsdm*(hds: Handle[TopOpeBRepDS_HDataStructure]; iF1: cint; iF2: cint;
                     iE2: cint; iEG: cint; paronEG: cfloat; esp: TopoDS_Edge;
                     pardef: bool; t: var TopOpeBRepDS_Transition): bool {.cdecl,
    importcpp: "FUN_ds_mkTonFsdm(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsOriEinF*(bds: TopOpeBRepDS_DataStructure; e: TopoDS_Edge; f: TopoDS_Shape;
                   o: var TopAbsOrientation): cint {.cdecl,
    importcpp: "FUN_ds_oriEinF(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsFillSDMFaces*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_FillSDMFaces(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsAddSEsdm1d*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_addSEsdm1d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsHasI2d*(eix: cint; li: TopOpeBRepDS_ListOfInterference;
                  lI2d: var TopOpeBRepDS_ListOfInterference): cint {.cdecl,
    importcpp: "FUN_ds_hasI2d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsPointToVertex*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "FUN_ds_PointToVertex(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsHasFEI*(pDS2d: TopOpeBRepDS_PDataStructure; f: TopoDS_Shape; gi: cint;
                  itra: cint): bool {.cdecl, importcpp: "FUN_ds_hasFEI(@)",
                                   header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsONesd*(bds: TopOpeBRepDS_DataStructure; ie: cint; espON: TopoDS_Shape;
                 iEsd: var cint): bool {.cdecl, importcpp: "FUN_ds_ONesd(@)",
                                     header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_stateEwithF2d*(bds: TopOpeBRepDS_DataStructure; e: TopoDS_Edge; pE: cfloat;
                       kds: TopOpeBRepDS_Kind; gds: cint; f1: TopoDS_Face;
                       trmemeS: var TopOpeBRepDS_Transition): bool {.cdecl,
    importcpp: "FDS_stateEwithF2d(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_parbefaft*(bds: TopOpeBRepDS_DataStructure; e: TopoDS_Edge; pE: cfloat;
                   pbef: cfloat; paft: cfloat; isonboundper: bool; p1: var cfloat;
                   p2: var cfloat): bool {.cdecl, importcpp: "FDS_parbefaft(@)",
                                       header: "TopOpeBRepDS_EXPORT.hxx".}
proc fDS_LOIinfsup*(bds: TopOpeBRepDS_DataStructure; e: TopoDS_Edge; pE: cfloat;
                   kds: TopOpeBRepDS_Kind; gds: cint;
                   loi: TopOpeBRepDS_ListOfInterference; pbef: var cfloat;
                   paft: var cfloat; isonboundper: var bool): bool {.cdecl,
    importcpp: "FDS_LOIinfsup(@)", header: "TopOpeBRepDS_EXPORT.hxx".}
proc fUN_dsFEIGb1TO0*(hds: var Handle[TopOpeBRepDS_HDataStructure];
                     mEspON: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State) {.
    cdecl, importcpp: "FUN_ds_FEIGb1TO0(@)", header: "TopOpeBRepDS_EXPORT.hxx".}