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
  ../Standard/Standard, ../Standard/Standard_Type, ../Draw/Draw_Color,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real, DrawTrSurf_Drawable,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Draw/Draw_Interpretor

discard "forward decl of Geom2d_Curve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Curve2d"
discard "forward decl of DrawTrSurf_Curve2d"
type
  Handle_DrawTrSurf_Curve2d* = handle[DrawTrSurf_Curve2d]

## ! This class defines a drawable curve in 2d space.
## ! The curve is drawned in the plane XOY.

type
  DrawTrSurf_Curve2d* {.importcpp: "DrawTrSurf_Curve2d",
                       header: "DrawTrSurf_Curve2d.hxx", bycopy.} = object of DrawTrSurf_Drawable ##
                                                                                           ## !
                                                                                           ## creates
                                                                                           ## a
                                                                                           ## drawable
                                                                                           ## curve
                                                                                           ## from
                                                                                           ## a
                                                                                           ## curve
                                                                                           ## of
                                                                                           ## package
                                                                                           ## Geom2d.


proc constructDrawTrSurf_Curve2d*(C: handle[Geom2d_Curve];
                                 DispOrigin: Standard_Boolean = Standard_True): DrawTrSurf_Curve2d {.
    constructor, importcpp: "DrawTrSurf_Curve2d(@)",
    header: "DrawTrSurf_Curve2d.hxx".}
proc constructDrawTrSurf_Curve2d*(C: handle[Geom2d_Curve]; aColor: Draw_Color;
                                 Discret: Standard_Integer;
                                 DispOrigin: Standard_Boolean = Standard_True;
    DispCurvRadius: Standard_Boolean = Standard_False;
                                 RadiusMax: Standard_Real = 1.0e3;
                                 RatioOfRadius: Standard_Real = 0.1): DrawTrSurf_Curve2d {.
    constructor, importcpp: "DrawTrSurf_Curve2d(@)",
    header: "DrawTrSurf_Curve2d.hxx".}
proc DrawOn*(this: DrawTrSurf_Curve2d; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Curve2d.hxx".}
proc GetCurve*(this: DrawTrSurf_Curve2d): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "GetCurve", header: "DrawTrSurf_Curve2d.hxx".}
proc SetColor*(this: var DrawTrSurf_Curve2d; aColor: Draw_Color) {.
    importcpp: "SetColor", header: "DrawTrSurf_Curve2d.hxx".}
proc ShowCurvature*(this: var DrawTrSurf_Curve2d) {.importcpp: "ShowCurvature",
    header: "DrawTrSurf_Curve2d.hxx".}
proc ClearCurvature*(this: var DrawTrSurf_Curve2d) {.importcpp: "ClearCurvature",
    header: "DrawTrSurf_Curve2d.hxx".}
proc SetRadiusMax*(this: var DrawTrSurf_Curve2d; Radius: Standard_Real) {.
    importcpp: "SetRadiusMax", header: "DrawTrSurf_Curve2d.hxx".}
proc SetRadiusRatio*(this: var DrawTrSurf_Curve2d; Ratio: Standard_Real) {.
    importcpp: "SetRadiusRatio", header: "DrawTrSurf_Curve2d.hxx".}
proc Color*(this: DrawTrSurf_Curve2d): Draw_Color {.noSideEffect, importcpp: "Color",
    header: "DrawTrSurf_Curve2d.hxx".}
proc RadiusMax*(this: DrawTrSurf_Curve2d): Standard_Real {.noSideEffect,
    importcpp: "RadiusMax", header: "DrawTrSurf_Curve2d.hxx".}
proc RadiusRatio*(this: DrawTrSurf_Curve2d): Standard_Real {.noSideEffect,
    importcpp: "RadiusRatio", header: "DrawTrSurf_Curve2d.hxx".}
proc Copy*(this: DrawTrSurf_Curve2d): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Curve2d.hxx".}
proc Dump*(this: DrawTrSurf_Curve2d; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Curve2d.hxx".}
proc Is3D*(this: DrawTrSurf_Curve2d): Standard_Boolean {.noSideEffect,
    importcpp: "Is3D", header: "DrawTrSurf_Curve2d.hxx".}
proc Whatis*(this: DrawTrSurf_Curve2d; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Curve2d.hxx".}
type
  DrawTrSurf_Curve2dbase_type* = DrawTrSurf_Drawable

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_Curve2d::get_type_name(@)",
                              header: "DrawTrSurf_Curve2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_Curve2d::get_type_descriptor(@)",
    header: "DrawTrSurf_Curve2d.hxx".}
proc DynamicType*(this: DrawTrSurf_Curve2d): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Curve2d.hxx".}