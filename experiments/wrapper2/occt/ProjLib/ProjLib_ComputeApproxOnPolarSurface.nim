##  Created on: 1994-10-07
##  Created by: Bruno DUMORTIER
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../AppParCurves/AppParCurves_Constraint

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
type
  ProjLib_ComputeApproxOnPolarSurface* {.importcpp: "ProjLib_ComputeApproxOnPolarSurface", header: "ProjLib_ComputeApproxOnPolarSurface.hxx",
                                        bycopy.} = object ## ! Empty constructor, it only sets some initial values for class fields.


proc constructProjLib_ComputeApproxOnPolarSurface*(): ProjLib_ComputeApproxOnPolarSurface {.
    constructor, importcpp: "ProjLib_ComputeApproxOnPolarSurface(@)",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc constructProjLib_ComputeApproxOnPolarSurface*(C: handle[Adaptor3d_HCurve];
    S: handle[Adaptor3d_HSurface]; Tol: Standard_Real = 1.0e-4): ProjLib_ComputeApproxOnPolarSurface {.
    constructor, importcpp: "ProjLib_ComputeApproxOnPolarSurface(@)",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc constructProjLib_ComputeApproxOnPolarSurface*(
    InitCurve2d: handle[Adaptor2d_HCurve2d]; C: handle[Adaptor3d_HCurve];
    S: handle[Adaptor3d_HSurface]; Tol: Standard_Real): ProjLib_ComputeApproxOnPolarSurface {.
    constructor, importcpp: "ProjLib_ComputeApproxOnPolarSurface(@)",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc constructProjLib_ComputeApproxOnPolarSurface*(
    InitCurve2d: handle[Adaptor2d_HCurve2d];
    InitCurve2dBis: handle[Adaptor2d_HCurve2d]; C: handle[Adaptor3d_HCurve];
    S: handle[Adaptor3d_HSurface]; Tol: Standard_Real): ProjLib_ComputeApproxOnPolarSurface {.
    constructor, importcpp: "ProjLib_ComputeApproxOnPolarSurface(@)",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc SetDegree*(this: var ProjLib_ComputeApproxOnPolarSurface;
               theDegMin: Standard_Integer; theDegMax: Standard_Integer) {.
    importcpp: "SetDegree", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc SetMaxSegments*(this: var ProjLib_ComputeApproxOnPolarSurface;
                    theMaxSegments: Standard_Integer) {.
    importcpp: "SetMaxSegments", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc SetBndPnt*(this: var ProjLib_ComputeApproxOnPolarSurface;
               theBndPnt: AppParCurves_Constraint) {.importcpp: "SetBndPnt",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc SetMaxDist*(this: var ProjLib_ComputeApproxOnPolarSurface;
                theMaxDist: Standard_Real) {.importcpp: "SetMaxDist",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc SetTolerance*(this: var ProjLib_ComputeApproxOnPolarSurface;
                  theTolerance: Standard_Real) {.importcpp: "SetTolerance",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc Perform*(this: var ProjLib_ComputeApproxOnPolarSurface;
             C: handle[Adaptor3d_HCurve]; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Perform", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc Perform*(this: var ProjLib_ComputeApproxOnPolarSurface;
             InitCurve2d: handle[Adaptor2d_HCurve2d]; C: handle[Adaptor3d_HCurve];
             S: handle[Adaptor3d_HSurface]): handle[Geom2d_BSplineCurve] {.
    importcpp: "Perform", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc BuildInitialCurve2d*(this: var ProjLib_ComputeApproxOnPolarSurface;
                         Curve: handle[Adaptor3d_HCurve];
                         S: handle[Adaptor3d_HSurface]): handle[Adaptor2d_HCurve2d] {.
    importcpp: "BuildInitialCurve2d",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc ProjectUsingInitialCurve2d*(this: var ProjLib_ComputeApproxOnPolarSurface;
                                Curve: handle[Adaptor3d_HCurve];
                                S: handle[Adaptor3d_HSurface];
                                InitCurve2d: handle[Adaptor2d_HCurve2d]): handle[
    Geom2d_BSplineCurve] {.importcpp: "ProjectUsingInitialCurve2d",
                          header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc BSpline*(this: ProjLib_ComputeApproxOnPolarSurface): handle[
    Geom2d_BSplineCurve] {.noSideEffect, importcpp: "BSpline",
                          header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc Curve2d*(this: ProjLib_ComputeApproxOnPolarSurface): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "Curve2d",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc IsDone*(this: ProjLib_ComputeApproxOnPolarSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc Tolerance*(this: ProjLib_ComputeApproxOnPolarSurface): Standard_Real {.
    noSideEffect, importcpp: "Tolerance",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}