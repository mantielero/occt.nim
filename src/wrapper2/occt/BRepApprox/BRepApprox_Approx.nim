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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../NCollection/NCollection_Vector,
  BRepApprox_TheComputeLineOfApprox, BRepApprox_TheComputeLineBezierOfApprox,
  ../Approx/Approx_MCurvesToBSpCurve, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Approx/Approx_ParametrizationType

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepApprox_SurfaceTool"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of IntSurf_QuadricTool"
discard "forward decl of BRepApprox_ApproxLine"
discard "forward decl of BRepApprox_ThePrmPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheImpPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_TheComputeLineOfApprox"
discard "forward decl of BRepApprox_MyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_MyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_TheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_MyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  BRepApprox_Approx* {.importcpp: "BRepApprox_Approx",
                      header: "BRepApprox_Approx.hxx", bycopy.} = object


proc constructBRepApprox_Approx*(): BRepApprox_Approx {.constructor,
    importcpp: "BRepApprox_Approx(@)", header: "BRepApprox_Approx.hxx".}
proc Perform*(this: var BRepApprox_Approx; Surf1: BRepAdaptor_Surface;
             Surf2: BRepAdaptor_Surface; aLine: handle[BRepApprox_ApproxLine];
             ApproxXYZ: Standard_Boolean = Standard_True;
             ApproxU1V1: Standard_Boolean = Standard_True;
             ApproxU2V2: Standard_Boolean = Standard_True;
             indicemin: Standard_Integer = 0; indicemax: Standard_Integer = 0) {.
    importcpp: "Perform", header: "BRepApprox_Approx.hxx".}
proc Perform*(this: var BRepApprox_Approx; aLine: handle[BRepApprox_ApproxLine];
             ApproxXYZ: Standard_Boolean = Standard_True;
             ApproxU1V1: Standard_Boolean = Standard_True;
             ApproxU2V2: Standard_Boolean = Standard_True;
             indicemin: Standard_Integer = 0; indicemax: Standard_Integer = 0) {.
    importcpp: "Perform", header: "BRepApprox_Approx.hxx".}
proc SetParameters*(this: var BRepApprox_Approx; Tol3d: Standard_Real;
                   Tol2d: Standard_Real; DegMin: Standard_Integer;
                   DegMax: Standard_Integer; NbIterMax: Standard_Integer;
                   NbPntMax: Standard_Integer = 30;
                   ApproxWithTangency: Standard_Boolean = Standard_True;
    Parametrization: Approx_ParametrizationType = Approx_ChordLength) {.
    importcpp: "SetParameters", header: "BRepApprox_Approx.hxx".}
proc Perform*(this: var BRepApprox_Approx) {.importcpp: "Perform",
    header: "BRepApprox_Approx.hxx".}
proc TolReached3d*(this: BRepApprox_Approx): Standard_Real {.noSideEffect,
    importcpp: "TolReached3d", header: "BRepApprox_Approx.hxx".}
proc TolReached2d*(this: BRepApprox_Approx): Standard_Real {.noSideEffect,
    importcpp: "TolReached2d", header: "BRepApprox_Approx.hxx".}
proc IsDone*(this: BRepApprox_Approx): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepApprox_Approx.hxx".}
proc NbMultiCurves*(this: BRepApprox_Approx): Standard_Integer {.noSideEffect,
    importcpp: "NbMultiCurves", header: "BRepApprox_Approx.hxx".}
proc Value*(this: BRepApprox_Approx; Index: Standard_Integer): AppParCurves_MultiBSpCurve {.
    noSideEffect, importcpp: "Value", header: "BRepApprox_Approx.hxx".}