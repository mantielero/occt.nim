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

discard "forward decl of Geom_BezierCurve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BezierCurve"
discard "forward decl of DrawTrSurf_BezierCurve"
type
  HandleDrawTrSurfBezierCurve* = Handle[DrawTrSurfBezierCurve]
  DrawTrSurfBezierCurve* {.importcpp: "DrawTrSurf_BezierCurve",
                          header: "DrawTrSurf_BezierCurve.hxx", bycopy.} = object of DrawTrSurfCurve ##
                                                                                              ## !
                                                                                              ## creates
                                                                                              ## a
                                                                                              ## drawable
                                                                                              ## Bezier
                                                                                              ## curve
                                                                                              ## from
                                                                                              ## a
                                                                                              ## Bezier
                                                                                              ## curve
                                                                                              ## of
                                                                                              ##
                                                                                              ## !
                                                                                              ## package
                                                                                              ## Geom.


proc constructDrawTrSurfBezierCurve*(c: Handle[GeomBezierCurve]): DrawTrSurfBezierCurve {.
    constructor, importcpp: "DrawTrSurf_BezierCurve(@)",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc constructDrawTrSurfBezierCurve*(c: Handle[GeomBezierCurve];
                                    curvColor: DrawColor; polesColor: DrawColor;
                                    showPoles: StandardBoolean;
                                    discret: StandardInteger;
                                    deflection: StandardReal;
                                    drawMode: StandardInteger): DrawTrSurfBezierCurve {.
    constructor, importcpp: "DrawTrSurf_BezierCurve(@)",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc drawOn*(this: DrawTrSurfBezierCurve; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BezierCurve.hxx".}
proc showPoles*(this: var DrawTrSurfBezierCurve) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc clearPoles*(this: var DrawTrSurfBezierCurve) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc findPole*(this: DrawTrSurfBezierCurve; x: StandardReal; y: StandardReal;
              d: DrawDisplay; prec: StandardReal; index: var StandardInteger) {.
    noSideEffect, importcpp: "FindPole", header: "DrawTrSurf_BezierCurve.hxx".}
proc setPolesColor*(this: var DrawTrSurfBezierCurve; aColor: DrawColor) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BezierCurve.hxx".}
proc polesColor*(this: DrawTrSurfBezierCurve): DrawColor {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BezierCurve.hxx".}
proc copy*(this: DrawTrSurfBezierCurve): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BezierCurve.hxx".}
type
  DrawTrSurfBezierCurvebaseType* = DrawTrSurfCurve

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_BezierCurve::get_type_name(@)",
                            header: "DrawTrSurf_BezierCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_BezierCurve::get_type_descriptor(@)",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc dynamicType*(this: DrawTrSurfBezierCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_BezierCurve.hxx".}

