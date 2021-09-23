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
  ../Draw/Draw_Color, DrawTrSurf_Surface, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of Geom_BezierSurface"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BezierSurface"
discard "forward decl of DrawTrSurf_BezierSurface"
type
  Handle_DrawTrSurf_BezierSurface* = handle[DrawTrSurf_BezierSurface]
  DrawTrSurf_BezierSurface* {.importcpp: "DrawTrSurf_BezierSurface",
                             header: "DrawTrSurf_BezierSurface.hxx", bycopy.} = object of DrawTrSurf_Surface ##
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


proc constructDrawTrSurf_BezierSurface*(S: handle[Geom_BezierSurface]): DrawTrSurf_BezierSurface {.
    constructor, importcpp: "DrawTrSurf_BezierSurface(@)",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc constructDrawTrSurf_BezierSurface*(S: handle[Geom_BezierSurface];
                                       NbUIsos: Standard_Integer;
                                       NbVIsos: Standard_Integer;
                                       BoundsColor: Draw_Color;
                                       IsosColor: Draw_Color;
                                       PolesColor: Draw_Color;
                                       ShowPoles: Standard_Boolean;
                                       Discret: Standard_Integer;
                                       Deflection: Standard_Real;
                                       DrawMode: Standard_Integer): DrawTrSurf_BezierSurface {.
    constructor, importcpp: "DrawTrSurf_BezierSurface(@)",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc DrawOn*(this: DrawTrSurf_BezierSurface; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BezierSurface.hxx".}
proc ShowPoles*(this: var DrawTrSurf_BezierSurface) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc ClearPoles*(this: var DrawTrSurf_BezierSurface) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc FindPole*(this: DrawTrSurf_BezierSurface; X: Standard_Real; Y: Standard_Real;
              D: Draw_Display; Prec: Standard_Real; UIndex: var Standard_Integer;
              VIndex: var Standard_Integer) {.noSideEffect, importcpp: "FindPole",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc SetPolesColor*(this: var DrawTrSurf_BezierSurface; aColor: Draw_Color) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BezierSurface.hxx".}
proc PolesColor*(this: DrawTrSurf_BezierSurface): Draw_Color {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BezierSurface.hxx".}
proc Copy*(this: DrawTrSurf_BezierSurface): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BezierSurface.hxx".}
type
  DrawTrSurf_BezierSurfacebase_type* = DrawTrSurf_Surface

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_BezierSurface::get_type_name(@)",
                              header: "DrawTrSurf_BezierSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_BezierSurface::get_type_descriptor(@)",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc DynamicType*(this: DrawTrSurf_BezierSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BezierSurface.hxx".}