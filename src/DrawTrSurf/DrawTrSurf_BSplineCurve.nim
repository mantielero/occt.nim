##  Created on: 1992-05-22
##  Created by: Jean Claude VAUTHIER
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BSplineCurve"
discard "forward decl of DrawTrSurf_BSplineCurve"
type
  HandleC1C1* = Handle[DrawTrSurfBSplineCurve]
  DrawTrSurfBSplineCurve* {.importcpp: "DrawTrSurf_BSplineCurve",
                           header: "DrawTrSurf_BSplineCurve.hxx", bycopy.} = object of DrawTrSurfCurve ##
                                                                                                ## !
                                                                                                ## creates
                                                                                                ## a
                                                                                                ## drawable
                                                                                                ## BSpline
                                                                                                ## curve
                                                                                                ## from
                                                                                                ## a
                                                                                                ## BSpline
                                                                                                ## curve
                                                                                                ## of
                                                                                                ##
                                                                                                ## !
                                                                                                ## package
                                                                                                ## Geom.


proc constructDrawTrSurfBSplineCurve*(c: Handle[GeomBSplineCurve]): DrawTrSurfBSplineCurve {.
    constructor, importcpp: "DrawTrSurf_BSplineCurve(@)",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc constructDrawTrSurfBSplineCurve*(c: Handle[GeomBSplineCurve];
                                     curvColor: DrawColor; polesColor: DrawColor;
                                     knotsColor: DrawColor;
                                     knotsShape: DrawMarkerShape; knotsSize: cint;
                                     showPoles: bool; showKnots: bool;
                                     discret: cint; deflection: cfloat;
                                     drawMode: cint): DrawTrSurfBSplineCurve {.
    constructor, importcpp: "DrawTrSurf_BSplineCurve(@)",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc drawOn*(this: DrawTrSurfBSplineCurve; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BSplineCurve.hxx".}
proc drawOn*(this: DrawTrSurfBSplineCurve; dis: var DrawDisplay; showPoles: bool;
            showKnots: bool) {.noSideEffect, importcpp: "DrawOn",
                             header: "DrawTrSurf_BSplineCurve.hxx".}
proc drawOn*(this: DrawTrSurfBSplineCurve; dis: var DrawDisplay; u1: cfloat; u2: cfloat;
            pindex: cint; showPoles: bool = true; showKnots: bool = true) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BSplineCurve.hxx".}
proc showPoles*(this: var DrawTrSurfBSplineCurve) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc showKnots*(this: var DrawTrSurfBSplineCurve) {.importcpp: "ShowKnots",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc clearPoles*(this: var DrawTrSurfBSplineCurve) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc clearKnots*(this: var DrawTrSurfBSplineCurve) {.importcpp: "ClearKnots",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc findPole*(this: DrawTrSurfBSplineCurve; x: cfloat; y: cfloat; d: DrawDisplay;
              prec: cfloat; index: var cint) {.noSideEffect, importcpp: "FindPole",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc findKnot*(this: DrawTrSurfBSplineCurve; x: cfloat; y: cfloat; d: DrawDisplay;
              prec: cfloat; index: var cint) {.noSideEffect, importcpp: "FindKnot",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc setPolesColor*(this: var DrawTrSurfBSplineCurve; aColor: DrawColor) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BSplineCurve.hxx".}
proc setKnotsColor*(this: var DrawTrSurfBSplineCurve; aColor: DrawColor) {.
    importcpp: "SetKnotsColor", header: "DrawTrSurf_BSplineCurve.hxx".}
proc setKnotsShape*(this: var DrawTrSurfBSplineCurve; shape: DrawMarkerShape) {.
    importcpp: "SetKnotsShape", header: "DrawTrSurf_BSplineCurve.hxx".}
proc knotsShape*(this: DrawTrSurfBSplineCurve): DrawMarkerShape {.noSideEffect,
    importcpp: "KnotsShape", header: "DrawTrSurf_BSplineCurve.hxx".}
proc knotsColor*(this: DrawTrSurfBSplineCurve): DrawColor {.noSideEffect,
    importcpp: "KnotsColor", header: "DrawTrSurf_BSplineCurve.hxx".}
proc polesColor*(this: DrawTrSurfBSplineCurve): DrawColor {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BSplineCurve.hxx".}
proc copy*(this: DrawTrSurfBSplineCurve): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BSplineCurve.hxx".}
type
  DrawTrSurfBSplineCurvebaseType* = DrawTrSurfCurve

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_BSplineCurve::get_type_name(@)",
                            header: "DrawTrSurf_BSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_BSplineCurve::get_type_descriptor(@)",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc dynamicType*(this: DrawTrSurfBSplineCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BSplineCurve.hxx".}

























