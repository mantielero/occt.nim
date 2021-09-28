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
discard "forward decl of BRepBlend_AppFuncRoot"
type
  HandleC1C1* = Handle[BRepBlendAppFuncRoot]

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
        weigths: var TColStdArray1OfReal): bool {.importcpp: "D0",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc d1*(this: var BRepBlendAppFuncRoot; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    importcpp: "D1", header: "BRepBlend_AppFuncRoot.hxx".}
proc d2*(this: var BRepBlendAppFuncRoot; param: cfloat; first: cfloat; last: cfloat;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
        d2Weigths: var TColStdArray1OfReal): bool {.importcpp: "D2",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc nb2dCurves*(this: BRepBlendAppFuncRoot): cint {.noSideEffect,
    importcpp: "Nb2dCurves", header: "BRepBlend_AppFuncRoot.hxx".}
proc sectionShape*(this: BRepBlendAppFuncRoot; nbPoles: var cint; nbKnots: var cint;
                  degree: var cint) {.noSideEffect, importcpp: "SectionShape",
                                   header: "BRepBlend_AppFuncRoot.hxx".}
proc knots*(this: BRepBlendAppFuncRoot; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "BRepBlend_AppFuncRoot.hxx".}
proc mults*(this: BRepBlendAppFuncRoot; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "BRepBlend_AppFuncRoot.hxx".}
proc isRational*(this: BRepBlendAppFuncRoot): bool {.noSideEffect,
    importcpp: "IsRational", header: "BRepBlend_AppFuncRoot.hxx".}
proc nbIntervals*(this: BRepBlendAppFuncRoot; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "BRepBlend_AppFuncRoot.hxx".}
proc intervals*(this: BRepBlendAppFuncRoot; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "BRepBlend_AppFuncRoot.hxx".}
proc setInterval*(this: var BRepBlendAppFuncRoot; first: cfloat; last: cfloat) {.
    importcpp: "SetInterval", header: "BRepBlend_AppFuncRoot.hxx".}
proc resolution*(this: BRepBlendAppFuncRoot; index: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect,
    importcpp: "Resolution", header: "BRepBlend_AppFuncRoot.hxx".}
proc getTolerance*(this: BRepBlendAppFuncRoot; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepBlend_AppFuncRoot.hxx".}
proc setTolerance*(this: var BRepBlendAppFuncRoot; tol3d: cfloat; tol2d: cfloat) {.
    importcpp: "SetTolerance", header: "BRepBlend_AppFuncRoot.hxx".}
proc barycentreOfSurf*(this: BRepBlendAppFuncRoot): Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "BRepBlend_AppFuncRoot.hxx".}
proc maximalSection*(this: BRepBlendAppFuncRoot): cfloat {.noSideEffect,
    importcpp: "MaximalSection", header: "BRepBlend_AppFuncRoot.hxx".}
proc getMinimalWeight*(this: BRepBlendAppFuncRoot; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc point*(this: BRepBlendAppFuncRoot; `func`: BlendAppFunction; param: cfloat;
           sol: MathVector; pnt: var BlendPoint) {.noSideEffect, importcpp: "Point",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc vec*(this: BRepBlendAppFuncRoot; sol: var MathVector; pnt: BlendPoint) {.
    noSideEffect, importcpp: "Vec", header: "BRepBlend_AppFuncRoot.hxx".}
type
  BRepBlendAppFuncRootbaseType* = ApproxSweepFunction

proc getTypeName*(): cstring {.importcpp: "BRepBlend_AppFuncRoot::get_type_name(@)",
                            header: "BRepBlend_AppFuncRoot.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepBlend_AppFuncRoot::get_type_descriptor(@)",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc dynamicType*(this: BRepBlendAppFuncRoot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepBlend_AppFuncRoot.hxx".}

























