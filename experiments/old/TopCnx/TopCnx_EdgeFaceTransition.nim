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

discard "forward decl of gp_Dir"
type
  TopCnxEdgeFaceTransition* {.importcpp: "TopCnx_EdgeFaceTransition",
                             header: "TopCnx_EdgeFaceTransition.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## empty
                                                                                   ## algorithm.


proc constructTopCnxEdgeFaceTransition*(): TopCnxEdgeFaceTransition {.constructor,
    importcpp: "TopCnx_EdgeFaceTransition(@)",
    header: "TopCnx_EdgeFaceTransition.hxx".}
proc reset*(this: var TopCnxEdgeFaceTransition; tgt: Dir; norm: Dir; curv: cfloat) {.
    importcpp: "Reset", header: "TopCnx_EdgeFaceTransition.hxx".}
proc reset*(this: var TopCnxEdgeFaceTransition; tgt: Dir) {.importcpp: "Reset",
    header: "TopCnx_EdgeFaceTransition.hxx".}
proc addInterference*(this: var TopCnxEdgeFaceTransition; tole: cfloat; tang: Dir;
                     norm: Dir; curv: cfloat; `or`: TopAbsOrientation;
                     tr: TopAbsOrientation; bTr: TopAbsOrientation) {.
    importcpp: "AddInterference", header: "TopCnx_EdgeFaceTransition.hxx".}
proc transition*(this: TopCnxEdgeFaceTransition): TopAbsOrientation {.noSideEffect,
    importcpp: "Transition", header: "TopCnx_EdgeFaceTransition.hxx".}
proc boundaryTransition*(this: TopCnxEdgeFaceTransition): TopAbsOrientation {.
    noSideEffect, importcpp: "BoundaryTransition",
    header: "TopCnx_EdgeFaceTransition.hxx".}

























