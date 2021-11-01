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

discard "forward decl of BRepBlend_Line"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Blend_AppFunction"
discard "forward decl of gp_Pnt"
discard "forward decl of Blend_Point"
discard "forward decl of BRepBlend_AppFuncRoot"
type
  HandleBRepBlendAppFuncRoot* = Handle[BRepBlendAppFuncRoot]

## ! Function to approximate by AppSurface

type
  BRepBlendAppFuncRoot* {.importcpp: "BRepBlend_AppFuncRoot",
                         header: "BRepBlend_AppFuncRoot.hxx", bycopy.} = object of ApproxSweepFunction ##
                                                                                                ## !
                                                                                                ## compute
                                                                                                ## the
                                                                                                ## section
                                                                                                ## for
                                                                                                ## v
                                                                                                ## =
                                                                                                ## param


proc d0*(this: var BRepBlendAppFuncRoot; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
        weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D0",
    dynlib: tkfillet.}
proc d1*(this: var BRepBlendAppFuncRoot; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "D1", dynlib: tkfillet.}
proc d2*(this: var BRepBlendAppFuncRoot; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "D2",
    dynlib: tkfillet.}
proc nb2dCurves*(this: BRepBlendAppFuncRoot): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", dynlib: tkfillet.}
proc sectionShape*(this: BRepBlendAppFuncRoot; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, cdecl, importcpp: "SectionShape",
                                   dynlib: tkfillet.}
proc knots*(this: BRepBlendAppFuncRoot; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", dynlib: tkfillet.}
proc mults*(this: BRepBlendAppFuncRoot; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkfillet.}
proc isRational*(this: BRepBlendAppFuncRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkfillet.}
proc nbIntervals*(this: BRepBlendAppFuncRoot; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkfillet.}
proc intervals*(this: BRepBlendAppFuncRoot; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkfillet.}
proc setInterval*(this: var BRepBlendAppFuncRoot; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", dynlib: tkfillet.}
proc resolution*(this: BRepBlendAppFuncRoot; index: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkfillet.}
proc getTolerance*(this: BRepBlendAppFuncRoot; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc setTolerance*(this: var BRepBlendAppFuncRoot; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerance", dynlib: tkfillet.}
proc barycentreOfSurf*(this: BRepBlendAppFuncRoot): Pnt {.noSideEffect, cdecl,
    importcpp: "BarycentreOfSurf", dynlib: tkfillet.}
proc maximalSection*(this: BRepBlendAppFuncRoot): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalSection", dynlib: tkfillet.}
proc getMinimalWeight*(this: BRepBlendAppFuncRoot; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", dynlib: tkfillet.}
proc point*(this: BRepBlendAppFuncRoot; `func`: BlendAppFunction; param: cfloat;
           sol: MathVector; pnt: var BlendPoint) {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkfillet.}
proc vec*(this: BRepBlendAppFuncRoot; sol: var MathVector; pnt: BlendPoint) {.
    noSideEffect, cdecl, importcpp: "Vec", dynlib: tkfillet.}