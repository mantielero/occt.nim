##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of IntCurveSurface_TheHCurveTool"
type
  IntCurveSurfaceTheQuadCurvFuncOfTheQuadCurvExactHInter* {.
      importcpp: "IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter",
      header: "IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter.hxx",
      bycopy.} = object of MathFunctionWithDerivative ## ! Create the function.


proc constructIntCurveSurfaceTheQuadCurvFuncOfTheQuadCurvExactHInter*(
    q: IntSurfQuadric; c: Handle[Adaptor3dHCurve]): IntCurveSurfaceTheQuadCurvFuncOfTheQuadCurvExactHInter {.
    constructor,
    importcpp: "IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter(@)",
    header: "IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter.hxx".}
proc value*(this: var IntCurveSurfaceTheQuadCurvFuncOfTheQuadCurvExactHInter;
           param: float; f: var float): bool {.importcpp: "Value",
    header: "IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter.hxx".}
proc derivative*(this: var IntCurveSurfaceTheQuadCurvFuncOfTheQuadCurvExactHInter;
                param: float; d: var float): bool {.importcpp: "Derivative",
    header: "IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter.hxx".}
proc values*(this: var IntCurveSurfaceTheQuadCurvFuncOfTheQuadCurvExactHInter;
            param: float; f: var float; d: var float): bool {.importcpp: "Values",
    header: "IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter.hxx".}
