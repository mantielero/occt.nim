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
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation,
  ../TopAbs/TopAbs_State, ../Standard/Standard_Integer

discard "forward decl of gp_Dir"
type
  TopTrans_CurveTransition* {.importcpp: "TopTrans_CurveTransition",
                             header: "TopTrans_CurveTransition.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Create
                                                                                  ## an
                                                                                  ## empty
                                                                                  ## Curve
                                                                                  ## Transition.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Compare
                                                                                  ## two
                                                                                  ## curvature
                                                                                  ## and
                                                                                  ## return
                                                                                  ## true
                                                                                  ## if
                                                                                  ## N1,C1
                                                                                  ## is
                                                                                  ##
                                                                                  ## !
                                                                                  ## before
                                                                                  ## N2,C2
                                                                                  ## in
                                                                                  ## the
                                                                                  ## edge
                                                                                  ## orientation


proc constructTopTrans_CurveTransition*(): TopTrans_CurveTransition {.constructor,
    importcpp: "TopTrans_CurveTransition(@)",
    header: "TopTrans_CurveTransition.hxx".}
proc Reset*(this: var TopTrans_CurveTransition; Tgt: gp_Dir; Norm: gp_Dir;
           Curv: Standard_Real) {.importcpp: "Reset",
                                header: "TopTrans_CurveTransition.hxx".}
proc Reset*(this: var TopTrans_CurveTransition; Tgt: gp_Dir) {.importcpp: "Reset",
    header: "TopTrans_CurveTransition.hxx".}
proc Compare*(this: var TopTrans_CurveTransition; Tole: Standard_Real; Tang: gp_Dir;
             Norm: gp_Dir; Curv: Standard_Real; S: TopAbs_Orientation;
             Or: TopAbs_Orientation) {.importcpp: "Compare",
                                     header: "TopTrans_CurveTransition.hxx".}
proc StateBefore*(this: TopTrans_CurveTransition): TopAbs_State {.noSideEffect,
    importcpp: "StateBefore", header: "TopTrans_CurveTransition.hxx".}
proc StateAfter*(this: TopTrans_CurveTransition): TopAbs_State {.noSideEffect,
    importcpp: "StateAfter", header: "TopTrans_CurveTransition.hxx".}