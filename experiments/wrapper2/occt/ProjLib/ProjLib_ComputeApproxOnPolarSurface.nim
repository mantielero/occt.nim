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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
type
  ProjLibComputeApproxOnPolarSurface* {.importcpp: "ProjLib_ComputeApproxOnPolarSurface", header: "ProjLib_ComputeApproxOnPolarSurface.hxx",
                                       bycopy.} = object ## ! Empty constructor, it only sets some initial values for class fields.


proc constructProjLibComputeApproxOnPolarSurface*(): ProjLibComputeApproxOnPolarSurface {.
    constructor, importcpp: "ProjLib_ComputeApproxOnPolarSurface(@)",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc constructProjLibComputeApproxOnPolarSurface*(c: Handle[Adaptor3dHCurve];
    s: Handle[Adaptor3dHSurface]; tol: float = 1.0e-4): ProjLibComputeApproxOnPolarSurface {.
    constructor, importcpp: "ProjLib_ComputeApproxOnPolarSurface(@)",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc constructProjLibComputeApproxOnPolarSurface*(
    initCurve2d: Handle[Adaptor2dHCurve2d]; c: Handle[Adaptor3dHCurve];
    s: Handle[Adaptor3dHSurface]; tol: float): ProjLibComputeApproxOnPolarSurface {.
    constructor, importcpp: "ProjLib_ComputeApproxOnPolarSurface(@)",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc constructProjLibComputeApproxOnPolarSurface*(
    initCurve2d: Handle[Adaptor2dHCurve2d];
    initCurve2dBis: Handle[Adaptor2dHCurve2d]; c: Handle[Adaptor3dHCurve];
    s: Handle[Adaptor3dHSurface]; tol: float): ProjLibComputeApproxOnPolarSurface {.
    constructor, importcpp: "ProjLib_ComputeApproxOnPolarSurface(@)",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc setDegree*(this: var ProjLibComputeApproxOnPolarSurface; theDegMin: int;
               theDegMax: int) {.importcpp: "SetDegree", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc setMaxSegments*(this: var ProjLibComputeApproxOnPolarSurface;
                    theMaxSegments: int) {.importcpp: "SetMaxSegments",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc setBndPnt*(this: var ProjLibComputeApproxOnPolarSurface;
               theBndPnt: AppParCurvesConstraint) {.importcpp: "SetBndPnt",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc setMaxDist*(this: var ProjLibComputeApproxOnPolarSurface; theMaxDist: float) {.
    importcpp: "SetMaxDist", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc setTolerance*(this: var ProjLibComputeApproxOnPolarSurface; theTolerance: float) {.
    importcpp: "SetTolerance", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc perform*(this: var ProjLibComputeApproxOnPolarSurface;
             c: Handle[Adaptor3dHCurve]; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Perform", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc perform*(this: var ProjLibComputeApproxOnPolarSurface;
             initCurve2d: Handle[Adaptor2dHCurve2d]; c: Handle[Adaptor3dHCurve];
             s: Handle[Adaptor3dHSurface]): Handle[Geom2dBSplineCurve] {.
    importcpp: "Perform", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc buildInitialCurve2d*(this: var ProjLibComputeApproxOnPolarSurface;
                         curve: Handle[Adaptor3dHCurve];
                         s: Handle[Adaptor3dHSurface]): Handle[Adaptor2dHCurve2d] {.
    importcpp: "BuildInitialCurve2d",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc projectUsingInitialCurve2d*(this: var ProjLibComputeApproxOnPolarSurface;
                                curve: Handle[Adaptor3dHCurve];
                                s: Handle[Adaptor3dHSurface];
                                initCurve2d: Handle[Adaptor2dHCurve2d]): Handle[
    Geom2dBSplineCurve] {.importcpp: "ProjectUsingInitialCurve2d",
                         header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc bSpline*(this: ProjLibComputeApproxOnPolarSurface): Handle[Geom2dBSplineCurve] {.
    noSideEffect, importcpp: "BSpline",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc curve2d*(this: ProjLibComputeApproxOnPolarSurface): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "Curve2d",
    header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc isDone*(this: ProjLibComputeApproxOnPolarSurface): bool {.noSideEffect,
    importcpp: "IsDone", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
proc tolerance*(this: ProjLibComputeApproxOnPolarSurface): float {.noSideEffect,
    importcpp: "Tolerance", header: "ProjLib_ComputeApproxOnPolarSurface.hxx".}
