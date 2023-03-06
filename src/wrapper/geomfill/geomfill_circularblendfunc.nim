import ../tcolgp/tcolgp_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import geomfill_types





##  Created on: 1997-07-11
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





proc newGeomFillCircularBlendFunc*(path: Handle[Adaptor3dHCurve];
                                  curve1: Handle[Adaptor3dHCurve];
                                  curve2: Handle[Adaptor3dHCurve]; radius: cfloat;
                                  polynomial: bool = false): GeomFillCircularBlendFunc {.
    cdecl, constructor, importcpp: "GeomFill_CircularBlendFunc(@)",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc d0*(this: var GeomFillCircularBlendFunc; param: cfloat; first: cfloat;
        last: cfloat; poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc d1*(this: var GeomFillCircularBlendFunc; param: cfloat; first: cfloat;
        last: cfloat; poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", header: "GeomFill_CircularBlendFunc.hxx".}
proc d2*(this: var GeomFillCircularBlendFunc; param: cfloat; first: cfloat;
        last: cfloat; poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc nb2dCurves*(this: GeomFillCircularBlendFunc): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", header: "GeomFill_CircularBlendFunc.hxx".}
proc sectionShape*(this: GeomFillCircularBlendFunc; nbPoles: var cint;
                  nbKnots: var cint; degree: var cint) {.noSideEffect, cdecl,
    importcpp: "SectionShape", header: "GeomFill_CircularBlendFunc.hxx".}
proc knots*(this: GeomFillCircularBlendFunc; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", header: "GeomFill_CircularBlendFunc.hxx".}
proc mults*(this: GeomFillCircularBlendFunc; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", header: "GeomFill_CircularBlendFunc.hxx".}
proc isRational*(this: GeomFillCircularBlendFunc): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "GeomFill_CircularBlendFunc.hxx".}
proc nbIntervals*(this: GeomFillCircularBlendFunc; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "GeomFill_CircularBlendFunc.hxx".}
proc intervals*(this: GeomFillCircularBlendFunc; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_CircularBlendFunc.hxx".}
proc setInterval*(this: var GeomFillCircularBlendFunc; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", header: "GeomFill_CircularBlendFunc.hxx".}
proc getTolerance*(this: GeomFillCircularBlendFunc; boundTol: cfloat;
                  surfTol: cfloat; angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "GeomFill_CircularBlendFunc.hxx".}
proc setTolerance*(this: var GeomFillCircularBlendFunc; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerance", header: "GeomFill_CircularBlendFunc.hxx".}
proc barycentreOfSurf*(this: GeomFillCircularBlendFunc): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", header: "GeomFill_CircularBlendFunc.hxx".}
proc maximalSection*(this: GeomFillCircularBlendFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", header: "GeomFill_CircularBlendFunc.hxx".}
proc getMinimalWeight*(this: GeomFillCircularBlendFunc;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", header: "GeomFill_CircularBlendFunc.hxx".}


