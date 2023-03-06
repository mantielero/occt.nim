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



proc newGceMakeDir*(v: gp_Vec): GceMakeDir {.cdecl, constructor,
                                      importcpp: "gce_MakeDir(@)",
                                      header: "gce_MakeDir.hxx".}
proc newGceMakeDir*(coord: gp_Xyz): GceMakeDir {.cdecl, constructor,
    importcpp: "gce_MakeDir(@)", header: "gce_MakeDir.hxx".}
proc newGceMakeDir*(xv: cfloat; yv: cfloat; zv: cfloat): GceMakeDir {.cdecl, constructor,
    importcpp: "gce_MakeDir(@)", header: "gce_MakeDir.hxx".}
proc newGceMakeDir*(p1: gp_Pnt; p2: gp_Pnt): GceMakeDir {.cdecl, constructor,
    importcpp: "gce_MakeDir(@)", header: "gce_MakeDir.hxx".}
proc value*(this: GceMakeDir): gp_Dir {.noSideEffect, cdecl, importcpp: "Value",
                                 header: "gce_MakeDir.hxx".}
proc operator*(this: GceMakeDir): gp_Dir {.noSideEffect, cdecl, importcpp: "Operator",
                                    header: "gce_MakeDir.hxx".}
converter `dir`*(this: GceMakeDir): gp_Dir {.noSideEffect, cdecl, importcpp: "gce_MakeDir::operator gp_Dir",
                                      header: "gce_MakeDir.hxx".}


