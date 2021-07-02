##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox", header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx",
      bycopy.} = object of MathMultipleVarFunctionWithGradient ## ! initializes the fields of the function. The approximating
                                                          ## ! curve has the desired degree Deg.
                                                          ## ! this method is used each time Value or Gradient is
                                                          ## ! needed.


proc constructBRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: StandardInteger;
    lastPoint: StandardInteger;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; deg: StandardInteger): BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox(@)",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc nbVariables*(this: BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc value*(this: var BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox;
           x: MathVector; f: var StandardReal): StandardBoolean {.importcpp: "Value",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc gradient*(this: var BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox;
              x: MathVector; g: var MathVector): StandardBoolean {.
    importcpp: "Gradient",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc values*(this: var BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox;
            x: MathVector; f: var StandardReal; g: var MathVector): StandardBoolean {.
    importcpp: "Values",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc newParameters*(this: BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox): MathVector {.
    noSideEffect, importcpp: "NewParameters",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc curveValue*(this: var BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox): AppParCurvesMultiCurve {.
    importcpp: "CurveValue",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc error*(this: BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox;
           iPoint: StandardInteger; curveIndex: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Error",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc maxError3d*(this: BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc maxError2d*(this: BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc firstConstraint*(this: BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
                     firstPoint: StandardInteger): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc lastConstraint*(this: BRepApproxParFunctionOfMyGradientbisOfTheComputeLineOfApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
                    lastPoint: StandardInteger): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx".}

