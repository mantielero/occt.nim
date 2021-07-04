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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../NCollection/NCollection_Vector,
  GeomInt_TheComputeLineOfWLApprox, GeomInt_TheComputeLineBezierOfWLApprox,
  ../Approx/Approx_MCurvesToBSpCurve, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Approx/Approx_ParametrizationType

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
  GeomInt_WLApprox* {.importcpp: "GeomInt_WLApprox",
                     header: "GeomInt_WLApprox.hxx", bycopy.} = object


proc constructGeomInt_WLApprox*(): GeomInt_WLApprox {.constructor,
    importcpp: "GeomInt_WLApprox(@)", header: "GeomInt_WLApprox.hxx".}
proc Perform*(this: var GeomInt_WLApprox; Surf1: handle[Adaptor3d_HSurface];
             Surf2: handle[Adaptor3d_HSurface]; aLine: handle[IntPatch_WLine];
             ApproxXYZ: Standard_Boolean = Standard_True;
             ApproxU1V1: Standard_Boolean = Standard_True;
             ApproxU2V2: Standard_Boolean = Standard_True;
             indicemin: Standard_Integer = 0; indicemax: Standard_Integer = 0) {.
    importcpp: "Perform", header: "GeomInt_WLApprox.hxx".}
proc Perform*(this: var GeomInt_WLApprox; aLine: handle[IntPatch_WLine];
             ApproxXYZ: Standard_Boolean = Standard_True;
             ApproxU1V1: Standard_Boolean = Standard_True;
             ApproxU2V2: Standard_Boolean = Standard_True;
             indicemin: Standard_Integer = 0; indicemax: Standard_Integer = 0) {.
    importcpp: "Perform", header: "GeomInt_WLApprox.hxx".}
proc SetParameters*(this: var GeomInt_WLApprox; Tol3d: Standard_Real;
                   Tol2d: Standard_Real; DegMin: Standard_Integer;
                   DegMax: Standard_Integer; NbIterMax: Standard_Integer;
                   NbPntMax: Standard_Integer = 30;
                   ApproxWithTangency: Standard_Boolean = Standard_True;
    Parametrization: Approx_ParametrizationType = Approx_ChordLength) {.
    importcpp: "SetParameters", header: "GeomInt_WLApprox.hxx".}
proc Perform*(this: var GeomInt_WLApprox) {.importcpp: "Perform",
                                        header: "GeomInt_WLApprox.hxx".}
proc TolReached3d*(this: GeomInt_WLApprox): Standard_Real {.noSideEffect,
    importcpp: "TolReached3d", header: "GeomInt_WLApprox.hxx".}
proc TolReached2d*(this: GeomInt_WLApprox): Standard_Real {.noSideEffect,
    importcpp: "TolReached2d", header: "GeomInt_WLApprox.hxx".}
proc IsDone*(this: GeomInt_WLApprox): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomInt_WLApprox.hxx".}
proc NbMultiCurves*(this: GeomInt_WLApprox): Standard_Integer {.noSideEffect,
    importcpp: "NbMultiCurves", header: "GeomInt_WLApprox.hxx".}
proc Value*(this: GeomInt_WLApprox; Index: Standard_Integer): AppParCurves_MultiBSpCurve {.
    noSideEffect, importcpp: "Value", header: "GeomInt_WLApprox.hxx".}