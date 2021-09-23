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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Draw/Draw_Color, DrawTrSurf_Curve2d, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BezierCurve2d"
discard "forward decl of DrawTrSurf_BezierCurve2d"
type
  Handle_DrawTrSurf_BezierCurve2d* = handle[DrawTrSurf_BezierCurve2d]
  DrawTrSurf_BezierCurve2d* {.importcpp: "DrawTrSurf_BezierCurve2d",
                             header: "DrawTrSurf_BezierCurve2d.hxx", bycopy.} = object of DrawTrSurf_Curve2d ##
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


proc constructDrawTrSurf_BezierCurve2d*(C: handle[Geom2d_BezierCurve]): DrawTrSurf_BezierCurve2d {.
    constructor, importcpp: "DrawTrSurf_BezierCurve2d(@)",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc constructDrawTrSurf_BezierCurve2d*(C: handle[Geom2d_BezierCurve];
                                       CurvColor: Draw_Color;
                                       PolesColor: Draw_Color;
                                       ShowPoles: Standard_Boolean;
                                       Discret: Standard_Integer): DrawTrSurf_BezierCurve2d {.
    constructor, importcpp: "DrawTrSurf_BezierCurve2d(@)",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc DrawOn*(this: DrawTrSurf_BezierCurve2d; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BezierCurve2d.hxx".}
proc ShowPoles*(this: var DrawTrSurf_BezierCurve2d) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc ClearPoles*(this: var DrawTrSurf_BezierCurve2d) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc FindPole*(this: DrawTrSurf_BezierCurve2d; X: Standard_Real; Y: Standard_Real;
              D: Draw_Display; Prec: Standard_Real; Index: var Standard_Integer) {.
    noSideEffect, importcpp: "FindPole", header: "DrawTrSurf_BezierCurve2d.hxx".}
proc SetPolesColor*(this: var DrawTrSurf_BezierCurve2d; aColor: Draw_Color) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BezierCurve2d.hxx".}
proc PolesColor*(this: DrawTrSurf_BezierCurve2d): Draw_Color {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BezierCurve2d.hxx".}
proc Copy*(this: DrawTrSurf_BezierCurve2d): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BezierCurve2d.hxx".}
type
  DrawTrSurf_BezierCurve2dbase_type* = DrawTrSurf_Curve2d

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_BezierCurve2d::get_type_name(@)",
                              header: "DrawTrSurf_BezierCurve2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_BezierCurve2d::get_type_descriptor(@)",
    header: "DrawTrSurf_BezierCurve2d.hxx".}
proc DynamicType*(this: DrawTrSurf_BezierCurve2d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BezierCurve2d.hxx".}