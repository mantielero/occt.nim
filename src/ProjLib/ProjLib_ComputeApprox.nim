##  Created on: 1993-09-07
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
type
  ProjLibComputeApprox* {.importcpp: "ProjLib_ComputeApprox",
                         header: "ProjLib_ComputeApprox.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor, it only sets some
                                                                           ## initial
                                                                           ## values for class
                                                                           ## fields.


proc constructProjLibComputeApprox*(): ProjLibComputeApprox {.constructor,
    importcpp: "ProjLib_ComputeApprox(@)", header: "ProjLib_ComputeApprox.hxx".}
proc constructProjLibComputeApprox*(c: Handle[Adaptor3dHCurve];
                                   s: Handle[Adaptor3dHSurface]; tol: cfloat): ProjLibComputeApprox {.
    constructor, importcpp: "ProjLib_ComputeApprox(@)",
    header: "ProjLib_ComputeApprox.hxx".}
proc perform*(this: var ProjLibComputeApprox; c: Handle[Adaptor3dHCurve];
             s: Handle[Adaptor3dHSurface]) {.importcpp: "Perform",
    header: "ProjLib_ComputeApprox.hxx".}
proc setTolerance*(this: var ProjLibComputeApprox; theTolerance: cfloat) {.
    importcpp: "SetTolerance", header: "ProjLib_ComputeApprox.hxx".}
proc setDegree*(this: var ProjLibComputeApprox; theDegMin: cint; theDegMax: cint) {.
    importcpp: "SetDegree", header: "ProjLib_ComputeApprox.hxx".}
proc setMaxSegments*(this: var ProjLibComputeApprox; theMaxSegments: cint) {.
    importcpp: "SetMaxSegments", header: "ProjLib_ComputeApprox.hxx".}
proc setBndPnt*(this: var ProjLibComputeApprox; theBndPnt: AppParCurvesConstraint) {.
    importcpp: "SetBndPnt", header: "ProjLib_ComputeApprox.hxx".}
proc bSpline*(this: ProjLibComputeApprox): Handle[Geom2dBSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "ProjLib_ComputeApprox.hxx".}
proc bezier*(this: ProjLibComputeApprox): Handle[Geom2dBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ProjLib_ComputeApprox.hxx".}
proc tolerance*(this: ProjLibComputeApprox): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "ProjLib_ComputeApprox.hxx".}

























