##  Created on: 1994-09-23
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2d_TrimmedCurve"
type
  MAT2dCutCurve* {.importcpp: "MAT2d_CutCurve", header: "MAT2d_CutCurve.hxx", bycopy.} = object


proc constructMAT2dCutCurve*(): MAT2dCutCurve {.constructor,
    importcpp: "MAT2d_CutCurve(@)", header: "MAT2d_CutCurve.hxx".}
proc constructMAT2dCutCurve*(c: Handle[Geom2dCurve]): MAT2dCutCurve {.constructor,
    importcpp: "MAT2d_CutCurve(@)", header: "MAT2d_CutCurve.hxx".}
proc perform*(this: var MAT2dCutCurve; c: Handle[Geom2dCurve]) {.importcpp: "Perform",
    header: "MAT2d_CutCurve.hxx".}
proc perform*(this: var MAT2dCutCurve; c: Handle[Geom2dCurve]; aSide: MAT_Side) {.
    importcpp: "Perform", header: "MAT2d_CutCurve.hxx".}
proc performInf*(this: var MAT2dCutCurve; c: Handle[Geom2dCurve]) {.
    importcpp: "PerformInf", header: "MAT2d_CutCurve.hxx".}
proc unModified*(this: MAT2dCutCurve): StandardBoolean {.noSideEffect,
    importcpp: "UnModified", header: "MAT2d_CutCurve.hxx".}
proc nbCurves*(this: MAT2dCutCurve): StandardInteger {.noSideEffect,
    importcpp: "NbCurves", header: "MAT2d_CutCurve.hxx".}
proc value*(this: MAT2dCutCurve; index: StandardInteger): Handle[Geom2dTrimmedCurve] {.
    noSideEffect, importcpp: "Value", header: "MAT2d_CutCurve.hxx".}

