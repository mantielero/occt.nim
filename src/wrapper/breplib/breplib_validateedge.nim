import breplib_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
##  Copyright (c) 2021 OPEN CASCADE SAS
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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_CurveOnSurface"


proc newBRepLib_ValidateEdge*(theReferenceCurve: Handle[Adaptor3d_Curve];
                             theOtherCurve: Handle[Adaptor3d_CurveOnSurface];
                             theSameParameter: bool): BRepLib_ValidateEdge {.cdecl,
    constructor, importcpp: "BRepLib_ValidateEdge(@)".}
proc SetControlPointsNumber*(this: var BRepLib_ValidateEdge;
                            theControlPointsNumber: cint) {.cdecl,
    importcpp: "SetControlPointsNumber".}
proc SetExitIfToleranceExceeded*(this: var BRepLib_ValidateEdge;
                                theToleranceForChecking: cfloat) {.cdecl,
    importcpp: "SetExitIfToleranceExceeded".}
proc Process*(this: var BRepLib_ValidateEdge) {.cdecl, importcpp: "Process",
    .}
proc IsDone*(this: var BRepLib_ValidateEdge): bool {.cdecl, importcpp: "IsDone",
    .}
proc CheckTolerance*(this: var BRepLib_ValidateEdge; theToleranceToCheck: cfloat): bool {.
    cdecl, importcpp: "CheckTolerance".}
proc GetMaxDistance*(this: var BRepLib_ValidateEdge): cfloat {.cdecl,
    importcpp: "GetMaxDistance".}
proc UpdateTolerance*(this: var BRepLib_ValidateEdge;
                     theToleranceToUpdate: var cfloat) {.cdecl,
    importcpp: "UpdateTolerance".}