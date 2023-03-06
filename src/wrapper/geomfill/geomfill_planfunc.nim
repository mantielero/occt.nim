import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import geomfill_types





##  Created on: 1998-10-29
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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



proc newGeomFillPlanFunc*(p: gp_Pnt; v: VecObj; c: Handle[Adaptor3dHCurve]): GeomFillPlanFunc {.
    cdecl, constructor, importcpp: "GeomFill_PlanFunc(@)", header: "GeomFill_PlanFunc.hxx".}
proc value*(this: var GeomFillPlanFunc; x: cfloat; f: var cfloat): bool {.cdecl,
    importcpp: "Value", header: "GeomFill_PlanFunc.hxx".}
proc derivative*(this: var GeomFillPlanFunc; x: cfloat; d: var cfloat): bool {.cdecl,
    importcpp: "Derivative", header: "GeomFill_PlanFunc.hxx".}
proc values*(this: var GeomFillPlanFunc; x: cfloat; f: var cfloat; d: var cfloat): bool {.
    cdecl, importcpp: "Values", header: "GeomFill_PlanFunc.hxx".}
proc d2*(this: var GeomFillPlanFunc; x: cfloat; f: var cfloat; d1: var cfloat;
        d2: var cfloat) {.cdecl, importcpp: "D2", header: "GeomFill_PlanFunc.hxx".}
proc dedt*(this: var GeomFillPlanFunc; x: cfloat; dp: VecObj; dv: VecObj; df: var cfloat) {.cdecl,
    importcpp: "DEDT", header: "GeomFill_PlanFunc.hxx".}
proc d2e*(this: var GeomFillPlanFunc; x: cfloat; dp: VecObj; d2p: VecObj; dv: VecObj; d2v: VecObj;
         dfdt: var cfloat; d2fdt2: var cfloat; d2fdtdx: var cfloat) {.cdecl,
    importcpp: "D2E", header: "GeomFill_PlanFunc.hxx".}


