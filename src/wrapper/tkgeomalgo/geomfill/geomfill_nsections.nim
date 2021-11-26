##  Created on: 1998-12-14
##  Created by: Joelle CHAUVET
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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_NSections"
type
  HandleGeomFillNSections* = Handle[GeomFillNSections]

## ! Define a Section Law by N Sections

type
  GeomFillNSections* {.importcpp: "GeomFill_NSections",
                      header: "GeomFill_NSections.hxx", bycopy.} = object of GeomFillSectionLaw ##
                                                                                         ## !
                                                                                         ## Make
                                                                                         ## a
                                                                                         ## SectionLaw
                                                                                         ## with
                                                                                         ## N
                                                                                         ## Curves.


proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve): GeomFillNSections {.cdecl,
    constructor, importcpp: "GeomFill_NSections(@)", dynlib: tkgeomalgo.}
proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve; np: TColStdSequenceOfReal): GeomFillNSections {.
    cdecl, constructor, importcpp: "GeomFill_NSections(@)", dynlib: tkgeomalgo.}
proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve; np: TColStdSequenceOfReal;
                          uf: cfloat; ul: cfloat): GeomFillNSections {.cdecl,
    constructor, importcpp: "GeomFill_NSections(@)", dynlib: tkgeomalgo.}
proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve; np: TColStdSequenceOfReal;
                          uf: cfloat; ul: cfloat; vf: cfloat; vl: cfloat): GeomFillNSections {.
    cdecl, constructor, importcpp: "GeomFill_NSections(@)", dynlib: tkgeomalgo.}
proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve;
                          trsfs: GeomFillSequenceOfTrsf;
                          np: TColStdSequenceOfReal; uf: cfloat; ul: cfloat;
                          vf: cfloat; vl: cfloat; surf: Handle[GeomBSplineSurface]): GeomFillNSections {.
    cdecl, constructor, importcpp: "GeomFill_NSections(@)", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillNSections; param: cfloat; poles: var TColgpArray1OfPnt;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillNSections; param: cfloat; poles: var TColgpArray1OfPnt;
        dPoles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D1",
    dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillNSections; param: cfloat; poles: var TColgpArray1OfPnt;
        dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    dynlib: tkgeomalgo.}
proc setSurface*(this: var GeomFillNSections; refSurf: Handle[GeomBSplineSurface]) {.
    cdecl, importcpp: "SetSurface", dynlib: tkgeomalgo.}
proc computeSurface*(this: var GeomFillNSections) {.cdecl,
    importcpp: "ComputeSurface", dynlib: tkgeomalgo.}
proc bSplineSurface*(this: GeomFillNSections): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSplineSurface", dynlib: tkgeomalgo.}
proc sectionShape*(this: GeomFillNSections; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   dynlib: tkgeomalgo.}
proc knots*(this: GeomFillNSections; tKnots: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Knots", dynlib: tkgeomalgo.}
proc mults*(this: GeomFillNSections; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkgeomalgo.}
proc isRational*(this: GeomFillNSections): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkgeomalgo.}
proc isUPeriodic*(this: GeomFillNSections): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkgeomalgo.}
proc isVPeriodic*(this: GeomFillNSections): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillNSections; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillNSections; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillNSections; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getInterval*(this: GeomFillNSections; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", dynlib: tkgeomalgo.}
proc getDomain*(this: GeomFillNSections; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", dynlib: tkgeomalgo.}
proc getTolerance*(this: GeomFillNSections; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", dynlib: tkgeomalgo.}
proc barycentreOfSurf*(this: GeomFillNSections): Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", dynlib: tkgeomalgo.}
proc maximalSection*(this: GeomFillNSections): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", dynlib: tkgeomalgo.}
proc getMinimalWeight*(this: GeomFillNSections; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", dynlib: tkgeomalgo.}
proc isConstant*(this: GeomFillNSections; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConstant", dynlib: tkgeomalgo.}
proc constantSection*(this: GeomFillNSections): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "ConstantSection", dynlib: tkgeomalgo.}
proc isConicalLaw*(this: GeomFillNSections; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConicalLaw", dynlib: tkgeomalgo.}
proc circlSection*(this: GeomFillNSections; param: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "CirclSection", dynlib: tkgeomalgo.}