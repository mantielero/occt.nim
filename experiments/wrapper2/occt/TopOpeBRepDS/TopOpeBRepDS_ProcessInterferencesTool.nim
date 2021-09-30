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

proc makeCPVInterference*(t: TopOpeBRepDS_Transition; s: int; g: int; p: StandardReal;
                         gk: TopOpeBRepDS_Kind): Handle[TopOpeBRepDS_Interference] {.
    importcpp: "MakeCPVInterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
  ##  transition
  ##  curve/edge index
  ##  point/vertex index
  ##  parameter of G on S
##  POINT/VERTEX

proc makeEPVInterference*(t: TopOpeBRepDS_Transition; s: int; g: int; p: StandardReal;
                         gk: TopOpeBRepDS_Kind; b: StandardBoolean): Handle[
    TopOpeBRepDS_Interference] {.importcpp: "MakeEPVInterference(@)", header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
  ##  transition
  ##  curve/edge index
  ##  point/vertex index
  ##  parameter of G on S
##  G is a vertex (or not) of the interference master

proc makeEPVInterference*(t: TopOpeBRepDS_Transition; s: int; g: int; p: StandardReal;
                         gk: TopOpeBRepDS_Kind; sk: TopOpeBRepDS_Kind;
                         b: StandardBoolean): Handle[TopOpeBRepDS_Interference] {.
    importcpp: "MakeEPVInterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
  ##  transition
  ##  curve/edge index
  ##  point/vertex index
  ##  parameter of G on S
  ##  POINT/VERTEX
##  G is a vertex (or not) of the interference master

proc fUN_hasStateShape*(t: TopOpeBRepDS_Transition; state: TopAbsState;
                       shape: TopAbsShapeEnum): StandardBoolean {.
    importcpp: "FUN_hasStateShape(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectTRASHAinterference*(l1: var TopOpeBRepDS_ListOfInterference;
                                  sha: TopAbsShapeEnum;
                                  l2: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectTRASHAinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectITRASHAinterference*(l1: var TopOpeBRepDS_ListOfInterference;
                                   index: int;
                                   l2: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectITRASHAinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectTRAUNKinterference*(l1: var TopOpeBRepDS_ListOfInterference;
                                  l2: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectTRAUNKinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectTRAORIinterference*(l1: var TopOpeBRepDS_ListOfInterference;
                                  o: TopAbsOrientation;
                                  l2: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectTRAORIinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectGKinterference*(l1: var TopOpeBRepDS_ListOfInterference;
                              gk: TopOpeBRepDS_Kind;
                              l2: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectGKinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectSKinterference*(l1: var TopOpeBRepDS_ListOfInterference;
                              sk: TopOpeBRepDS_Kind;
                              l2: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectSKinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectGIinterference*(l1: var TopOpeBRepDS_ListOfInterference; gi: int;
                              l2: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectGIinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectSIinterference*(l1: var TopOpeBRepDS_ListOfInterference; si: int;
                              l2: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectSIinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_interfhassupport*(ds: TopOpeBRepDS_DataStructure;
                          i: Handle[TopOpeBRepDS_Interference]; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "FUN_interfhassupport(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_transitionEQUAL*(a1: TopOpeBRepDS_Transition; a2: TopOpeBRepDS_Transition): StandardBoolean {.
    importcpp: "FUN_transitionEQUAL(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_transitionSTATEEQUAL*(a1: TopOpeBRepDS_Transition;
                              a2: TopOpeBRepDS_Transition): StandardBoolean {.
    importcpp: "FUN_transitionSTATEEQUAL(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_transitionSHAPEEQUAL*(a1: TopOpeBRepDS_Transition;
                              a2: TopOpeBRepDS_Transition): StandardBoolean {.
    importcpp: "FUN_transitionSHAPEEQUAL(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_transitionINDEXEQUAL*(a1: TopOpeBRepDS_Transition;
                              a2: TopOpeBRepDS_Transition): StandardBoolean {.
    importcpp: "FUN_transitionINDEXEQUAL(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_reducedoublons*(li: var TopOpeBRepDS_ListOfInterference;
                        bds: TopOpeBRepDS_DataStructure; six: int) {.
    importcpp: "FUN_reducedoublons(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_unkeepUNKNOWN*(li: var TopOpeBRepDS_ListOfInterference;
                       bds: var TopOpeBRepDS_DataStructure; six: int) {.
    importcpp: "FUN_unkeepUNKNOWN(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_select2dI*(six: int; bds: var TopOpeBRepDS_DataStructure;
                   tRASHAk: TopAbsShapeEnum;
                   lI: var TopOpeBRepDS_ListOfInterference;
                   l2dI: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_select2dI(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_selectpure2dI*(lF: TopOpeBRepDS_ListOfInterference;
                       lFE: var TopOpeBRepDS_ListOfInterference;
                       l2dFE: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_selectpure2dI(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_select1dI*(six: int; bds: var TopOpeBRepDS_DataStructure;
                   li: var TopOpeBRepDS_ListOfInterference;
                   l1dI: var TopOpeBRepDS_ListOfInterference): int {.
    importcpp: "FUN_select1dI(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}
proc fUN_select3dinterference*(six: int; bds: var TopOpeBRepDS_DataStructure;
                              lF: var TopOpeBRepDS_ListOfInterference;
                              l3dF: var TopOpeBRepDS_ListOfInterference;
                              lFE: var TopOpeBRepDS_ListOfInterference;
                              lFEresi: var TopOpeBRepDS_ListOfInterference;
                              l3dFE: var TopOpeBRepDS_ListOfInterference;
                              l3dFEresi: var TopOpeBRepDS_ListOfInterference;
                              l2dFE: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FUN_select3dinterference(@)",
    header: "TopOpeBRepDS_ProcessInterferencesTool.hxx".}