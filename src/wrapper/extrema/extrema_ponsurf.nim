import extrema_types
import ../gp/gp_types
##  Created on: 1991-02-21
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"


proc newExtrema_POnSurf*(): Extrema_POnSurf {.cdecl, constructor,
    importcpp: "Extrema_POnSurf(@)", header: "Extrema_POnSurf.hxx".}
proc newExtrema_POnSurf*(U: cfloat; V: cfloat; P: gp_Pnt): Extrema_POnSurf {.cdecl,
    constructor, importcpp: "Extrema_POnSurf(@)", header: "Extrema_POnSurf.hxx".}
proc Value*(this: Extrema_POnSurf): gp_Pnt {.noSideEffect, cdecl, importcpp: "Value",
    header: "Extrema_POnSurf.hxx".}
proc SetParameters*(this: var Extrema_POnSurf; theU: cfloat; theV: cfloat;
                   thePnt: gp_Pnt) {.cdecl, importcpp: "SetParameters",
                                   header: "Extrema_POnSurf.hxx".}
proc Parameter*(this: Extrema_POnSurf; U: var cfloat; V: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Parameter", header: "Extrema_POnSurf.hxx".}