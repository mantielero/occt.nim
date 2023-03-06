import gce_types
import ../gp/gp_types





##  Created on: 1992-09-01
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



proc newGceMakeMirror2d*(point: Pnt2dObj): GceMakeMirror2d {.cdecl, constructor,
    importcpp: "gce_MakeMirror2d(@)", header: "gce_MakeMirror2d.hxx".}
proc newGceMakeMirror2d*(axis: Ax2dObj): GceMakeMirror2d {.cdecl, constructor,
    importcpp: "gce_MakeMirror2d(@)", header: "gce_MakeMirror2d.hxx".}
proc newGceMakeMirror2d*(line: Lin2dObj): GceMakeMirror2d {.cdecl, constructor,
    importcpp: "gce_MakeMirror2d(@)", header: "gce_MakeMirror2d.hxx".}
proc newGceMakeMirror2d*(point: Pnt2dObj; direc: Dir2dObj): GceMakeMirror2d {.cdecl,
    constructor, importcpp: "gce_MakeMirror2d(@)", header: "gce_MakeMirror2d.hxx".}
proc value*(this: GceMakeMirror2d): Trsf2dObj {.noSideEffect, cdecl, importcpp: "Value",
    header: "gce_MakeMirror2d.hxx".}
proc operator*(this: GceMakeMirror2d): Trsf2dObj {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeMirror2d.hxx".}
converter `trsf2d`*(this: GceMakeMirror2d): Trsf2dObj {.noSideEffect, cdecl,
    importcpp: "gce_MakeMirror2d::operator gp_Trsf2d", header: "gce_MakeMirror2d.hxx".}


