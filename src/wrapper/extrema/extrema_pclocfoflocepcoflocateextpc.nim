import extrema_types
import ../gp/gp_types
import ../adaptor3d/adaptor3d_types
##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of VecObj"

proc newExtrema_PCLocFOfLocEPCOfLocateExtPC*(): Extrema_PCLocFOfLocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc newExtrema_PCLocFOfLocEPCOfLocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve): Extrema_PCLocFOfLocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC; C: Adaptor3d_Curve) {.
    cdecl, importcpp: "Initialize",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc SetPoint*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC; P: gp_Pnt) {.cdecl,
    importcpp: "SetPoint", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc Value*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC; U: cfloat; F: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc Derivative*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC; U: cfloat;
                DF: var cfloat): bool {.cdecl, importcpp: "Derivative", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc Values*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC; U: cfloat; F: var cfloat;
            DF: var cfloat): bool {.cdecl, importcpp: "Values", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc GetStateNumber*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc NbExt*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc SquareDistance*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC; N: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc IsMin*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC; N: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsMin", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc Point*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC; N: cint): Extrema_POnCurv {.
    noSideEffect, cdecl, importcpp: "Point",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc SubIntervalInitialize*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC;
                           theUfirst: cfloat; theUlast: cfloat) {.cdecl,
    importcpp: "SubIntervalInitialize",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}
proc SearchOfTolerance*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC): cfloat {.
    cdecl, importcpp: "SearchOfTolerance",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx".}