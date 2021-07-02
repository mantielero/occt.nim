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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt2d"
type
  ProjLibPrjFunc* {.importcpp: "ProjLib_PrjFunc", header: "ProjLib_PrjFunc.hxx",
                   bycopy.} = object of MathFunctionSetWithDerivatives


proc constructProjLibPrjFunc*(c: Adaptor3dCurvePtr; fixVal: StandardReal;
                             s: Adaptor3dSurfacePtr; fix: StandardInteger): ProjLibPrjFunc {.
    constructor, importcpp: "ProjLib_PrjFunc(@)", header: "ProjLib_PrjFunc.hxx".}
proc nbVariables*(this: ProjLibPrjFunc): StandardInteger {.noSideEffect,
    importcpp: "NbVariables", header: "ProjLib_PrjFunc.hxx".}
proc nbEquations*(this: ProjLibPrjFunc): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "ProjLib_PrjFunc.hxx".}
proc value*(this: var ProjLibPrjFunc; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "ProjLib_PrjFunc.hxx".}
proc derivatives*(this: var ProjLibPrjFunc; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "ProjLib_PrjFunc.hxx".}
proc values*(this: var ProjLibPrjFunc; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "ProjLib_PrjFunc.hxx".}
proc solution*(this: ProjLibPrjFunc): GpPnt2d {.noSideEffect, importcpp: "Solution",
    header: "ProjLib_PrjFunc.hxx".}

