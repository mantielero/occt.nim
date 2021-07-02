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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomFillPlanFunc* {.importcpp: "GeomFill_PlanFunc",
                     header: "GeomFill_PlanFunc.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructGeomFillPlanFunc*(p: GpPnt; v: GpVec; c: Handle[Adaptor3dHCurve]): GeomFillPlanFunc {.
    constructor, importcpp: "GeomFill_PlanFunc(@)", header: "GeomFill_PlanFunc.hxx".}
proc value*(this: var GeomFillPlanFunc; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "GeomFill_PlanFunc.hxx".}
proc derivative*(this: var GeomFillPlanFunc; x: StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Derivative", header: "GeomFill_PlanFunc.hxx".}
proc values*(this: var GeomFillPlanFunc; x: StandardReal; f: var StandardReal;
            d: var StandardReal): StandardBoolean {.importcpp: "Values",
    header: "GeomFill_PlanFunc.hxx".}
proc d2*(this: var GeomFillPlanFunc; x: StandardReal; f: var StandardReal;
        d1: var StandardReal; d2: var StandardReal) {.importcpp: "D2",
    header: "GeomFill_PlanFunc.hxx".}
proc dedt*(this: var GeomFillPlanFunc; x: StandardReal; dp: GpVec; dv: GpVec;
          df: var StandardReal) {.importcpp: "DEDT", header: "GeomFill_PlanFunc.hxx".}
proc d2e*(this: var GeomFillPlanFunc; x: StandardReal; dp: GpVec; d2p: GpVec; dv: GpVec;
         d2v: GpVec; dfdt: var StandardReal; d2fdt2: var StandardReal;
         d2fdtdx: var StandardReal) {.importcpp: "D2E",
                                   header: "GeomFill_PlanFunc.hxx".}

