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



proc newGceMakeElips2d*(majorAxis: Ax2dObj; majorRadius: cfloat; minorRadius: cfloat;
                       sense: bool = true): GceMakeElips2d {.cdecl, constructor,
    importcpp: "gce_MakeElips2d(@)", header: "gce_MakeElips2d.hxx".}
proc newGceMakeElips2d*(a: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat): GceMakeElips2d {.
    cdecl, constructor, importcpp: "gce_MakeElips2d(@)", header: "gce_MakeElips2d.hxx".}
proc newGceMakeElips2d*(s1: gp_Pnt2d; s2: gp_Pnt2d; center: gp_Pnt2d): GceMakeElips2d {.cdecl,
    constructor, importcpp: "gce_MakeElips2d(@)", header: "gce_MakeElips2d.hxx".}
proc value*(this: GceMakeElips2d): gp_Elips2d {.noSideEffect, cdecl, importcpp: "Value",
    header: "gce_MakeElips2d.hxx".}
proc operator*(this: GceMakeElips2d): gp_Elips2d {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeElips2d.hxx".}
converter `elips2d`*(this: GceMakeElips2d): gp_Elips2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeElips2d::operator gp_Elips2d", header: "gce_MakeElips2d.hxx".}


