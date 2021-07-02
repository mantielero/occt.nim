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
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of IntSurf_QuadricTool"
discard "forward decl of IntPatch_WLine"
discard "forward decl of GeomInt_ThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheImpPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_TheComputeLineOfWLApprox"
discard "forward decl of GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_MyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_TheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  GeomIntWLApprox* {.importcpp: "GeomInt_WLApprox", header: "GeomInt_WLApprox.hxx",
                    bycopy.} = object


proc constructGeomIntWLApprox*(): GeomIntWLApprox {.constructor,
    importcpp: "GeomInt_WLApprox(@)", header: "GeomInt_WLApprox.hxx".}
proc perform*(this: var GeomIntWLApprox; surf1: Handle[Adaptor3dHSurface];
             surf2: Handle[Adaptor3dHSurface]; aLine: Handle[IntPatchWLine];
             approxXYZ: StandardBoolean = standardTrue;
             approxU1V1: StandardBoolean = standardTrue;
             approxU2V2: StandardBoolean = standardTrue;
             indicemin: StandardInteger = 0; indicemax: StandardInteger = 0) {.
    importcpp: "Perform", header: "GeomInt_WLApprox.hxx".}
proc perform*(this: var GeomIntWLApprox; aLine: Handle[IntPatchWLine];
             approxXYZ: StandardBoolean = standardTrue;
             approxU1V1: StandardBoolean = standardTrue;
             approxU2V2: StandardBoolean = standardTrue;
             indicemin: StandardInteger = 0; indicemax: StandardInteger = 0) {.
    importcpp: "Perform", header: "GeomInt_WLApprox.hxx".}
proc setParameters*(this: var GeomIntWLApprox; tol3d: StandardReal;
                   tol2d: StandardReal; degMin: StandardInteger;
                   degMax: StandardInteger; nbIterMax: StandardInteger;
                   nbPntMax: StandardInteger = 30;
                   approxWithTangency: StandardBoolean = standardTrue;
    parametrization: ApproxParametrizationType = approxChordLength) {.
    importcpp: "SetParameters", header: "GeomInt_WLApprox.hxx".}
proc perform*(this: var GeomIntWLApprox) {.importcpp: "Perform",
                                       header: "GeomInt_WLApprox.hxx".}
proc tolReached3d*(this: GeomIntWLApprox): StandardReal {.noSideEffect,
    importcpp: "TolReached3d", header: "GeomInt_WLApprox.hxx".}
proc tolReached2d*(this: GeomIntWLApprox): StandardReal {.noSideEffect,
    importcpp: "TolReached2d", header: "GeomInt_WLApprox.hxx".}
proc isDone*(this: GeomIntWLApprox): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomInt_WLApprox.hxx".}
proc nbMultiCurves*(this: GeomIntWLApprox): StandardInteger {.noSideEffect,
    importcpp: "NbMultiCurves", header: "GeomInt_WLApprox.hxx".}
proc value*(this: GeomIntWLApprox; index: StandardInteger): AppParCurvesMultiBSpCurve {.
    noSideEffect, importcpp: "Value", header: "GeomInt_WLApprox.hxx".}

