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



proc newGceMakeDir2d*(v: gp_Vec2d): GceMakeDir2d {.cdecl, constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc newGceMakeDir2d*(coord: gp_Xy): GceMakeDir2d {.cdecl, constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc newGceMakeDir2d*(xv: cfloat; yv: cfloat): GceMakeDir2d {.cdecl, constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc newGceMakeDir2d*(p1: gp_Pnt2d; p2: gp_Pnt2d): GceMakeDir2d {.cdecl, constructor,
    importcpp: "gce_MakeDir2d(@)", header: "gce_MakeDir2d.hxx".}
proc value*(this: GceMakeDir2d): gp_Dir2d {.noSideEffect, cdecl, importcpp: "Value",
                                     header: "gce_MakeDir2d.hxx".}
proc operator*(this: GceMakeDir2d): gp_Dir2d {.noSideEffect, cdecl,
                                        importcpp: "Operator", header: "gce_MakeDir2d.hxx".}
converter `dir2d`*(this: GceMakeDir2d): gp_Dir2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeDir2d::operator gp_Dir2d", header: "gce_MakeDir2d.hxx".}


