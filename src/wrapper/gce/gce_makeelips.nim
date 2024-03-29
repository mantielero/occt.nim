import gce_types
import ../gp/gp_types





##  Created on: 1992-08-26
##  Created by: Remi GILET
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



proc newGceMakeElips*(a2: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat): GceMakeElips {.
    cdecl, constructor, importcpp: "gce_MakeElips(@)", header: "gce_MakeElips.hxx".}
proc newGceMakeElips*(s1: gp_Pnt; s2: gp_Pnt; center: gp_Pnt): GceMakeElips {.cdecl, constructor,
    importcpp: "gce_MakeElips(@)", header: "gce_MakeElips.hxx".}
proc value*(this: GceMakeElips): gp_Elips {.noSideEffect, cdecl, importcpp: "Value",
                                     header: "gce_MakeElips.hxx".}
proc operator*(this: GceMakeElips): gp_Elips {.noSideEffect, cdecl,
                                        importcpp: "Operator", header: "gce_MakeElips.hxx".}
converter `elips`*(this: GceMakeElips): gp_Elips {.noSideEffect, cdecl,
    importcpp: "gce_MakeElips::operator gp_Elips", header: "gce_MakeElips.hxx".}


