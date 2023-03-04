import extrema_types
import ../tkmath/gp/gp_types
import ../tkg2d/adaptor2d/adaptor2d_types
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
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"

proc newExtrema_PCLocFOfLocEPCOfLocateExtPC2d*(): Extrema_PCLocFOfLocEPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc newExtrema_PCLocFOfLocEPCOfLocateExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d): Extrema_PCLocFOfLocEPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Initialize*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d;
                C: Adaptor2d_Curve2d) {.cdecl, importcpp: "Initialize", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc SetPoint*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d; P: gp_Pnt2d) {.cdecl,
    importcpp: "SetPoint", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Value*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d; U: cfloat; F: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Derivative*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d; U: cfloat;
                DF: var cfloat): bool {.cdecl, importcpp: "Derivative", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Values*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d; U: cfloat;
            F: var cfloat; DF: var cfloat): bool {.cdecl, importcpp: "Values",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc GetStateNumber*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d): cint {.cdecl,
    importcpp: "GetStateNumber",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc NbExt*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc SquareDistance*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC2d; N: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc IsMin*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC2d; N: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsMin",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Point*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC2d; N: cint): Extrema_POnCurv2d {.
    noSideEffect, cdecl, importcpp: "Point",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc SubIntervalInitialize*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d;
                           theUfirst: cfloat; theUlast: cfloat) {.cdecl,
    importcpp: "SubIntervalInitialize",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc SearchOfTolerance*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d): cfloat {.
    cdecl, importcpp: "SearchOfTolerance",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}