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

## !!!Ignored construct:  # _Extrema_POnCurv_HeaderFile [NewLine] # _Extrema_POnCurv_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] class gp_Pnt ;
## Error: did not expect <!!!

type
  Extrema_POnCurv* {.importcpp: "Extrema_POnCurv", header: "Extrema_POnCurv.hxx",
                    bycopy.} = object ## ! Creation of an indefinite point on curve.


proc constructExtrema_POnCurv*(): Extrema_POnCurv {.constructor,
    importcpp: "Extrema_POnCurv(@)", header: "Extrema_POnCurv.hxx".}
proc constructExtrema_POnCurv*(U: Standard_Real; P: gp_Pnt): Extrema_POnCurv {.
    constructor, importcpp: "Extrema_POnCurv(@)", header: "Extrema_POnCurv.hxx".}
proc SetValues*(this: var Extrema_POnCurv; U: Standard_Real; P: gp_Pnt) {.
    importcpp: "SetValues", header: "Extrema_POnCurv.hxx".}
proc Value*(this: Extrema_POnCurv): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "Extrema_POnCurv.hxx".}
proc Parameter*(this: Extrema_POnCurv): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Extrema_POnCurv.hxx".}
## !!!Ignored construct:  # Pnt gp_Pnt [NewLine] # Pnt_hxx < gp_Pnt . hxx > [NewLine] # Extrema_Point Extrema_POnCurv [NewLine] # Extrema_Point_hxx < Extrema_POnCurv . hxx > [NewLine] # < Extrema_Point . lxx > [NewLine] # Pnt [NewLine] # Pnt_hxx [NewLine] # Extrema_Point [NewLine] # Extrema_Point_hxx [NewLine] #  _Extrema_POnCurv_HeaderFile [NewLine]
## Error: did not expect <!!!
