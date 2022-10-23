##  Created on: 1997-06-25
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Approx_SweepFunction"
type
  HandleApproxSweepFunction* = Handle[ApproxSweepFunction]

## ! defined the function used by SweepApproximation to
## ! perform sweeping application.

type
  ApproxSweepFunction* {.importcpp: "Approx_SweepFunction",
                        header: "Approx_SweepFunction.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## compute
                                                                                            ## the
                                                                                            ## section
                                                                                            ## for
                                                                                            ## v
                                                                                            ## =
                                                                                            ## param


proc d0*(this: var ApproxSweepFunction; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    header: "Approx_SweepFunction.hxx".}
proc d1*(this: var ApproxSweepFunction; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", header: "Approx_SweepFunction.hxx".}
proc d2*(this: var ApproxSweepFunction; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    header: "Approx_SweepFunction.hxx".}
proc nb2dCurves*(this: ApproxSweepFunction): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", header: "Approx_SweepFunction.hxx".}
proc sectionShape*(this: ApproxSweepFunction; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   header: "Approx_SweepFunction.hxx".}
proc knots*(this: ApproxSweepFunction; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", header: "Approx_SweepFunction.hxx".}
proc mults*(this: ApproxSweepFunction; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", header: "Approx_SweepFunction.hxx".}
proc isRational*(this: ApproxSweepFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Approx_SweepFunction.hxx".}
proc nbIntervals*(this: ApproxSweepFunction; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "Approx_SweepFunction.hxx".}
proc intervals*(this: ApproxSweepFunction; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Approx_SweepFunction.hxx".}
proc setInterval*(this: var ApproxSweepFunction; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", header: "Approx_SweepFunction.hxx".}
proc resolution*(this: ApproxSweepFunction; index: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "Approx_SweepFunction.hxx".}
proc getTolerance*(this: ApproxSweepFunction; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", header: "Approx_SweepFunction.hxx".}
proc setTolerance*(this: var ApproxSweepFunction; tol3d: cfloat; tol2d: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "Approx_SweepFunction.hxx".}
proc barycentreOfSurf*(this: ApproxSweepFunction): PntObj {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", header: "Approx_SweepFunction.hxx".}
proc maximalSection*(this: ApproxSweepFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", header: "Approx_SweepFunction.hxx".}
proc getMinimalWeight*(this: ApproxSweepFunction; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "Approx_SweepFunction.hxx".}