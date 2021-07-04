##  Created on: 1997-11-06
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Adaptor3d/Adaptor3d_CurvePtr,
  ../Adaptor3d/Adaptor3d_SurfacePtr, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../math/math_FunctionSetWithDerivatives,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of Standard_ConstructionError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt2d"
type
  ProjLib_PrjFunc* {.importcpp: "ProjLib_PrjFunc", header: "ProjLib_PrjFunc.hxx",
                    bycopy.} = object of math_FunctionSetWithDerivatives


proc constructProjLib_PrjFunc*(C: Adaptor3d_CurvePtr; FixVal: Standard_Real;
                              S: Adaptor3d_SurfacePtr; Fix: Standard_Integer): ProjLib_PrjFunc {.
    constructor, importcpp: "ProjLib_PrjFunc(@)", header: "ProjLib_PrjFunc.hxx".}
proc NbVariables*(this: ProjLib_PrjFunc): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "ProjLib_PrjFunc.hxx".}
proc NbEquations*(this: ProjLib_PrjFunc): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "ProjLib_PrjFunc.hxx".}
proc Value*(this: var ProjLib_PrjFunc; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "ProjLib_PrjFunc.hxx".}
proc Derivatives*(this: var ProjLib_PrjFunc; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "ProjLib_PrjFunc.hxx".}
proc Values*(this: var ProjLib_PrjFunc; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "ProjLib_PrjFunc.hxx".}
proc Solution*(this: ProjLib_PrjFunc): gp_Pnt2d {.noSideEffect,
    importcpp: "Solution", header: "ProjLib_PrjFunc.hxx".}