import ../../tkg3d/adaptor3d/adaptor3d_types
import chfids_types





##  Created on: 1993-11-17
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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



proc newChFiDS_HElSpine*(): ChFiDS_HElSpine {.cdecl, constructor,
    importcpp: "ChFiDS_HElSpine(@)", header: "ChFiDS_HElSpine.hxx".}
proc newChFiDS_HElSpine*(c: ChFiDS_ElSpine): ChFiDS_HElSpine {.cdecl, constructor,
    importcpp: "ChFiDS_HElSpine(@)", header: "ChFiDS_HElSpine.hxx".}
proc set*(this: var ChFiDS_HElSpine; c: ChFiDS_ElSpine) {.cdecl, importcpp: "Set",
    header: "ChFiDS_HElSpine.hxx".}
proc curve*(this: ChFiDS_HElSpine): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "ChFiDS_HElSpine.hxx".}
proc getCurve*(this: var ChFiDS_HElSpine): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", header: "ChFiDS_HElSpine.hxx".}
proc changeCurve*(this: var ChFiDS_HElSpine): var ChFiDS_ElSpine {.cdecl,
    importcpp: "ChangeCurve", header: "ChFiDS_HElSpine.hxx".}




