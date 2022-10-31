import ../../tkmath/gp/gp_types
import ../../tkg2d/adaptor2d/adaptor2d_types
import extrema_types





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



proc newExtremaPCLocFOfLocEPCOfLocateExtPC2d*(): ExtremaPCLocFOfLocEPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc newExtremaPCLocFOfLocEPCOfLocateExtPC2d*(p: Pnt2dObj; c: Adaptor2dCurve2d): ExtremaPCLocFOfLocEPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; c: Adaptor2dCurve2d) {.
    cdecl, importcpp: "Initialize", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc setPoint*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; p: Pnt2dObj) {.cdecl,
    importcpp: "SetPoint", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc value*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; u: cfloat; f: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc derivative*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; u: cfloat;
                df: var cfloat): bool {.cdecl, importcpp: "Derivative",
                                    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc values*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; u: cfloat; f: var cfloat;
            df: var cfloat): bool {.cdecl, importcpp: "Values", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc getStateNumber*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc nbExt*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc squareDistance*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC2d; n: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc isMin*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC2d; n: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsMin", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc point*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC2d; n: cint): ExtremaPOnCurv2d {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc subIntervalInitialize*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d;
                           theUfirst: cfloat; theUlast: cfloat) {.cdecl,
    importcpp: "SubIntervalInitialize", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc searchOfTolerance*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d): cfloat {.
    cdecl, importcpp: "SearchOfTolerance", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}


