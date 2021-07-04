##  Created on: 1992-01-30
##  Created by: Didier PIFFAULT
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
  ../Standard/Standard_Handle, ../gp/gp_Dir, ../Standard/Standard_Real,
  ../TColStd/TColStd_Array2OfReal, TopTrans_Array2OfOrientation,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation,
  ../TopAbs/TopAbs_State

discard "forward decl of gp_Dir"
type
  TopTrans_SurfaceTransition* {.importcpp: "TopTrans_SurfaceTransition",
                               header: "TopTrans_SurfaceTransition.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Create
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## Surface
                                                                                      ## Transition.


proc constructTopTrans_SurfaceTransition*(): TopTrans_SurfaceTransition {.
    constructor, importcpp: "TopTrans_SurfaceTransition(@)",
    header: "TopTrans_SurfaceTransition.hxx".}
proc Reset*(this: var TopTrans_SurfaceTransition; Tgt: gp_Dir; Norm: gp_Dir;
           MaxD: gp_Dir; MinD: gp_Dir; MaxCurv: Standard_Real; MinCurv: Standard_Real) {.
    importcpp: "Reset", header: "TopTrans_SurfaceTransition.hxx".}
proc Reset*(this: var TopTrans_SurfaceTransition; Tgt: gp_Dir; Norm: gp_Dir) {.
    importcpp: "Reset", header: "TopTrans_SurfaceTransition.hxx".}
proc Compare*(this: var TopTrans_SurfaceTransition; Tole: Standard_Real; Norm: gp_Dir;
             MaxD: gp_Dir; MinD: gp_Dir; MaxCurv: Standard_Real;
             MinCurv: Standard_Real; S: TopAbs_Orientation; O: TopAbs_Orientation) {.
    importcpp: "Compare", header: "TopTrans_SurfaceTransition.hxx".}
proc Compare*(this: var TopTrans_SurfaceTransition; Tole: Standard_Real; Norm: gp_Dir;
             S: TopAbs_Orientation; O: TopAbs_Orientation) {.importcpp: "Compare",
    header: "TopTrans_SurfaceTransition.hxx".}
proc StateBefore*(this: TopTrans_SurfaceTransition): TopAbs_State {.noSideEffect,
    importcpp: "StateBefore", header: "TopTrans_SurfaceTransition.hxx".}
proc StateAfter*(this: TopTrans_SurfaceTransition): TopAbs_State {.noSideEffect,
    importcpp: "StateAfter", header: "TopTrans_SurfaceTransition.hxx".}
proc GetBefore*(Tran: TopAbs_Orientation): TopAbs_State {.
    importcpp: "TopTrans_SurfaceTransition::GetBefore(@)",
    header: "TopTrans_SurfaceTransition.hxx".}
proc GetAfter*(Tran: TopAbs_Orientation): TopAbs_State {.
    importcpp: "TopTrans_SurfaceTransition::GetAfter(@)",
    header: "TopTrans_SurfaceTransition.hxx".}