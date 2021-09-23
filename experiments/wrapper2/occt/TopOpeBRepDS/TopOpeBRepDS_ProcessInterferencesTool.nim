##  Created on: 1997-02-14
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
  TopOpeBRepDS_define, TopOpeBRepDS_EXPORT

proc MakeCPVInterference*(T: TopOpeBRepDS_Transition; S: Standard_Integer;
                         G: Standard_Integer; P: Standard_Real;
                         GK: TopOpeBRepDS_Kind): handle[TopOpeBRepDS_Interference] {.
    importcpp: "MakeCPVInterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
  ##  transition
  ##  curve/edge index
  ##  point/vertex index
  ##  parameter of G on S
##  POINT/VERTEX

proc MakeEPVInterference*(T: TopOpeBRepDS_Transition; S: Standard_Integer;
                         G: Standard_Integer; P: Standard_Real;
                         GK: TopOpeBRepDS_Kind; B: Standard_Boolean): handle[
    TopOpeBRepDS_Interference] {.importcpp: "MakeEPVInterference(@)", header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
  ##  transition
  ##  curve/edge index
  ##  point/vertex index
  ##  parameter of G on S
##  G is a vertex (or not) of the interference master

proc MakeEPVInterference*(T: TopOpeBRepDS_Transition; S: Standard_Integer;
                         G: Standard_Integer; P: Standard_Real;
                         GK: TopOpeBRepDS_Kind; SK: TopOpeBRepDS_Kind;
                         B: Standard_Boolean): handle[TopOpeBRepDS_Interference] {.
    importcpp: "MakeEPVInterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
  ##  transition
  ##  curve/edge index
  ##  point/vertex index
  ##  parameter of G on S
  ##  POINT/VERTEX
##  G is a vertex (or not) of the interference master

proc FUN_hasStateShape*(T: TopOpeBRepDS_Transition; state: TopAbs_State;
                       shape: TopAbs_ShapeEnum): Standard_Boolean {.
    importcpp: "FUN_hasStateShape(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectTRASHAinterference*(L1: var TopOpeBRepDS_ListOfInterference;
                                  sha: TopAbs_ShapeEnum;
                                  L2: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectTRASHAinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectITRASHAinterference*(L1: var TopOpeBRepDS_ListOfInterference;
                                   Index: Standard_Integer;
                                   L2: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectITRASHAinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectTRAUNKinterference*(L1: var TopOpeBRepDS_ListOfInterference;
                                  L2: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectTRAUNKinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectTRAORIinterference*(L1: var TopOpeBRepDS_ListOfInterference;
                                  O: TopAbs_Orientation;
                                  L2: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectTRAORIinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectGKinterference*(L1: var TopOpeBRepDS_ListOfInterference;
                              GK: TopOpeBRepDS_Kind;
                              L2: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectGKinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectSKinterference*(L1: var TopOpeBRepDS_ListOfInterference;
                              SK: TopOpeBRepDS_Kind;
                              L2: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectSKinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectGIinterference*(L1: var TopOpeBRepDS_ListOfInterference;
                              GI: Standard_Integer;
                              L2: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectGIinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectSIinterference*(L1: var TopOpeBRepDS_ListOfInterference;
                              SI: Standard_Integer;
                              L2: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectSIinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_interfhassupport*(DS: TopOpeBRepDS_DataStructure;
                          I: handle[TopOpeBRepDS_Interference]; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "FUN_interfhassupport(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_transitionEQUAL*(a1: TopOpeBRepDS_Transition; a2: TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "FUN_transitionEQUAL(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_transitionSTATEEQUAL*(a1: TopOpeBRepDS_Transition;
                              a2: TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "FUN_transitionSTATEEQUAL(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_transitionSHAPEEQUAL*(a1: TopOpeBRepDS_Transition;
                              a2: TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "FUN_transitionSHAPEEQUAL(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_transitionINDEXEQUAL*(a1: TopOpeBRepDS_Transition;
                              a2: TopOpeBRepDS_Transition): Standard_Boolean {.
    importcpp: "FUN_transitionINDEXEQUAL(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_reducedoublons*(LI: var TopOpeBRepDS_ListOfInterference;
                        BDS: TopOpeBRepDS_DataStructure; SIX: Standard_Integer) {.
    importcpp: "FUN_reducedoublons(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_unkeepUNKNOWN*(LI: var TopOpeBRepDS_ListOfInterference;
                       BDS: var TopOpeBRepDS_DataStructure; SIX: Standard_Integer) {.
    importcpp: "FUN_unkeepUNKNOWN(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_select2dI*(SIX: Standard_Integer; BDS: var TopOpeBRepDS_DataStructure;
                   TRASHAk: TopAbs_ShapeEnum;
                   lI: var TopOpeBRepDS_ListOfInterference;
                   l2dI: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_select2dI(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_selectpure2dI*(lF: TopOpeBRepDS_ListOfInterference;
                       lFE: var TopOpeBRepDS_ListOfInterference;
                       l2dFE: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_selectpure2dI(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_select1dI*(SIX: Standard_Integer; BDS: var TopOpeBRepDS_DataStructure;
                   LI: var TopOpeBRepDS_ListOfInterference;
                   l1dI: var TopOpeBRepDS_ListOfInterference): Standard_Integer {.
    importcpp: "FUN_select1dI(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc FUN_select3dinterference*(SIX: Standard_Integer;
                              BDS: var TopOpeBRepDS_DataStructure;
                              lF: var TopOpeBRepDS_ListOfInterference;
                              l3dF: var TopOpeBRepDS_ListOfInterference;
                              lFE: var TopOpeBRepDS_ListOfInterference;
                              lFEresi: var TopOpeBRepDS_ListOfInterference;
                              l3dFE: var TopOpeBRepDS_ListOfInterference;
                              l3dFEresi: var TopOpeBRepDS_ListOfInterference;
                              l2dFE: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FUN_select3dinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}