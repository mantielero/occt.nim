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



proc newGceMakeHypr2d*(s1: gp_Pnt2d; s2: gp_Pnt2d; center: gp_Pnt2d): GceMakeHypr2d {.cdecl,
    constructor, importcpp: "gce_MakeHypr2d(@)", header: "gce_MakeHypr2d.hxx".}
proc newGceMakeHypr2d*(majorAxis: gp_Ax2d; majorRadius: cfloat; minorRadius: cfloat;
                      sense: bool): GceMakeHypr2d {.cdecl, constructor,
    importcpp: "gce_MakeHypr2d(@)", header: "gce_MakeHypr2d.hxx".}
proc newGceMakeHypr2d*(a: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat): GceMakeHypr2d {.
    cdecl, constructor, importcpp: "gce_MakeHypr2d(@)", header: "gce_MakeHypr2d.hxx".}
proc value*(this: GceMakeHypr2d): gp_Hypr2d {.noSideEffect, cdecl, importcpp: "Value",
                                       header: "gce_MakeHypr2d.hxx".}
proc operator*(this: GceMakeHypr2d): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeHypr2d.hxx".}
converter `hypr2d`*(this: GceMakeHypr2d): gp_Hypr2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeHypr2d::operator gp_Hypr2d", header: "gce_MakeHypr2d.hxx".}


