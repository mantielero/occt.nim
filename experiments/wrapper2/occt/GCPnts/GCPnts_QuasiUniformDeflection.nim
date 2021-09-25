##  Created on: 1995-11-02
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of gp_Pnt"
type
  GCPntsQuasiUniformDeflection* {.importcpp: "GCPnts_QuasiUniformDeflection",
                                 header: "GCPnts_QuasiUniformDeflection.hxx",
                                 bycopy.} = object ## ! Constructs an empty algorithm. To define the problem
                                                ## ! to be solved, use the function Initialize.


proc constructGCPntsQuasiUniformDeflection*(): GCPntsQuasiUniformDeflection {.
    constructor, importcpp: "GCPnts_QuasiUniformDeflection(@)",
    header: "GCPnts_QuasiUniformDeflection.hxx".}
proc constructGCPntsQuasiUniformDeflection*(c: Adaptor3dCurve; deflection: float;
    continuity: GeomAbsShape = geomAbsC1): GCPntsQuasiUniformDeflection {.
    constructor, importcpp: "GCPnts_QuasiUniformDeflection(@)",
    header: "GCPnts_QuasiUniformDeflection.hxx".}
proc constructGCPntsQuasiUniformDeflection*(c: Adaptor2dCurve2d; deflection: float;
    continuity: GeomAbsShape = geomAbsC1): GCPntsQuasiUniformDeflection {.
    constructor, importcpp: "GCPnts_QuasiUniformDeflection(@)",
    header: "GCPnts_QuasiUniformDeflection.hxx".}
proc constructGCPntsQuasiUniformDeflection*(c: Adaptor3dCurve; deflection: float;
    u1: float; u2: float; continuity: GeomAbsShape = geomAbsC1): GCPntsQuasiUniformDeflection {.
    constructor, importcpp: "GCPnts_QuasiUniformDeflection(@)",
    header: "GCPnts_QuasiUniformDeflection.hxx".}
proc constructGCPntsQuasiUniformDeflection*(c: Adaptor2dCurve2d; deflection: float;
    u1: float; u2: float; continuity: GeomAbsShape = geomAbsC1): GCPntsQuasiUniformDeflection {.
    constructor, importcpp: "GCPnts_QuasiUniformDeflection(@)",
    header: "GCPnts_QuasiUniformDeflection.hxx".}
proc initialize*(this: var GCPntsQuasiUniformDeflection; c: Adaptor3dCurve;
                deflection: float; continuity: GeomAbsShape = geomAbsC1) {.
    importcpp: "Initialize", header: "GCPnts_QuasiUniformDeflection.hxx".}
proc initialize*(this: var GCPntsQuasiUniformDeflection; c: Adaptor2dCurve2d;
                deflection: float; continuity: GeomAbsShape = geomAbsC1) {.
    importcpp: "Initialize", header: "GCPnts_QuasiUniformDeflection.hxx".}
proc initialize*(this: var GCPntsQuasiUniformDeflection; c: Adaptor3dCurve;
                deflection: float; u1: float; u2: float;
                continuity: GeomAbsShape = geomAbsC1) {.importcpp: "Initialize",
    header: "GCPnts_QuasiUniformDeflection.hxx".}
proc initialize*(this: var GCPntsQuasiUniformDeflection; c: Adaptor2dCurve2d;
                deflection: float; u1: float; u2: float;
                continuity: GeomAbsShape = geomAbsC1) {.importcpp: "Initialize",
    header: "GCPnts_QuasiUniformDeflection.hxx".}
proc isDone*(this: GCPntsQuasiUniformDeflection): bool {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_QuasiUniformDeflection.hxx".}
proc nbPoints*(this: GCPntsQuasiUniformDeflection): int {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_QuasiUniformDeflection.hxx".}
proc parameter*(this: GCPntsQuasiUniformDeflection; index: int): float {.noSideEffect,
    importcpp: "Parameter", header: "GCPnts_QuasiUniformDeflection.hxx".}
proc value*(this: GCPntsQuasiUniformDeflection; index: int): Pnt {.noSideEffect,
    importcpp: "Value", header: "GCPnts_QuasiUniformDeflection.hxx".}
proc deflection*(this: GCPntsQuasiUniformDeflection): float {.noSideEffect,
    importcpp: "Deflection", header: "GCPnts_QuasiUniformDeflection.hxx".}
