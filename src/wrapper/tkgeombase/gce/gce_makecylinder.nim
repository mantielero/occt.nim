import gce_types

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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Circ"


proc cylinder*(a2: Ax2Obj; radius: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(cyl: CylinderObj; point: PntObj): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(cyl: CylinderObj; dist: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(p1: PntObj; p2: PntObj; p3: PntObj): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(axis: Ax1Obj; radius: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc cylinder*(circ: CircObj): GceMakeCylinder {.cdecl, constructor,
    importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc value*(this: GceMakeCylinder): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "gce_MakeCylinder.hxx".}
proc operator*(this: GceMakeCylinder): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeCylinder.hxx".}
converter `cylinder`*(this: GceMakeCylinder): CylinderObj {.noSideEffect, cdecl,
    importcpp: "gce_MakeCylinder::operator gp_Cylinder", header: "gce_MakeCylinder.hxx".}
