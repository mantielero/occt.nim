##  Created on: 1997-11-20
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

discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_SweepFunction"
type
  HandleGeomFillSweepFunction* = Handle[GeomFillSweepFunction]

## ! Function to approximate by SweepApproximation from
## ! Approx. To bulid general sweep Surface.

type
  GeomFillSweepFunction* {.importcpp: "GeomFill_SweepFunction",
                          header: "GeomFill_SweepFunction.hxx", bycopy.} = object of ApproxSweepFunction


proc newGeomFillSweepFunction*(section: Handle[GeomFillSectionLaw];
                              location: Handle[GeomFillLocationLaw];
                              firstParameter: cfloat; firstParameterOnS: cfloat;
                              ratioParameterOnS: cfloat): GeomFillSweepFunction {.
    cdecl, constructor, importcpp: "GeomFill_SweepFunction(@)", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillSweepFunction; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillSweepFunction; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillSweepFunction; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    dynlib: tkgeomalgo.}
proc nb2dCurves*(this: GeomFillSweepFunction): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", dynlib: tkgeomalgo.}
proc sectionShape*(this: GeomFillSweepFunction; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   dynlib: tkgeomalgo.}
proc knots*(this: GeomFillSweepFunction; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", dynlib: tkgeomalgo.}
proc mults*(this: GeomFillSweepFunction; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkgeomalgo.}
proc isRational*(this: GeomFillSweepFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillSweepFunction; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillSweepFunction; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillSweepFunction; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc resolution*(this: GeomFillSweepFunction; index: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkgeomalgo.}
proc getTolerance*(this: GeomFillSweepFunction; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", dynlib: tkgeomalgo.}
proc setTolerance*(this: var GeomFillSweepFunction; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerance", dynlib: tkgeomalgo.}
proc barycentreOfSurf*(this: GeomFillSweepFunction): Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", dynlib: tkgeomalgo.}
proc maximalSection*(this: GeomFillSweepFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", dynlib: tkgeomalgo.}
proc getMinimalWeight*(this: GeomFillSweepFunction;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", dynlib: tkgeomalgo.}