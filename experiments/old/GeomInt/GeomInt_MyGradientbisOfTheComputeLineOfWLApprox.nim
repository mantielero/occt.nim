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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  GeomIntMyGradientbisOfTheComputeLineOfWLApprox* {.
      importcpp: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox",
      header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx", bycopy.} = object


proc `new`*(this: var GeomIntMyGradientbisOfTheComputeLineOfWLApprox;
           theSize: csize_t): pointer {.importcpp: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox::operator new", header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntMyGradientbisOfTheComputeLineOfWLApprox;
              theAddress: pointer) {.importcpp: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox::operator delete", header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `new[]`*(this: var GeomIntMyGradientbisOfTheComputeLineOfWLApprox;
             theSize: csize_t): pointer {.importcpp: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox::operator new[]", header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `delete[]`*(this: var GeomIntMyGradientbisOfTheComputeLineOfWLApprox;
                theAddress: pointer) {.importcpp: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox::operator delete[]", header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `new`*(this: var GeomIntMyGradientbisOfTheComputeLineOfWLApprox; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox::operator new", header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntMyGradientbisOfTheComputeLineOfWLApprox;
              a2: pointer; a3: pointer) {.importcpp: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox::operator delete", header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomIntMyGradientbisOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; deg: int; tol3d: StandardReal; tol2d: StandardReal;
    nbIterations: int = 200): GeomIntMyGradientbisOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox(@)",
    header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc isDone*(this: GeomIntMyGradientbisOfTheComputeLineOfWLApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc value*(this: GeomIntMyGradientbisOfTheComputeLineOfWLApprox): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value",
    header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc error*(this: GeomIntMyGradientbisOfTheComputeLineOfWLApprox; index: int): StandardReal {.
    noSideEffect, importcpp: "Error",
    header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc maxError3d*(this: GeomIntMyGradientbisOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc maxError2d*(this: GeomIntMyGradientbisOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc averageError*(this: GeomIntMyGradientbisOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "AverageError",
    header: "GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx".}