import gce_types
import ../../tkmath/gp/gp_types





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



proc newGceMakeMirror*(point: PntObj): GceMakeMirror {.cdecl, constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc newGceMakeMirror*(axis: Ax1Obj): GceMakeMirror {.cdecl, constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc newGceMakeMirror*(line: LinObj): GceMakeMirror {.cdecl, constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc newGceMakeMirror*(point: PntObj; direc: DirObj): GceMakeMirror {.cdecl, constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc newGceMakeMirror*(plane: PlnObj): GceMakeMirror {.cdecl, constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc newGceMakeMirror*(plane: Ax2Obj): GceMakeMirror {.cdecl, constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc value*(this: GceMakeMirror): TrsfObj {.noSideEffect, cdecl, importcpp: "Value",
                                     header: "gce_MakeMirror.hxx".}
proc operator*(this: GceMakeMirror): TrsfObj {.noSideEffect, cdecl,
                                        importcpp: "Operator", header: "gce_MakeMirror.hxx".}
converter `trsf`*(this: GceMakeMirror): TrsfObj {.noSideEffect, cdecl,
    importcpp: "gce_MakeMirror::operator gp_Trsf", header: "gce_MakeMirror.hxx".}


