import geomfill_types

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




proc newGeomFillEvolvedSection*(c: Handle[GeomCurve]; L: Handle[LawFunction]): GeomFillEvolvedSection {.
    cdecl, constructor, importcpp: "GeomFill_EvolvedSection(@)", header: "GeomFill_EvolvedSection.hxx".}
proc d0*(this: var GeomFillEvolvedSection; param: cfloat;
        poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal): bool {.cdecl,
    importcpp: "D0", header: "GeomFill_EvolvedSection.hxx".}
proc d1*(this: var GeomFillEvolvedSection; param: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", header: "GeomFill_EvolvedSection.hxx".}
proc d2*(this: var GeomFillEvolvedSection; param: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_EvolvedSection.hxx".}
proc bSplineSurface*(this: GeomFillEvolvedSection): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSplineSurface", header: "GeomFill_EvolvedSection.hxx".}
proc sectionShape*(this: GeomFillEvolvedSection; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   header: "GeomFill_EvolvedSection.hxx".}
proc knots*(this: GeomFillEvolvedSection; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", header: "GeomFill_EvolvedSection.hxx".}
proc mults*(this: GeomFillEvolvedSection; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", header: "GeomFill_EvolvedSection.hxx".}
proc isRational*(this: GeomFillEvolvedSection): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "GeomFill_EvolvedSection.hxx".}
proc isUPeriodic*(this: GeomFillEvolvedSection): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "GeomFill_EvolvedSection.hxx".}
proc isVPeriodic*(this: GeomFillEvolvedSection): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "GeomFill_EvolvedSection.hxx".}
proc nbIntervals*(this: GeomFillEvolvedSection; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "GeomFill_EvolvedSection.hxx".}
proc intervals*(this: GeomFillEvolvedSection; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_EvolvedSection.hxx".}
proc setInterval*(this: var GeomFillEvolvedSection; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", header: "GeomFill_EvolvedSection.hxx".}
proc getInterval*(this: GeomFillEvolvedSection; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "GeomFill_EvolvedSection.hxx".}
proc getDomain*(this: GeomFillEvolvedSection; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", header: "GeomFill_EvolvedSection.hxx".}
proc getTolerance*(this: GeomFillEvolvedSection; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", header: "GeomFill_EvolvedSection.hxx".}
proc barycentreOfSurf*(this: GeomFillEvolvedSection): PntObj {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", header: "GeomFill_EvolvedSection.hxx".}
proc maximalSection*(this: GeomFillEvolvedSection): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", header: "GeomFill_EvolvedSection.hxx".}
proc getMinimalWeight*(this: GeomFillEvolvedSection;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", header: "GeomFill_EvolvedSection.hxx".}
proc isConstant*(this: GeomFillEvolvedSection; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConstant", header: "GeomFill_EvolvedSection.hxx".}
proc constantSection*(this: GeomFillEvolvedSection): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "ConstantSection", header: "GeomFill_EvolvedSection.hxx".}
