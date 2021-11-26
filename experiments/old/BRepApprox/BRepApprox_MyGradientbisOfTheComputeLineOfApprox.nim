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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  BRepApproxMyGradientbisOfTheComputeLineOfApprox* {.
      importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox",
      header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx", bycopy.} = object


proc `new`*(this: var BRepApproxMyGradientbisOfTheComputeLineOfApprox;
           theSize: csize_t): pointer {.importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox::operator new", header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxMyGradientbisOfTheComputeLineOfApprox;
              theAddress: pointer) {.importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxMyGradientbisOfTheComputeLineOfApprox;
             theSize: csize_t): pointer {.importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox::operator new[]", header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxMyGradientbisOfTheComputeLineOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox::operator delete[]", header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `new`*(this: var BRepApproxMyGradientbisOfTheComputeLineOfApprox; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox::operator new", header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxMyGradientbisOfTheComputeLineOfApprox;
              a2: pointer; a3: pointer) {.importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxMyGradientbisOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; deg: int; tol3d: StandardReal; tol2d: StandardReal;
    nbIterations: int = 200): BRepApproxMyGradientbisOfTheComputeLineOfApprox {.
    constructor,
    importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox(@)",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc isDone*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc value*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc error*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox; index: int): StandardReal {.
    noSideEffect, importcpp: "Error",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc maxError3d*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc maxError2d*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc averageError*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "AverageError",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}