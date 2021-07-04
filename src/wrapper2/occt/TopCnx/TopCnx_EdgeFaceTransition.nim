##  Created on: 1992-08-11
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
  ../Standard/Standard_Handle, ../TopTrans/TopTrans_CurveTransition,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of gp_Dir"
type
  TopCnx_EdgeFaceTransition* {.importcpp: "TopCnx_EdgeFaceTransition",
                              header: "TopCnx_EdgeFaceTransition.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Creates
                                                                                    ## an
                                                                                    ## empty
                                                                                    ## algorithm.


proc constructTopCnx_EdgeFaceTransition*(): TopCnx_EdgeFaceTransition {.
    constructor, importcpp: "TopCnx_EdgeFaceTransition(@)",
    header: "TopCnx_EdgeFaceTransition.hxx".}
proc Reset*(this: var TopCnx_EdgeFaceTransition; Tgt: gp_Dir; Norm: gp_Dir;
           Curv: Standard_Real) {.importcpp: "Reset",
                                header: "TopCnx_EdgeFaceTransition.hxx".}
proc Reset*(this: var TopCnx_EdgeFaceTransition; Tgt: gp_Dir) {.importcpp: "Reset",
    header: "TopCnx_EdgeFaceTransition.hxx".}
proc AddInterference*(this: var TopCnx_EdgeFaceTransition; Tole: Standard_Real;
                     Tang: gp_Dir; Norm: gp_Dir; Curv: Standard_Real;
                     Or: TopAbs_Orientation; Tr: TopAbs_Orientation;
                     BTr: TopAbs_Orientation) {.importcpp: "AddInterference",
    header: "TopCnx_EdgeFaceTransition.hxx".}
proc Transition*(this: TopCnx_EdgeFaceTransition): TopAbs_Orientation {.
    noSideEffect, importcpp: "Transition", header: "TopCnx_EdgeFaceTransition.hxx".}
proc BoundaryTransition*(this: TopCnx_EdgeFaceTransition): TopAbs_Orientation {.
    noSideEffect, importcpp: "BoundaryTransition",
    header: "TopCnx_EdgeFaceTransition.hxx".}