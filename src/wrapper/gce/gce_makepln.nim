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



proc newGceMakePln*(a2: gp_Ax2): GceMakePln {.cdecl, constructor,
                                       importcpp: "gce_MakePln(@)",
                                       header: "gce_MakePln.hxx".}
proc newGceMakePln*(p: gp_Pnt; v: gp_Dir): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): GceMakePln {.cdecl,
    constructor, importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(pln: gp_Pln; point: gp_Pnt): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(pln: gp_Pln; dist: cfloat): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(p1: gp_Pnt; p2: gp_Pnt; p3: gp_Pnt): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(p1: gp_Pnt; p2: gp_Pnt): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(axis: gp_Ax1): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc value*(this: GceMakePln): gp_Pln {.noSideEffect, cdecl, importcpp: "Value",
                                 header: "gce_MakePln.hxx".}
proc operator*(this: GceMakePln): gp_Pln {.noSideEffect, cdecl, importcpp: "Operator",
                                    header: "gce_MakePln.hxx".}
converter `pln`*(this: GceMakePln): gp_Pln {.noSideEffect, cdecl, importcpp: "gce_MakePln::operator gp_Pln",
                                      header: "gce_MakePln.hxx".}


