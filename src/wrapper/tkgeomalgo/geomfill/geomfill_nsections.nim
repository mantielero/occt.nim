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
    constructor, importcpp: "GeomFill_NSections(@)", header: "GeomFill_NSections.hxx".}
proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve; np: TColStdSequenceOfReal): GeomFillNSections {.
    cdecl, constructor, importcpp: "GeomFill_NSections(@)", header: "GeomFill_NSections.hxx".}
proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve; np: TColStdSequenceOfReal;
                          uf: cfloat; ul: cfloat): GeomFillNSections {.cdecl,
    constructor, importcpp: "GeomFill_NSections(@)", header: "GeomFill_NSections.hxx".}
proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve; np: TColStdSequenceOfReal;
                          uf: cfloat; ul: cfloat; vf: cfloat; vl: cfloat): GeomFillNSections {.
    cdecl, constructor, importcpp: "GeomFill_NSections(@)", header: "GeomFill_NSections.hxx".}
proc newGeomFillNSections*(nc: TColGeomSequenceOfCurve;
                          trsfs: GeomFillSequenceOfTrsf;
                          np: TColStdSequenceOfReal; uf: cfloat; ul: cfloat;
                          vf: cfloat; vl: cfloat; surf: Handle[GeomBSplineSurface]): GeomFillNSections {.
    cdecl, constructor, importcpp: "GeomFill_NSections(@)", header: "GeomFill_NSections.hxx".}
proc d0*(this: var GeomFillNSections; param: cfloat; poles: var TColgpArray1OfPnt;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_NSections.hxx".}
proc d1*(this: var GeomFillNSections; param: cfloat; poles: var TColgpArray1OfPnt;
        dPoles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D1",
    header: "GeomFill_NSections.hxx".}
proc d2*(this: var GeomFillNSections; param: cfloat; poles: var TColgpArray1OfPnt;
        dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    header: "GeomFill_NSections.hxx".}
proc setSurface*(this: var GeomFillNSections; refSurf: Handle[GeomBSplineSurface]) {.
    cdecl, importcpp: "SetSurface", header: "GeomFill_NSections.hxx".}
proc computeSurface*(this: var GeomFillNSections) {.cdecl,
    importcpp: "ComputeSurface", header: "GeomFill_NSections.hxx".}
proc bSplineSurface*(this: GeomFillNSections): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSplineSurface", header: "GeomFill_NSections.hxx".}
proc sectionShape*(this: GeomFillNSections; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   header: "GeomFill_NSections.hxx".}
proc knots*(this: GeomFillNSections; tKnots: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Knots", header: "GeomFill_NSections.hxx".}
proc mults*(this: GeomFillNSections; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", header: "GeomFill_NSections.hxx".}
proc isRational*(this: GeomFillNSections): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "GeomFill_NSections.hxx".}
proc isUPeriodic*(this: GeomFillNSections): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "GeomFill_NSections.hxx".}
proc isVPeriodic*(this: GeomFillNSections): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "GeomFill_NSections.hxx".}
proc nbIntervals*(this: GeomFillNSections; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "GeomFill_NSections.hxx".}
proc intervals*(this: GeomFillNSections; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "GeomFill_NSections.hxx".}
proc setInterval*(this: var GeomFillNSections; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", header: "GeomFill_NSections.hxx".}
proc getInterval*(this: GeomFillNSections; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "GeomFill_NSections.hxx".}
proc getDomain*(this: GeomFillNSections; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", header: "GeomFill_NSections.hxx".}
proc getTolerance*(this: GeomFillNSections; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", header: "GeomFill_NSections.hxx".}
proc barycentreOfSurf*(this: GeomFillNSections): PntObj {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", header: "GeomFill_NSections.hxx".}
proc maximalSection*(this: GeomFillNSections): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", header: "GeomFill_NSections.hxx".}
proc getMinimalWeight*(this: GeomFillNSections; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "GeomFill_NSections.hxx".}
proc isConstant*(this: GeomFillNSections; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConstant", header: "GeomFill_NSections.hxx".}
proc constantSection*(this: GeomFillNSections): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "ConstantSection", header: "GeomFill_NSections.hxx".}
proc isConicalLaw*(this: GeomFillNSections; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConicalLaw", header: "GeomFill_NSections.hxx".}
proc circlSection*(this: GeomFillNSections; param: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "CirclSection", header: "GeomFill_NSections.hxx".}