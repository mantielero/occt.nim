import ../../tkmath/gp/gp_types
import extrema_types





##  Created on: 1991-02-26
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



proc newExtremaPOnCurv2d*(): ExtremaPOnCurv2d {.cdecl, constructor,
    importcpp: "Extrema_POnCurv2d(@)", header: "Extrema_POnCurv2d.hxx".}
proc newExtremaPOnCurv2d*(u: cfloat; p: Pnt2dObj): ExtremaPOnCurv2d {.cdecl, constructor,
    importcpp: "Extrema_POnCurv2d(@)", header: "Extrema_POnCurv2d.hxx".}
proc setValues*(this: var ExtremaPOnCurv2d; u: cfloat; p: Pnt2dObj) {.cdecl,
    importcpp: "SetValues", header: "Extrema_POnCurv2d.hxx".}
proc value*(this: ExtremaPOnCurv2d): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Value",
    header: "Extrema_POnCurv2d.hxx".}
proc parameter*(this: ExtremaPOnCurv2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Extrema_POnCurv2d.hxx".}
##  #define Pnt gp_Pnt2d
##  #define Pnt_hxx <gp_Pnt2d.hxx>
##  #define Extrema_Point Extrema_POnCurv2d
##  #define Extrema_Point_hxx <Extrema_POnCurv2d.hxx>



