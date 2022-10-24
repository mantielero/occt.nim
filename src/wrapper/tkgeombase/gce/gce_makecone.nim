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
discard "forward decl of gp_Cone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"


proc newGceMakeCone*(a2: Ax2Obj; ang: cfloat; radius: cfloat): GceMakeCone {.cdecl,
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(cone: ConeObj; point: PntObj): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(cone: ConeObj; dist: cfloat): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(p1: PntObj; p2: PntObj; p3: PntObj; p4: PntObj): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(axis: Ax1Obj; p1: PntObj; p2: PntObj): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(axis: LinObj; p1: PntObj; p2: PntObj): GceMakeCone {.cdecl, constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc newGceMakeCone*(p1: PntObj; p2: PntObj; r1: cfloat; r2: cfloat): GceMakeCone {.cdecl,
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc value*(this: GceMakeCone): ConeObj {.noSideEffect, cdecl, importcpp: "Value",
                                   header: "gce_MakeCone.hxx".}
proc operator*(this: GceMakeCone): ConeObj {.noSideEffect, cdecl, importcpp: "Operator",
                                      header: "gce_MakeCone.hxx".}
converter `cone`*(this: GceMakeCone): ConeObj {.noSideEffect, cdecl,
    importcpp: "gce_MakeCone::operator gp_Cone", header: "gce_MakeCone.hxx".}
