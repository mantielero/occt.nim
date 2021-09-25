##  Created on: 1992-03-23
##  Created by: Herve LEGRAND
##  Copyright (c) 1992-1999 Matra Datavision
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
  GCPntsUniformDeflection* {.importcpp: "GCPnts_UniformDeflection",
                            header: "GCPnts_UniformDeflection.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Constructs
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## algorithm.
                                                                                 ## To
                                                                                 ## define
                                                                                 ## the
                                                                                 ## problem
                                                                                 ##
                                                                                 ## !
                                                                                 ## to
                                                                                 ## be
                                                                                 ## solved,
                                                                                 ## use
                                                                                 ## the
                                                                                 ## function
                                                                                 ## Initialize.


proc constructGCPntsUniformDeflection*(): GCPntsUniformDeflection {.constructor,
    importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc constructGCPntsUniformDeflection*(c: Adaptor3dCurve; deflection: float;
                                      withControl: bool = true): GCPntsUniformDeflection {.
    constructor, importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc constructGCPntsUniformDeflection*(c: Adaptor2dCurve2d; deflection: float;
                                      withControl: bool = true): GCPntsUniformDeflection {.
    constructor, importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc constructGCPntsUniformDeflection*(c: Adaptor3dCurve; deflection: float;
                                      u1: float; u2: float; withControl: bool = true): GCPntsUniformDeflection {.
    constructor, importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc constructGCPntsUniformDeflection*(c: Adaptor2dCurve2d; deflection: float;
                                      u1: float; u2: float; withControl: bool = true): GCPntsUniformDeflection {.
    constructor, importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc initialize*(this: var GCPntsUniformDeflection; c: Adaptor3dCurve;
                deflection: float; withControl: bool = true) {.
    importcpp: "Initialize", header: "GCPnts_UniformDeflection.hxx".}
proc initialize*(this: var GCPntsUniformDeflection; c: Adaptor2dCurve2d;
                deflection: float; withControl: bool = true) {.
    importcpp: "Initialize", header: "GCPnts_UniformDeflection.hxx".}
proc initialize*(this: var GCPntsUniformDeflection; c: Adaptor3dCurve;
                deflection: float; u1: float; u2: float; withControl: bool = true) {.
    importcpp: "Initialize", header: "GCPnts_UniformDeflection.hxx".}
proc initialize*(this: var GCPntsUniformDeflection; c: Adaptor2dCurve2d;
                deflection: float; u1: float; u2: float; withControl: bool = true) {.
    importcpp: "Initialize", header: "GCPnts_UniformDeflection.hxx".}
proc isDone*(this: GCPntsUniformDeflection): bool {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_UniformDeflection.hxx".}
proc nbPoints*(this: GCPntsUniformDeflection): int {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_UniformDeflection.hxx".}
proc parameter*(this: GCPntsUniformDeflection; index: int): float {.noSideEffect,
    importcpp: "Parameter", header: "GCPnts_UniformDeflection.hxx".}
proc value*(this: GCPntsUniformDeflection; index: int): Pnt {.noSideEffect,
    importcpp: "Value", header: "GCPnts_UniformDeflection.hxx".}
proc deflection*(this: GCPntsUniformDeflection): float {.noSideEffect,
    importcpp: "Deflection", header: "GCPnts_UniformDeflection.hxx".}
