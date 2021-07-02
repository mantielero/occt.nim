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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BSplineCurve2d"
discard "forward decl of DrawTrSurf_BSplineCurve2d"
type
  HandleDrawTrSurfBSplineCurve2d* = Handle[DrawTrSurfBSplineCurve2d]
  DrawTrSurfBSplineCurve2d* {.importcpp: "DrawTrSurf_BSplineCurve2d",
                             header: "DrawTrSurf_BSplineCurve2d.hxx", bycopy.} = object of DrawTrSurfCurve2d ##
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
                                                                                                      ## Geom2d.


proc constructDrawTrSurfBSplineCurve2d*(c: Handle[Geom2dBSplineCurve]): DrawTrSurfBSplineCurve2d {.
    constructor, importcpp: "DrawTrSurf_BSplineCurve2d(@)",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc constructDrawTrSurfBSplineCurve2d*(c: Handle[Geom2dBSplineCurve];
                                       curvColor: DrawColor;
                                       polesColor: DrawColor;
                                       knotsColor: DrawColor;
                                       knotsShape: DrawMarkerShape;
                                       knotsSize: StandardInteger;
                                       showPoles: StandardBoolean;
                                       showKnots: StandardBoolean;
                                       discret: StandardInteger): DrawTrSurfBSplineCurve2d {.
    constructor, importcpp: "DrawTrSurf_BSplineCurve2d(@)",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc drawOn*(this: DrawTrSurfBSplineCurve2d; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc showPoles*(this: var DrawTrSurfBSplineCurve2d) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc showKnots*(this: var DrawTrSurfBSplineCurve2d) {.importcpp: "ShowKnots",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc clearPoles*(this: var DrawTrSurfBSplineCurve2d) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc clearKnots*(this: var DrawTrSurfBSplineCurve2d) {.importcpp: "ClearKnots",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc findPole*(this: DrawTrSurfBSplineCurve2d; x: StandardReal; y: StandardReal;
              d: DrawDisplay; prec: StandardReal; index: var StandardInteger) {.
    noSideEffect, importcpp: "FindPole", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc findKnot*(this: DrawTrSurfBSplineCurve2d; x: StandardReal; y: StandardReal;
              d: DrawDisplay; prec: StandardReal; index: var StandardInteger) {.
    noSideEffect, importcpp: "FindKnot", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc setPolesColor*(this: var DrawTrSurfBSplineCurve2d; aColor: DrawColor) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc setKnotsColor*(this: var DrawTrSurfBSplineCurve2d; aColor: DrawColor) {.
    importcpp: "SetKnotsColor", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc setKnotsShape*(this: var DrawTrSurfBSplineCurve2d; shape: DrawMarkerShape) {.
    importcpp: "SetKnotsShape", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc knotsShape*(this: DrawTrSurfBSplineCurve2d): DrawMarkerShape {.noSideEffect,
    importcpp: "KnotsShape", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc knotsColor*(this: DrawTrSurfBSplineCurve2d): DrawColor {.noSideEffect,
    importcpp: "KnotsColor", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc polesColor*(this: DrawTrSurfBSplineCurve2d): DrawColor {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc copy*(this: DrawTrSurfBSplineCurve2d): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BSplineCurve2d.hxx".}
type
  DrawTrSurfBSplineCurve2dbaseType* = DrawTrSurfCurve2d

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_BSplineCurve2d::get_type_name(@)",
                            header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_BSplineCurve2d::get_type_descriptor(@)",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc dynamicType*(this: DrawTrSurfBSplineCurve2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BSplineCurve2d.hxx".}

