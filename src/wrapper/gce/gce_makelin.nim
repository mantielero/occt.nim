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



proc newGceMakeLin*(a1: Ax1Obj): GceMakeLin {.cdecl, constructor,
                                       importcpp: "gce_MakeLin(@)",
                                       header: "gce_MakeLin.hxx".}
proc newGceMakeLin*(p: PntObj; v: DirObj): GceMakeLin {.cdecl, constructor,
    importcpp: "gce_MakeLin(@)", header: "gce_MakeLin.hxx".}
proc newGceMakeLin*(lin: LinObj; point: PntObj): GceMakeLin {.cdecl, constructor,
    importcpp: "gce_MakeLin(@)", header: "gce_MakeLin.hxx".}
proc newGceMakeLin*(p1: PntObj; p2: PntObj): GceMakeLin {.cdecl, constructor,
    importcpp: "gce_MakeLin(@)", header: "gce_MakeLin.hxx".}
proc value*(this: GceMakeLin): LinObj {.noSideEffect, cdecl, importcpp: "Value",
                                 header: "gce_MakeLin.hxx".}
proc operator*(this: GceMakeLin): LinObj {.noSideEffect, cdecl, importcpp: "Operator",
                                    header: "gce_MakeLin.hxx".}
converter `lin`*(this: GceMakeLin): LinObj {.noSideEffect, cdecl, importcpp: "gce_MakeLin::operator gp_Lin",
                                      header: "gce_MakeLin.hxx".}


