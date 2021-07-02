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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntCurveSurface_TheHCurveTool"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  IntCurveSurfaceTheCSFunctionOfHInter* {.
      importcpp: "IntCurveSurface_TheCSFunctionOfHInter",
      header: "IntCurveSurface_TheCSFunctionOfHInter.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructIntCurveSurfaceTheCSFunctionOfHInter*(s: Handle[Adaptor3dHSurface];
    c: Handle[Adaptor3dHCurve]): IntCurveSurfaceTheCSFunctionOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheCSFunctionOfHInter(@)",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc nbVariables*(this: IntCurveSurfaceTheCSFunctionOfHInter): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc nbEquations*(this: IntCurveSurfaceTheCSFunctionOfHInter): StandardInteger {.
    noSideEffect, importcpp: "NbEquations",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc value*(this: var IntCurveSurfaceTheCSFunctionOfHInter; x: MathVector;
           f: var MathVector): StandardBoolean {.importcpp: "Value",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc derivatives*(this: var IntCurveSurfaceTheCSFunctionOfHInter; x: MathVector;
                 d: var MathMatrix): StandardBoolean {.importcpp: "Derivatives",
    header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc values*(this: var IntCurveSurfaceTheCSFunctionOfHInter; x: MathVector;
            f: var MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Values", header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc point*(this: IntCurveSurfaceTheCSFunctionOfHInter): GpPnt {.noSideEffect,
    importcpp: "Point", header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc root*(this: IntCurveSurfaceTheCSFunctionOfHInter): StandardReal {.noSideEffect,
    importcpp: "Root", header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc auxillarSurface*(this: IntCurveSurfaceTheCSFunctionOfHInter): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "AuxillarSurface",
                        header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}
proc auxillarCurve*(this: IntCurveSurfaceTheCSFunctionOfHInter): Handle[
    Adaptor3dHCurve] {.noSideEffect, importcpp: "AuxillarCurve",
                      header: "IntCurveSurface_TheCSFunctionOfHInter.hxx".}

