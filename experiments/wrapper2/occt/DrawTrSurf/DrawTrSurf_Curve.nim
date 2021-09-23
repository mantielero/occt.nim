##  Created on: 1992-05-21
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

discard "forward decl of Geom_Curve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Curve"
discard "forward decl of DrawTrSurf_Curve"
type
  Handle_DrawTrSurf_Curve* = handle[DrawTrSurf_Curve]

## ! This class defines a drawable curve in 3d space.

type
  DrawTrSurf_Curve* {.importcpp: "DrawTrSurf_Curve",
                     header: "DrawTrSurf_Curve.hxx", bycopy.} = object of DrawTrSurf_Drawable ##
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
                                                                                       ## Geom.


proc constructDrawTrSurf_Curve*(C: handle[Geom_Curve];
                               DispOrigin: Standard_Boolean = Standard_True): DrawTrSurf_Curve {.
    constructor, importcpp: "DrawTrSurf_Curve(@)", header: "DrawTrSurf_Curve.hxx".}
proc constructDrawTrSurf_Curve*(C: handle[Geom_Curve]; aColor: Draw_Color;
                               Discret: Standard_Integer;
                               Deflection: Standard_Real;
                               DrawMode: Standard_Integer;
                               DispOrigin: Standard_Boolean = Standard_True;
    DispCurvRadius: Standard_Boolean = Standard_False;
                               RadiusMax: Standard_Real = 1.0e3;
                               RatioOfRadius: Standard_Real = 0.1): DrawTrSurf_Curve {.
    constructor, importcpp: "DrawTrSurf_Curve(@)", header: "DrawTrSurf_Curve.hxx".}
proc DrawOn*(this: DrawTrSurf_Curve; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Curve.hxx".}
proc GetCurve*(this: DrawTrSurf_Curve): handle[Geom_Curve] {.noSideEffect,
    importcpp: "GetCurve", header: "DrawTrSurf_Curve.hxx".}
proc SetColor*(this: var DrawTrSurf_Curve; aColor: Draw_Color) {.
    importcpp: "SetColor", header: "DrawTrSurf_Curve.hxx".}
proc DisplayOrigin*(this: DrawTrSurf_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "DisplayOrigin", header: "DrawTrSurf_Curve.hxx".}
proc DisplayOrigin*(this: var DrawTrSurf_Curve; V: Standard_Boolean) {.
    importcpp: "DisplayOrigin", header: "DrawTrSurf_Curve.hxx".}
proc ShowCurvature*(this: var DrawTrSurf_Curve) {.importcpp: "ShowCurvature",
    header: "DrawTrSurf_Curve.hxx".}
proc ClearCurvature*(this: var DrawTrSurf_Curve) {.importcpp: "ClearCurvature",
    header: "DrawTrSurf_Curve.hxx".}
proc SetRadiusMax*(this: var DrawTrSurf_Curve; Radius: Standard_Real) {.
    importcpp: "SetRadiusMax", header: "DrawTrSurf_Curve.hxx".}
proc SetRadiusRatio*(this: var DrawTrSurf_Curve; Ratio: Standard_Real) {.
    importcpp: "SetRadiusRatio", header: "DrawTrSurf_Curve.hxx".}
proc Color*(this: DrawTrSurf_Curve): Draw_Color {.noSideEffect, importcpp: "Color",
    header: "DrawTrSurf_Curve.hxx".}
proc RadiusMax*(this: DrawTrSurf_Curve): Standard_Real {.noSideEffect,
    importcpp: "RadiusMax", header: "DrawTrSurf_Curve.hxx".}
proc RadiusRatio*(this: DrawTrSurf_Curve): Standard_Real {.noSideEffect,
    importcpp: "RadiusRatio", header: "DrawTrSurf_Curve.hxx".}
proc Copy*(this: DrawTrSurf_Curve): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Curve.hxx".}
proc Dump*(this: DrawTrSurf_Curve; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Curve.hxx".}
proc Whatis*(this: DrawTrSurf_Curve; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Curve.hxx".}
type
  DrawTrSurf_Curvebase_type* = DrawTrSurf_Drawable

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_Curve::get_type_name(@)",
                              header: "DrawTrSurf_Curve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_Curve::get_type_descriptor(@)",
    header: "DrawTrSurf_Curve.hxx".}
proc DynamicType*(this: DrawTrSurf_Curve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Curve.hxx".}