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

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_SectionLaw"
type
  HandleGeomFillSectionLaw* = Handle[GeomFillSectionLaw]

## ! To define section law in  sweeping

type
  GeomFillSectionLaw* {.importcpp: "GeomFill_SectionLaw",
                       header: "GeomFill_SectionLaw.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## compute
                                                                                          ## the
                                                                                          ## section
                                                                                          ## for
                                                                                          ## v
                                                                                          ## =
                                                                                          ## param


proc d0*(this: var GeomFillSectionLaw; param: cfloat; poles: var TColgpArray1OfPnt;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillSectionLaw; param: cfloat; poles: var TColgpArray1OfPnt;
        dPoles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D1",
    dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillSectionLaw; param: cfloat; poles: var TColgpArray1OfPnt;
        dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    dynlib: tkgeomalgo.}
proc bSplineSurface*(this: GeomFillSectionLaw): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSplineSurface", dynlib: tkgeomalgo.}
proc sectionShape*(this: GeomFillSectionLaw; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   dynlib: tkgeomalgo.}
proc knots*(this: GeomFillSectionLaw; tKnots: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Knots", dynlib: tkgeomalgo.}
proc mults*(this: GeomFillSectionLaw; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkgeomalgo.}
proc isRational*(this: GeomFillSectionLaw): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkgeomalgo.}
proc isUPeriodic*(this: GeomFillSectionLaw): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkgeomalgo.}
proc isVPeriodic*(this: GeomFillSectionLaw): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillSectionLaw; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillSectionLaw; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillSectionLaw; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getInterval*(this: GeomFillSectionLaw; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", dynlib: tkgeomalgo.}
proc getDomain*(this: GeomFillSectionLaw; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", dynlib: tkgeomalgo.}
proc getTolerance*(this: GeomFillSectionLaw; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", dynlib: tkgeomalgo.}
proc setTolerance*(this: var GeomFillSectionLaw; tol3d: cfloat; tol2d: cfloat) {.cdecl,
    importcpp: "SetTolerance", dynlib: tkgeomalgo.}
proc barycentreOfSurf*(this: GeomFillSectionLaw): Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", dynlib: tkgeomalgo.}
proc maximalSection*(this: GeomFillSectionLaw): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", dynlib: tkgeomalgo.}
proc getMinimalWeight*(this: GeomFillSectionLaw; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", dynlib: tkgeomalgo.}
proc isConstant*(this: GeomFillSectionLaw; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConstant", dynlib: tkgeomalgo.}
proc constantSection*(this: GeomFillSectionLaw): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "ConstantSection", dynlib: tkgeomalgo.}
proc isConicalLaw*(this: GeomFillSectionLaw; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConicalLaw", dynlib: tkgeomalgo.}
proc circlSection*(this: GeomFillSectionLaw; param: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "CirclSection", dynlib: tkgeomalgo.}