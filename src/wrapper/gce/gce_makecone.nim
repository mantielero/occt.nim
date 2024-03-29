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



proc newGceMakeCone*(a2: gp_Ax2; ang: cfloat; radius: cfloat): GceMakeCone {.cdecl,
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(cone: gp_Cone; point: gp_Pnt): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(cone: gp_Cone; dist: cfloat): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(p1: gp_Pnt; p2: gp_Pnt; p3: gp_Pnt; p4: gp_Pnt): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(axis: gp_Ax1; p1: gp_Pnt; p2: gp_Pnt): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(axis: gp_Lin; p1: gp_Pnt; p2: gp_Pnt): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(p1: gp_Pnt; p2: gp_Pnt; r1: cfloat; r2: cfloat): GceMakeCone {.cdecl,
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc value*(this: GceMakeCone): gp_Cone {.noSideEffect, cdecl, importcpp: "Value",
                                   header: "gce_MakeCone.hxx".}
proc operator*(this: GceMakeCone): gp_Cone {.noSideEffect, cdecl, importcpp: "Operator",
                                      header: "gce_MakeCone.hxx".}
converter `cone`*(this: GceMakeCone): gp_Cone {.noSideEffect, cdecl,
    importcpp: "gce_MakeCone::operator gp_Cone", header: "gce_MakeCone.hxx".}


