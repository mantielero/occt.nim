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
  DrawTrSurf_Curve2d, ../Standard/Standard_Real

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BSplineCurve2d"
discard "forward decl of DrawTrSurf_BSplineCurve2d"
type
  Handle_DrawTrSurf_BSplineCurve2d* = handle[DrawTrSurf_BSplineCurve2d]
  DrawTrSurf_BSplineCurve2d* {.importcpp: "DrawTrSurf_BSplineCurve2d",
                              header: "DrawTrSurf_BSplineCurve2d.hxx", bycopy.} = object of DrawTrSurf_Curve2d ##
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


proc constructDrawTrSurf_BSplineCurve2d*(C: handle[Geom2d_BSplineCurve]): DrawTrSurf_BSplineCurve2d {.
    constructor, importcpp: "DrawTrSurf_BSplineCurve2d(@)",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc constructDrawTrSurf_BSplineCurve2d*(C: handle[Geom2d_BSplineCurve];
                                        CurvColor: Draw_Color;
                                        PolesColor: Draw_Color;
                                        KnotsColor: Draw_Color;
                                        KnotsShape: Draw_MarkerShape;
                                        KnotsSize: Standard_Integer;
                                        ShowPoles: Standard_Boolean;
                                        ShowKnots: Standard_Boolean;
                                        Discret: Standard_Integer): DrawTrSurf_BSplineCurve2d {.
    constructor, importcpp: "DrawTrSurf_BSplineCurve2d(@)",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc DrawOn*(this: DrawTrSurf_BSplineCurve2d; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc ShowPoles*(this: var DrawTrSurf_BSplineCurve2d) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc ShowKnots*(this: var DrawTrSurf_BSplineCurve2d) {.importcpp: "ShowKnots",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc ClearPoles*(this: var DrawTrSurf_BSplineCurve2d) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc ClearKnots*(this: var DrawTrSurf_BSplineCurve2d) {.importcpp: "ClearKnots",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc FindPole*(this: DrawTrSurf_BSplineCurve2d; X: Standard_Real; Y: Standard_Real;
              D: Draw_Display; Prec: Standard_Real; Index: var Standard_Integer) {.
    noSideEffect, importcpp: "FindPole", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc FindKnot*(this: DrawTrSurf_BSplineCurve2d; X: Standard_Real; Y: Standard_Real;
              D: Draw_Display; Prec: Standard_Real; Index: var Standard_Integer) {.
    noSideEffect, importcpp: "FindKnot", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc SetPolesColor*(this: var DrawTrSurf_BSplineCurve2d; aColor: Draw_Color) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc SetKnotsColor*(this: var DrawTrSurf_BSplineCurve2d; aColor: Draw_Color) {.
    importcpp: "SetKnotsColor", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc SetKnotsShape*(this: var DrawTrSurf_BSplineCurve2d; Shape: Draw_MarkerShape) {.
    importcpp: "SetKnotsShape", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc KnotsShape*(this: DrawTrSurf_BSplineCurve2d): Draw_MarkerShape {.noSideEffect,
    importcpp: "KnotsShape", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc KnotsColor*(this: DrawTrSurf_BSplineCurve2d): Draw_Color {.noSideEffect,
    importcpp: "KnotsColor", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc PolesColor*(this: DrawTrSurf_BSplineCurve2d): Draw_Color {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc Copy*(this: DrawTrSurf_BSplineCurve2d): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BSplineCurve2d.hxx".}
type
  DrawTrSurf_BSplineCurve2dbase_type* = DrawTrSurf_Curve2d

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_BSplineCurve2d::get_type_name(@)",
                              header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_BSplineCurve2d::get_type_descriptor(@)",
    header: "DrawTrSurf_BSplineCurve2d.hxx".}
proc DynamicType*(this: DrawTrSurf_BSplineCurve2d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BSplineCurve2d.hxx".}