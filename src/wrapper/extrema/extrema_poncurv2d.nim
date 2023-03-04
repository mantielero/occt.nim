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

## !!!Ignored construct:  # _Extrema_POnCurv2d_HeaderFile [NewLine] # _Extrema_POnCurv2d_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < float . hxx > [NewLine] # < gp_Pnt2d . hxx > [NewLine] class gp_Pnt2d ;
## Error: did not expect <!!!


proc newExtrema_POnCurv2d*(): Extrema_POnCurv2d {.cdecl, constructor,
    importcpp: "Extrema_POnCurv2d(@)", header: "Extrema_POnCurv2d.hxx".}
proc newExtrema_POnCurv2d*(U: cfloat; P: gp_Pnt2d): Extrema_POnCurv2d {.cdecl,
    constructor, importcpp: "Extrema_POnCurv2d(@)", header: "Extrema_POnCurv2d.hxx".}
proc SetValues*(this: var Extrema_POnCurv2d; U: cfloat; P: gp_Pnt2d) {.cdecl,
    importcpp: "SetValues", header: "Extrema_POnCurv2d.hxx".}
proc Value*(this: Extrema_POnCurv2d): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Value", header: "Extrema_POnCurv2d.hxx".}
proc Parameter*(this: Extrema_POnCurv2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Extrema_POnCurv2d.hxx".}
## !!!Ignored construct:  # Pnt gp_Pnt2d [NewLine] # Pnt_hxx < gp_Pnt2d . hxx > [NewLine] # Extrema_Point Extrema_POnCurv2d [NewLine] # Extrema_Point_hxx < Extrema_POnCurv2d . hxx > [NewLine] # < Extrema_Point . lxx > [NewLine] # Pnt [NewLine] # Pnt_hxx [NewLine] # Extrema_Point [NewLine] # Extrema_Point_hxx [NewLine] #  _Extrema_POnCurv2d_HeaderFile
## Error: did not expect <!!!
