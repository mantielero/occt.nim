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



proc newGceMakeRotation*(line: gp_Lin; angle: cfloat): GceMakeRotation {.cdecl,
    constructor, importcpp: "gce_MakeRotation(@)", header: "gce_MakeRotation.hxx".}
proc newGceMakeRotation*(axis: Ax1Obj; angle: cfloat): GceMakeRotation {.cdecl,
    constructor, importcpp: "gce_MakeRotation(@)", header: "gce_MakeRotation.hxx".}
proc newGceMakeRotation*(point: gp_Pnt; direc: DirObj; angle: cfloat): GceMakeRotation {.
    cdecl, constructor, importcpp: "gce_MakeRotation(@)", header: "gce_MakeRotation.hxx".}
proc value*(this: GceMakeRotation): gp_Trsf {.noSideEffect, cdecl, importcpp: "Value",
                                       header: "gce_MakeRotation.hxx".}
proc operator*(this: GceMakeRotation): gp_Trsf {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeRotation.hxx".}
converter `trsf`*(this: GceMakeRotation): gp_Trsf {.noSideEffect, cdecl,
    importcpp: "gce_MakeRotation::operator gp_Trsf", header: "gce_MakeRotation.hxx".}


