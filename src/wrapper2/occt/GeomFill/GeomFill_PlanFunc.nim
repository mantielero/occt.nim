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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_XYZ, ../gp/gp_Pnt,
  ../math/math_FunctionWithDerivative, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomFill_PlanFunc* {.importcpp: "GeomFill_PlanFunc",
                      header: "GeomFill_PlanFunc.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructGeomFill_PlanFunc*(P: gp_Pnt; V: gp_Vec; C: handle[Adaptor3d_HCurve]): GeomFill_PlanFunc {.
    constructor, importcpp: "GeomFill_PlanFunc(@)", header: "GeomFill_PlanFunc.hxx".}
proc Value*(this: var GeomFill_PlanFunc; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "GeomFill_PlanFunc.hxx".}
proc Derivative*(this: var GeomFill_PlanFunc; X: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "GeomFill_PlanFunc.hxx".}
proc Values*(this: var GeomFill_PlanFunc; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "GeomFill_PlanFunc.hxx".}
proc D2*(this: var GeomFill_PlanFunc; X: Standard_Real; F: var Standard_Real;
        D1: var Standard_Real; D2: var Standard_Real) {.importcpp: "D2",
    header: "GeomFill_PlanFunc.hxx".}
proc DEDT*(this: var GeomFill_PlanFunc; X: Standard_Real; DP: gp_Vec; DV: gp_Vec;
          DF: var Standard_Real) {.importcpp: "DEDT", header: "GeomFill_PlanFunc.hxx".}
proc D2E*(this: var GeomFill_PlanFunc; X: Standard_Real; DP: gp_Vec; D2P: gp_Vec;
         DV: gp_Vec; D2V: gp_Vec; DFDT: var Standard_Real; D2FDT2: var Standard_Real;
         D2FDTDX: var Standard_Real) {.importcpp: "D2E",
                                    header: "GeomFill_PlanFunc.hxx".}