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



proc cylinder*(a2: gp_Ax2; radius: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(cyl: gp_Cylinder; point: gp_Pnt): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(cyl: gp_Cylinder; dist: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(p1: gp_Pnt; p2: gp_Pnt; p3: gp_Pnt): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(axis: gp_Ax1; radius: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(circ: gp_Circ): GceMakeCylinder {.cdecl, constructor,
    importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc value*(this: GceMakeCylinder): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Value", header: "gce_MakeCylinder.hxx".}
proc operator*(this: GceMakeCylinder): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeCylinder.hxx".}
converter `cylinder`*(this: GceMakeCylinder): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "gce_MakeCylinder::operator gp_Cylinder", header: "gce_MakeCylinder.hxx".}


