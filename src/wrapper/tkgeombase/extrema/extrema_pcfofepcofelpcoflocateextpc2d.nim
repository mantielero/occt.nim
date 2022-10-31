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



proc newExtremaPCFOfEPCOfELPCOfLocateExtPC2d*(): ExtremaPCFOfEPCOfELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d(@)",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc newExtremaPCFOfEPCOfELPCOfLocateExtPC2d*(p: Pnt2dObj; c: Adaptor2dCurve2d): ExtremaPCFOfEPCOfELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d(@)",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d) {.
    cdecl, importcpp: "Initialize", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc setPoint*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC2d; p: Pnt2dObj) {.cdecl,
    importcpp: "SetPoint", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc value*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC2d; u: cfloat; f: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc derivative*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC2d; u: cfloat;
                df: var cfloat): bool {.cdecl, importcpp: "Derivative",
                                    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc values*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC2d; u: cfloat; f: var cfloat;
            df: var cfloat): bool {.cdecl, importcpp: "Values", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc getStateNumber*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC2d): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc nbExt*(this: ExtremaPCFOfEPCOfELPCOfLocateExtPC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc squareDistance*(this: ExtremaPCFOfEPCOfELPCOfLocateExtPC2d; n: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc isMin*(this: ExtremaPCFOfEPCOfELPCOfLocateExtPC2d; n: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsMin", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc point*(this: ExtremaPCFOfEPCOfELPCOfLocateExtPC2d; n: cint): ExtremaPOnCurv2d {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc subIntervalInitialize*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC2d;
                           theUfirst: cfloat; theUlast: cfloat) {.cdecl,
    importcpp: "SubIntervalInitialize", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}
proc searchOfTolerance*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC2d): cfloat {.
    cdecl, importcpp: "SearchOfTolerance", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx".}


