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
  ../Draw/Draw_MarkerShape, ../Draw/Draw_Color, ../Standard/Standard_Integer,
  DrawTrSurf_Curve, ../Standard/Standard_Real

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BSplineCurve"
discard "forward decl of DrawTrSurf_BSplineCurve"
type
  Handle_DrawTrSurf_BSplineCurve* = handle[DrawTrSurf_BSplineCurve]
  DrawTrSurf_BSplineCurve* {.importcpp: "DrawTrSurf_BSplineCurve",
                            header: "DrawTrSurf_BSplineCurve.hxx", bycopy.} = object of DrawTrSurf_Curve ##
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


proc constructDrawTrSurf_BSplineCurve*(C: handle[Geom_BSplineCurve]): DrawTrSurf_BSplineCurve {.
    constructor, importcpp: "DrawTrSurf_BSplineCurve(@)",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc constructDrawTrSurf_BSplineCurve*(C: handle[Geom_BSplineCurve];
                                      CurvColor: Draw_Color;
                                      PolesColor: Draw_Color;
                                      KnotsColor: Draw_Color;
                                      KnotsShape: Draw_MarkerShape;
                                      KnotsSize: Standard_Integer;
                                      ShowPoles: Standard_Boolean;
                                      ShowKnots: Standard_Boolean;
                                      Discret: Standard_Integer;
                                      Deflection: Standard_Real;
                                      DrawMode: Standard_Integer): DrawTrSurf_BSplineCurve {.
    constructor, importcpp: "DrawTrSurf_BSplineCurve(@)",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc DrawOn*(this: DrawTrSurf_BSplineCurve; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BSplineCurve.hxx".}
proc DrawOn*(this: DrawTrSurf_BSplineCurve; dis: var Draw_Display;
            ShowPoles: Standard_Boolean; ShowKnots: Standard_Boolean) {.
    noSideEffect, importcpp: "DrawOn", header: "DrawTrSurf_BSplineCurve.hxx".}
proc DrawOn*(this: DrawTrSurf_BSplineCurve; dis: var Draw_Display; U1: Standard_Real;
            U2: Standard_Real; Pindex: Standard_Integer;
            ShowPoles: Standard_Boolean = Standard_True;
            ShowKnots: Standard_Boolean = Standard_True) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BSplineCurve.hxx".}
proc ShowPoles*(this: var DrawTrSurf_BSplineCurve) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc ShowKnots*(this: var DrawTrSurf_BSplineCurve) {.importcpp: "ShowKnots",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc ClearPoles*(this: var DrawTrSurf_BSplineCurve) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc ClearKnots*(this: var DrawTrSurf_BSplineCurve) {.importcpp: "ClearKnots",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc FindPole*(this: DrawTrSurf_BSplineCurve; X: Standard_Real; Y: Standard_Real;
              D: Draw_Display; Prec: Standard_Real; Index: var Standard_Integer) {.
    noSideEffect, importcpp: "FindPole", header: "DrawTrSurf_BSplineCurve.hxx".}
proc FindKnot*(this: DrawTrSurf_BSplineCurve; X: Standard_Real; Y: Standard_Real;
              D: Draw_Display; Prec: Standard_Real; Index: var Standard_Integer) {.
    noSideEffect, importcpp: "FindKnot", header: "DrawTrSurf_BSplineCurve.hxx".}
proc SetPolesColor*(this: var DrawTrSurf_BSplineCurve; aColor: Draw_Color) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BSplineCurve.hxx".}
proc SetKnotsColor*(this: var DrawTrSurf_BSplineCurve; aColor: Draw_Color) {.
    importcpp: "SetKnotsColor", header: "DrawTrSurf_BSplineCurve.hxx".}
proc SetKnotsShape*(this: var DrawTrSurf_BSplineCurve; Shape: Draw_MarkerShape) {.
    importcpp: "SetKnotsShape", header: "DrawTrSurf_BSplineCurve.hxx".}
proc KnotsShape*(this: DrawTrSurf_BSplineCurve): Draw_MarkerShape {.noSideEffect,
    importcpp: "KnotsShape", header: "DrawTrSurf_BSplineCurve.hxx".}
proc KnotsColor*(this: DrawTrSurf_BSplineCurve): Draw_Color {.noSideEffect,
    importcpp: "KnotsColor", header: "DrawTrSurf_BSplineCurve.hxx".}
proc PolesColor*(this: DrawTrSurf_BSplineCurve): Draw_Color {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BSplineCurve.hxx".}
proc Copy*(this: DrawTrSurf_BSplineCurve): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BSplineCurve.hxx".}
type
  DrawTrSurf_BSplineCurvebase_type* = DrawTrSurf_Curve

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_BSplineCurve::get_type_name(@)",
                              header: "DrawTrSurf_BSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_BSplineCurve::get_type_descriptor(@)",
    header: "DrawTrSurf_BSplineCurve.hxx".}
proc DynamicType*(this: DrawTrSurf_BSplineCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BSplineCurve.hxx".}