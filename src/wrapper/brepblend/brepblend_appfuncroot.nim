import ../tcolgp/tcolgp_types
import brepblend_types
import ../math/math_types
import ../gp/gp_types
import ../blend/blend_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types





##  Created on: 1998-05-12
##  Created by: Philippe NOUAILLE
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





proc d0*(this: var BRepBlendAppFuncRoot; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc d1*(this: var BRepBlendAppFuncRoot; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", header: "BRepBlend_AppFuncRoot.hxx".}
proc d2*(this: var BRepBlendAppFuncRoot; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc nb2dCurves*(this: BRepBlendAppFuncRoot): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", header: "BRepBlend_AppFuncRoot.hxx".}
proc sectionShape*(this: BRepBlendAppFuncRoot; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   header: "BRepBlend_AppFuncRoot.hxx".}
proc knots*(this: BRepBlendAppFuncRoot; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", header: "BRepBlend_AppFuncRoot.hxx".}
proc mults*(this: BRepBlendAppFuncRoot; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", header: "BRepBlend_AppFuncRoot.hxx".}
proc isRational*(this: BRepBlendAppFuncRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BRepBlend_AppFuncRoot.hxx".}
proc nbIntervals*(this: BRepBlendAppFuncRoot; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "BRepBlend_AppFuncRoot.hxx".}
proc intervals*(this: BRepBlendAppFuncRoot; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "BRepBlend_AppFuncRoot.hxx".}
proc setInterval*(this: var BRepBlendAppFuncRoot; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", header: "BRepBlend_AppFuncRoot.hxx".}
proc resolution*(this: BRepBlendAppFuncRoot; index: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "BRepBlend_AppFuncRoot.hxx".}
proc getTolerance*(this: BRepBlendAppFuncRoot; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", header: "BRepBlend_AppFuncRoot.hxx".}
proc setTolerance*(this: var BRepBlendAppFuncRoot; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerance", header: "BRepBlend_AppFuncRoot.hxx".}
proc barycentreOfSurf*(this: BRepBlendAppFuncRoot): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", header: "BRepBlend_AppFuncRoot.hxx".}
proc maximalSection*(this: BRepBlendAppFuncRoot): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", header: "BRepBlend_AppFuncRoot.hxx".}
proc getMinimalWeight*(this: BRepBlendAppFuncRoot; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "BRepBlend_AppFuncRoot.hxx".}
proc point*(this: BRepBlendAppFuncRoot; `func`: BlendAppFunction; param: cfloat;
           sol: MathVector; pnt: var BlendPoint) {.noSideEffect, cdecl,
    importcpp: "Point", header: "BRepBlend_AppFuncRoot.hxx".}
proc vec*(this: BRepBlendAppFuncRoot; sol: var MathVector; pnt: BlendPoint) {.
    noSideEffect, cdecl, importcpp: "Vec", header: "BRepBlend_AppFuncRoot.hxx".}


