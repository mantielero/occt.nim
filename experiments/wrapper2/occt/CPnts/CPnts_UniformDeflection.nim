##  Created on: 1991-02-27
##  Created by: Jean Claude Vauthier
##  Copyright (c) 1991-1999 Matra Datavision
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
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  CPntsUniformDeflection* {.importcpp: "CPnts_UniformDeflection",
                           header: "CPnts_UniformDeflection.hxx", bycopy.} = object ## !
                                                                               ## creation
                                                                               ## of a
                                                                               ## indefinite
                                                                               ## UniformDeflection
                                                                               ## !
                                                                               ## algorithm


proc constructCPntsUniformDeflection*(): CPntsUniformDeflection {.constructor,
    importcpp: "CPnts_UniformDeflection(@)", header: "CPnts_UniformDeflection.hxx".}
proc constructCPntsUniformDeflection*(c: Adaptor3dCurve; deflection: float;
                                     resolution: float; withControl: bool): CPntsUniformDeflection {.
    constructor, importcpp: "CPnts_UniformDeflection(@)",
    header: "CPnts_UniformDeflection.hxx".}
proc constructCPntsUniformDeflection*(c: Adaptor2dCurve2d; deflection: float;
                                     resolution: float; withControl: bool): CPntsUniformDeflection {.
    constructor, importcpp: "CPnts_UniformDeflection(@)",
    header: "CPnts_UniformDeflection.hxx".}
proc constructCPntsUniformDeflection*(c: Adaptor3dCurve; deflection: float;
                                     u1: float; u2: float; resolution: float;
                                     withControl: bool): CPntsUniformDeflection {.
    constructor, importcpp: "CPnts_UniformDeflection(@)",
    header: "CPnts_UniformDeflection.hxx".}
proc constructCPntsUniformDeflection*(c: Adaptor2dCurve2d; deflection: float;
                                     u1: float; u2: float; resolution: float;
                                     withControl: bool): CPntsUniformDeflection {.
    constructor, importcpp: "CPnts_UniformDeflection(@)",
    header: "CPnts_UniformDeflection.hxx".}
proc initialize*(this: var CPntsUniformDeflection; c: Adaptor3dCurve;
                deflection: float; resolution: float; withControl: bool) {.
    importcpp: "Initialize", header: "CPnts_UniformDeflection.hxx".}
proc initialize*(this: var CPntsUniformDeflection; c: Adaptor2dCurve2d;
                deflection: float; resolution: float; withControl: bool) {.
    importcpp: "Initialize", header: "CPnts_UniformDeflection.hxx".}
proc initialize*(this: var CPntsUniformDeflection; c: Adaptor3dCurve;
                deflection: float; u1: float; u2: float; resolution: float;
                withControl: bool) {.importcpp: "Initialize",
                                   header: "CPnts_UniformDeflection.hxx".}
proc initialize*(this: var CPntsUniformDeflection; c: Adaptor2dCurve2d;
                deflection: float; u1: float; u2: float; resolution: float;
                withControl: bool) {.importcpp: "Initialize",
                                   header: "CPnts_UniformDeflection.hxx".}
proc isAllDone*(this: CPntsUniformDeflection): bool {.noSideEffect,
    importcpp: "IsAllDone", header: "CPnts_UniformDeflection.hxx".}
proc next*(this: var CPntsUniformDeflection) {.importcpp: "Next",
    header: "CPnts_UniformDeflection.hxx".}
proc more*(this: var CPntsUniformDeflection): bool {.importcpp: "More",
    header: "CPnts_UniformDeflection.hxx".}
proc value*(this: CPntsUniformDeflection): float {.noSideEffect, importcpp: "Value",
    header: "CPnts_UniformDeflection.hxx".}
proc point*(this: CPntsUniformDeflection): Pnt {.noSideEffect, importcpp: "Point",
    header: "CPnts_UniformDeflection.hxx".}
