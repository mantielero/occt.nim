##  Created on: 1998-08-17
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Law_Function"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_EvolvedSection"
type
  HandleGeomFillEvolvedSection* = Handle[GeomFillEvolvedSection]

## ! Define an Constant Section Law

type
  GeomFillEvolvedSection* {.importcpp: "GeomFill_EvolvedSection",
                           header: "GeomFill_EvolvedSection.hxx", bycopy.} = object of GeomFillSectionLaw ##
                                                                                                   ## !
                                                                                                   ## Make
                                                                                                   ## an
                                                                                                   ## SectionLaw
                                                                                                   ## with
                                                                                                   ## a
                                                                                                   ## Curve
                                                                                                   ## and
                                                                                                   ## a
                                                                                                   ## real
                                                                                                   ## Law.


proc newGeomFillEvolvedSection*(c: Handle[GeomCurve]; L: Handle[LawFunction]): GeomFillEvolvedSection {.
    cdecl, constructor, importcpp: "GeomFill_EvolvedSection(@)", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillEvolvedSection; param: cfloat;
        poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal): bool {.cdecl,
    importcpp: "D0", dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillEvolvedSection; param: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillEvolvedSection; param: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D2", dynlib: tkgeomalgo.}
proc bSplineSurface*(this: GeomFillEvolvedSection): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSplineSurface", dynlib: tkgeomalgo.}
proc sectionShape*(this: GeomFillEvolvedSection; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   dynlib: tkgeomalgo.}
proc knots*(this: GeomFillEvolvedSection; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", dynlib: tkgeomalgo.}
proc mults*(this: GeomFillEvolvedSection; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkgeomalgo.}
proc isRational*(this: GeomFillEvolvedSection): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkgeomalgo.}
proc isUPeriodic*(this: GeomFillEvolvedSection): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkgeomalgo.}
proc isVPeriodic*(this: GeomFillEvolvedSection): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillEvolvedSection; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillEvolvedSection; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillEvolvedSection; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getInterval*(this: GeomFillEvolvedSection; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", dynlib: tkgeomalgo.}
proc getDomain*(this: GeomFillEvolvedSection; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", dynlib: tkgeomalgo.}
proc getTolerance*(this: GeomFillEvolvedSection; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", dynlib: tkgeomalgo.}
proc barycentreOfSurf*(this: GeomFillEvolvedSection): Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", dynlib: tkgeomalgo.}
proc maximalSection*(this: GeomFillEvolvedSection): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", dynlib: tkgeomalgo.}
proc getMinimalWeight*(this: GeomFillEvolvedSection;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", dynlib: tkgeomalgo.}
proc isConstant*(this: GeomFillEvolvedSection; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConstant", dynlib: tkgeomalgo.}
proc constantSection*(this: GeomFillEvolvedSection): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "ConstantSection", dynlib: tkgeomalgo.}