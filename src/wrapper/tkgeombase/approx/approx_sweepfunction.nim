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
    dynlib: tkgeombase.}
proc d1*(this: var ApproxSweepFunction; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", dynlib: tkgeombase.}
proc d2*(this: var ApproxSweepFunction; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    dynlib: tkgeombase.}
proc nb2dCurves*(this: ApproxSweepFunction): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", dynlib: tkgeombase.}
proc sectionShape*(this: ApproxSweepFunction; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   dynlib: tkgeombase.}
proc knots*(this: ApproxSweepFunction; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", dynlib: tkgeombase.}
proc mults*(this: ApproxSweepFunction; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkgeombase.}
proc isRational*(this: ApproxSweepFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkgeombase.}
proc nbIntervals*(this: ApproxSweepFunction; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeombase.}
proc intervals*(this: ApproxSweepFunction; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkgeombase.}
proc setInterval*(this: var ApproxSweepFunction; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", dynlib: tkgeombase.}
proc resolution*(this: ApproxSweepFunction; index: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 dynlib: tkgeombase.}
proc getTolerance*(this: ApproxSweepFunction; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", dynlib: tkgeombase.}
proc setTolerance*(this: var ApproxSweepFunction; tol3d: cfloat; tol2d: cfloat) {.cdecl,
    importcpp: "SetTolerance", dynlib: tkgeombase.}
proc barycentreOfSurf*(this: ApproxSweepFunction): Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", dynlib: tkgeombase.}
proc maximalSection*(this: ApproxSweepFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", dynlib: tkgeombase.}
proc getMinimalWeight*(this: ApproxSweepFunction; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", dynlib: tkgeombase.}