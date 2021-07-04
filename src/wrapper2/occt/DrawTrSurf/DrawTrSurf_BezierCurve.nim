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
  ../Draw/Draw_Color, DrawTrSurf_Curve, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of Geom_BezierCurve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BezierCurve"
discard "forward decl of DrawTrSurf_BezierCurve"
type
  Handle_DrawTrSurf_BezierCurve* = handle[DrawTrSurf_BezierCurve]
  DrawTrSurf_BezierCurve* {.importcpp: "DrawTrSurf_BezierCurve",
                           header: "DrawTrSurf_BezierCurve.hxx", bycopy.} = object of DrawTrSurf_Curve ##
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


proc constructDrawTrSurf_BezierCurve*(C: handle[Geom_BezierCurve]): DrawTrSurf_BezierCurve {.
    constructor, importcpp: "DrawTrSurf_BezierCurve(@)",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc constructDrawTrSurf_BezierCurve*(C: handle[Geom_BezierCurve];
                                     CurvColor: Draw_Color;
                                     PolesColor: Draw_Color;
                                     ShowPoles: Standard_Boolean;
                                     Discret: Standard_Integer;
                                     Deflection: Standard_Real;
                                     DrawMode: Standard_Integer): DrawTrSurf_BezierCurve {.
    constructor, importcpp: "DrawTrSurf_BezierCurve(@)",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc DrawOn*(this: DrawTrSurf_BezierCurve; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BezierCurve.hxx".}
proc ShowPoles*(this: var DrawTrSurf_BezierCurve) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc ClearPoles*(this: var DrawTrSurf_BezierCurve) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc FindPole*(this: DrawTrSurf_BezierCurve; X: Standard_Real; Y: Standard_Real;
              D: Draw_Display; Prec: Standard_Real; Index: var Standard_Integer) {.
    noSideEffect, importcpp: "FindPole", header: "DrawTrSurf_BezierCurve.hxx".}
proc SetPolesColor*(this: var DrawTrSurf_BezierCurve; aColor: Draw_Color) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BezierCurve.hxx".}
proc PolesColor*(this: DrawTrSurf_BezierCurve): Draw_Color {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BezierCurve.hxx".}
proc Copy*(this: DrawTrSurf_BezierCurve): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BezierCurve.hxx".}
type
  DrawTrSurf_BezierCurvebase_type* = DrawTrSurf_Curve

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_BezierCurve::get_type_name(@)",
                              header: "DrawTrSurf_BezierCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_BezierCurve::get_type_descriptor(@)",
    header: "DrawTrSurf_BezierCurve.hxx".}
proc DynamicType*(this: DrawTrSurf_BezierCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BezierCurve.hxx".}