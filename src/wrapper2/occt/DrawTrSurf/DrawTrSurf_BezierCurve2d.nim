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

discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BezierCurve2d"
discard "forward decl of DrawTrSurf_BezierCurve2d"
type
  HandleDrawTrSurfBezierCurve2d* = Handle[DrawTrSurfBezierCurve2d]
  DrawTrSurfBezierCurve2d* {.importcpp: "DrawTrSurf_BezierCurve2d",
                            header: "DrawTrSurf_BezierCurve2d.hxx", bycopy.} = object of DrawTrSurfCurve2d ##
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
                                                                                                    ## Geom2d.


proc constructDrawTrSurfBezierCurve2d*(c: Handle[Geom2dBezierCurve]): DrawTrSurfBezierCurve2d {.
    constructor, importcpp: "DrawTrSurf_BezierCurve2d(@)",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc constructDrawTrSurfBezierCurve2d*(c: Handle[Geom2dBezierCurve];
                                      curvColor: DrawColor; polesColor: DrawColor;
                                      showPoles: StandardBoolean;
                                      discret: StandardInteger): DrawTrSurfBezierCurve2d {.
    constructor, importcpp: "DrawTrSurf_BezierCurve2d(@)",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc drawOn*(this: DrawTrSurfBezierCurve2d; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BezierCurve2d.hxx".}
proc showPoles*(this: var DrawTrSurfBezierCurve2d) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc clearPoles*(this: var DrawTrSurfBezierCurve2d) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc findPole*(this: DrawTrSurfBezierCurve2d; x: StandardReal; y: StandardReal;
              d: DrawDisplay; prec: StandardReal; index: var StandardInteger) {.
    noSideEffect, importcpp: "FindPole", header: "DrawTrSurf_BezierCurve2d.hxx".}
proc setPolesColor*(this: var DrawTrSurfBezierCurve2d; aColor: DrawColor) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BezierCurve2d.hxx".}
proc polesColor*(this: DrawTrSurfBezierCurve2d): DrawColor {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BezierCurve2d.hxx".}
proc copy*(this: DrawTrSurfBezierCurve2d): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BezierCurve2d.hxx".}
type
  DrawTrSurfBezierCurve2dbaseType* = DrawTrSurfCurve2d

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_BezierCurve2d::get_type_name(@)",
                            header: "DrawTrSurf_BezierCurve2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_BezierCurve2d::get_type_descriptor(@)",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc dynamicType*(this: DrawTrSurfBezierCurve2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BezierCurve2d.hxx".}

