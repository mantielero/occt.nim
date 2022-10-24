import geomfill_types

##  Created on: 1997-12-05
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_UniformSection"




proc newGeomFillUniformSection*(c: Handle[GeomCurve]; firstParameter: cfloat = 0.0;
                               lastParameter: cfloat = 1.0): GeomFillUniformSection {.
    cdecl, constructor, importcpp: "GeomFill_UniformSection(@)", header: "GeomFill_UniformSection.hxx".}
proc d0*(this: var GeomFillUniformSection; param: cfloat;
        poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal): bool {.cdecl,
    importcpp: "D0", header: "GeomFill_UniformSection.hxx".}
proc d1*(this: var GeomFillUniformSection; param: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", header: "GeomFill_UniformSection.hxx".}
proc d2*(this: var GeomFillUniformSection; param: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_UniformSection.hxx".}
proc bSplineSurface*(this: GeomFillUniformSection): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSplineSurface", header: "GeomFill_UniformSection.hxx".}
proc sectionShape*(this: GeomFillUniformSection; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   header: "GeomFill_UniformSection.hxx".}
proc knots*(this: GeomFillUniformSection; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", header: "GeomFill_UniformSection.hxx".}
proc mults*(this: GeomFillUniformSection; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", header: "GeomFill_UniformSection.hxx".}
proc isRational*(this: GeomFillUniformSection): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "GeomFill_UniformSection.hxx".}
proc isUPeriodic*(this: GeomFillUniformSection): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "GeomFill_UniformSection.hxx".}
proc isVPeriodic*(this: GeomFillUniformSection): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "GeomFill_UniformSection.hxx".}
proc nbIntervals*(this: GeomFillUniformSection; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "GeomFill_UniformSection.hxx".}
proc intervals*(this: GeomFillUniformSection; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_UniformSection.hxx".}
proc setInterval*(this: var GeomFillUniformSection; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", header: "GeomFill_UniformSection.hxx".}
proc getInterval*(this: GeomFillUniformSection; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "GeomFill_UniformSection.hxx".}
proc getDomain*(this: GeomFillUniformSection; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", header: "GeomFill_UniformSection.hxx".}
proc getTolerance*(this: GeomFillUniformSection; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", header: "GeomFill_UniformSection.hxx".}
proc barycentreOfSurf*(this: GeomFillUniformSection): PntObj {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", header: "GeomFill_UniformSection.hxx".}
proc maximalSection*(this: GeomFillUniformSection): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", header: "GeomFill_UniformSection.hxx".}
proc getMinimalWeight*(this: GeomFillUniformSection;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", header: "GeomFill_UniformSection.hxx".}
proc isConstant*(this: GeomFillUniformSection; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsConstant", header: "GeomFill_UniformSection.hxx".}
proc constantSection*(this: GeomFillUniformSection): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "ConstantSection", header: "GeomFill_UniformSection.hxx".}
