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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
type
  ProjLib_ComputeApprox* {.importcpp: "ProjLib_ComputeApprox",
                          header: "ProjLib_ComputeApprox.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor, it only sets some
                                                                            ## initial
                                                                            ## values for
                                                                            ## class
                                                                            ## fields.


proc constructProjLib_ComputeApprox*(): ProjLib_ComputeApprox {.constructor,
    importcpp: "ProjLib_ComputeApprox(@)", header: "ProjLib_ComputeApprox.hxx".}
proc constructProjLib_ComputeApprox*(C: handle[Adaptor3d_HCurve];
                                    S: handle[Adaptor3d_HSurface];
                                    Tol: Standard_Real): ProjLib_ComputeApprox {.
    constructor, importcpp: "ProjLib_ComputeApprox(@)",
    header: "ProjLib_ComputeApprox.hxx".}
proc Perform*(this: var ProjLib_ComputeApprox; C: handle[Adaptor3d_HCurve];
             S: handle[Adaptor3d_HSurface]) {.importcpp: "Perform",
    header: "ProjLib_ComputeApprox.hxx".}
proc SetTolerance*(this: var ProjLib_ComputeApprox; theTolerance: Standard_Real) {.
    importcpp: "SetTolerance", header: "ProjLib_ComputeApprox.hxx".}
proc SetDegree*(this: var ProjLib_ComputeApprox; theDegMin: Standard_Integer;
               theDegMax: Standard_Integer) {.importcpp: "SetDegree",
    header: "ProjLib_ComputeApprox.hxx".}
proc SetMaxSegments*(this: var ProjLib_ComputeApprox;
                    theMaxSegments: Standard_Integer) {.
    importcpp: "SetMaxSegments", header: "ProjLib_ComputeApprox.hxx".}
proc SetBndPnt*(this: var ProjLib_ComputeApprox; theBndPnt: AppParCurves_Constraint) {.
    importcpp: "SetBndPnt", header: "ProjLib_ComputeApprox.hxx".}
proc BSpline*(this: ProjLib_ComputeApprox): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "ProjLib_ComputeApprox.hxx".}
proc Bezier*(this: ProjLib_ComputeApprox): handle[Geom2d_BezierCurve] {.
    noSideEffect, importcpp: "Bezier", header: "ProjLib_ComputeApprox.hxx".}
proc Tolerance*(this: ProjLib_ComputeApprox): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "ProjLib_ComputeApprox.hxx".}