##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox* {.importcpp: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox", header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx",
      bycopy.} = object of MathMultipleVarFunctionWithGradient ## ! this method is used each time Value or Gradient is
                                                          ## ! needed.


proc `new`*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
           theSize: csize_t): pointer {.importcpp: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox::operator new", header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
              theAddress: pointer) {.importcpp: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox::operator delete", header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `new[]`*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
             theSize: csize_t): pointer {.importcpp: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox::operator new[]", header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `delete[]`*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
                theAddress: pointer) {.importcpp: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox::operator delete[]", header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `new`*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox::operator new",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
              a2: pointer; a3: pointer) {.importcpp: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox::operator delete", header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; deg: int): GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox(@)",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc nbVariables*(this: GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox): int {.
    noSideEffect, importcpp: "NbVariables",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc value*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
           x: MathVector; f: var StandardReal): StandardBoolean {.importcpp: "Value",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc gradient*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
              x: MathVector; g: var MathVector): StandardBoolean {.
    importcpp: "Gradient",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc values*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
            x: MathVector; f: var StandardReal; g: var MathVector): StandardBoolean {.
    importcpp: "Values",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc newParameters*(this: GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox): MathVector {.
    noSideEffect, importcpp: "NewParameters",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc curveValue*(this: var GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox): AppParCurvesMultiCurve {.
    importcpp: "CurveValue",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc error*(this: GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
           iPoint: int; curveIndex: int): StandardReal {.noSideEffect,
    importcpp: "Error",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc maxError3d*(this: GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc maxError2d*(this: GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc firstConstraint*(this: GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; firstPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc lastConstraint*(this: GeomIntParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; lastPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}