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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Address, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../gp/gp_Pnt

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  CPnts_UniformDeflection* {.importcpp: "CPnts_UniformDeflection",
                            header: "CPnts_UniformDeflection.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## creation
                                                                                ## of
                                                                                ## a
                                                                                ## indefinite
                                                                                ## UniformDeflection
                                                                                ##
                                                                                ## !
                                                                                ## algorithm


proc constructCPnts_UniformDeflection*(): CPnts_UniformDeflection {.constructor,
    importcpp: "CPnts_UniformDeflection(@)", header: "CPnts_UniformDeflection.hxx".}
proc constructCPnts_UniformDeflection*(C: Adaptor3d_Curve;
                                      Deflection: Standard_Real;
                                      Resolution: Standard_Real;
                                      WithControl: Standard_Boolean): CPnts_UniformDeflection {.
    constructor, importcpp: "CPnts_UniformDeflection(@)",
    header: "CPnts_UniformDeflection.hxx".}
proc constructCPnts_UniformDeflection*(C: Adaptor2d_Curve2d;
                                      Deflection: Standard_Real;
                                      Resolution: Standard_Real;
                                      WithControl: Standard_Boolean): CPnts_UniformDeflection {.
    constructor, importcpp: "CPnts_UniformDeflection(@)",
    header: "CPnts_UniformDeflection.hxx".}
proc constructCPnts_UniformDeflection*(C: Adaptor3d_Curve;
                                      Deflection: Standard_Real;
                                      U1: Standard_Real; U2: Standard_Real;
                                      Resolution: Standard_Real;
                                      WithControl: Standard_Boolean): CPnts_UniformDeflection {.
    constructor, importcpp: "CPnts_UniformDeflection(@)",
    header: "CPnts_UniformDeflection.hxx".}
proc constructCPnts_UniformDeflection*(C: Adaptor2d_Curve2d;
                                      Deflection: Standard_Real;
                                      U1: Standard_Real; U2: Standard_Real;
                                      Resolution: Standard_Real;
                                      WithControl: Standard_Boolean): CPnts_UniformDeflection {.
    constructor, importcpp: "CPnts_UniformDeflection(@)",
    header: "CPnts_UniformDeflection.hxx".}
proc Initialize*(this: var CPnts_UniformDeflection; C: Adaptor3d_Curve;
                Deflection: Standard_Real; Resolution: Standard_Real;
                WithControl: Standard_Boolean) {.importcpp: "Initialize",
    header: "CPnts_UniformDeflection.hxx".}
proc Initialize*(this: var CPnts_UniformDeflection; C: Adaptor2d_Curve2d;
                Deflection: Standard_Real; Resolution: Standard_Real;
                WithControl: Standard_Boolean) {.importcpp: "Initialize",
    header: "CPnts_UniformDeflection.hxx".}
proc Initialize*(this: var CPnts_UniformDeflection; C: Adaptor3d_Curve;
                Deflection: Standard_Real; U1: Standard_Real; U2: Standard_Real;
                Resolution: Standard_Real; WithControl: Standard_Boolean) {.
    importcpp: "Initialize", header: "CPnts_UniformDeflection.hxx".}
proc Initialize*(this: var CPnts_UniformDeflection; C: Adaptor2d_Curve2d;
                Deflection: Standard_Real; U1: Standard_Real; U2: Standard_Real;
                Resolution: Standard_Real; WithControl: Standard_Boolean) {.
    importcpp: "Initialize", header: "CPnts_UniformDeflection.hxx".}
proc IsAllDone*(this: CPnts_UniformDeflection): Standard_Boolean {.noSideEffect,
    importcpp: "IsAllDone", header: "CPnts_UniformDeflection.hxx".}
proc Next*(this: var CPnts_UniformDeflection) {.importcpp: "Next",
    header: "CPnts_UniformDeflection.hxx".}
proc More*(this: var CPnts_UniformDeflection): Standard_Boolean {.importcpp: "More",
    header: "CPnts_UniformDeflection.hxx".}
proc Value*(this: CPnts_UniformDeflection): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "CPnts_UniformDeflection.hxx".}
proc Point*(this: CPnts_UniformDeflection): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "CPnts_UniformDeflection.hxx".}