##  Created on: 1994-04-05
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  BisectorFunctionH* {.importcpp: "Bisector_FunctionH",
                      header: "Bisector_FunctionH.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructBisectorFunctionH*(c2: Handle[Geom2dCurve]; p1: Pnt2d; t1: Vec2d): BisectorFunctionH {.
    constructor, importcpp: "Bisector_FunctionH(@)",
    header: "Bisector_FunctionH.hxx".}
proc value*(this: var BisectorFunctionH; x: float; f: var float): bool {.
    importcpp: "Value", header: "Bisector_FunctionH.hxx".}
proc derivative*(this: var BisectorFunctionH; x: float; d: var float): bool {.
    importcpp: "Derivative", header: "Bisector_FunctionH.hxx".}
proc values*(this: var BisectorFunctionH; x: float; f: var float; d: var float): bool {.
    importcpp: "Values", header: "Bisector_FunctionH.hxx".}
