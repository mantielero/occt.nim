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
  DrawTrSurf_Surface, ../Standard/Standard_Real

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BSplineSurface"
discard "forward decl of DrawTrSurf_BSplineSurface"
type
  Handle_DrawTrSurf_BSplineSurface* = handle[DrawTrSurf_BSplineSurface]

## ! This class defines a drawable BSplineSurface.
## ! With this class you can draw the control points and the knots
## ! of the surface.
## ! You can use the general class Surface from DrawTrSurf too,
## ! if you just want to sea boundaries and isoparametric curves.

type
  DrawTrSurf_BSplineSurface* {.importcpp: "DrawTrSurf_BSplineSurface",
                              header: "DrawTrSurf_BSplineSurface.hxx", bycopy.} = object of DrawTrSurf_Surface ##
                                                                                                        ## !
                                                                                                        ## default
                                                                                                        ## drawing
                                                                                                        ## mode.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## The
                                                                                                        ## isoparametric
                                                                                                        ## curves
                                                                                                        ## corresponding
                                                                                                        ## to
                                                                                                        ## the
                                                                                                        ## knots
                                                                                                        ## values
                                                                                                        ## are
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## drawn.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## The
                                                                                                        ## control
                                                                                                        ## points
                                                                                                        ## and
                                                                                                        ## the
                                                                                                        ## knots
                                                                                                        ## points
                                                                                                        ## are
                                                                                                        ## drawn.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## The
                                                                                                        ## boundaries
                                                                                                        ## are
                                                                                                        ## yellow,
                                                                                                        ## the
                                                                                                        ## isoparametric
                                                                                                        ## curves
                                                                                                        ## are
                                                                                                        ## blues.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## For
                                                                                                        ## the
                                                                                                        ## discretisation
                                                                                                        ## 50
                                                                                                        ## points
                                                                                                        ## are
                                                                                                        ## computed
                                                                                                        ## in
                                                                                                        ## each
                                                                                                        ## parametric
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## direction.


proc constructDrawTrSurf_BSplineSurface*(S: handle[Geom_BSplineSurface]): DrawTrSurf_BSplineSurface {.
    constructor, importcpp: "DrawTrSurf_BSplineSurface(@)",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc constructDrawTrSurf_BSplineSurface*(S: handle[Geom_BSplineSurface];
                                        BoundsColor: Draw_Color;
                                        IsosColor: Draw_Color;
                                        PolesColor: Draw_Color;
                                        KnotsColor: Draw_Color;
                                        KnotsShape: Draw_MarkerShape;
                                        KnotsSize: Standard_Integer;
                                        ShowPoles: Standard_Boolean;
                                        ShowKnots: Standard_Boolean;
                                        Discret: Standard_Integer;
                                        Deflection: Standard_Real;
                                        DrawMode: Standard_Integer): DrawTrSurf_BSplineSurface {.
    constructor, importcpp: "DrawTrSurf_BSplineSurface(@)",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc constructDrawTrSurf_BSplineSurface*(S: handle[Geom_BSplineSurface];
                                        NbUIsos: Standard_Integer;
                                        NbVIsos: Standard_Integer;
                                        BoundsColor: Draw_Color;
                                        IsosColor: Draw_Color;
                                        PolesColor: Draw_Color;
                                        KnotsColor: Draw_Color;
                                        KnotsShape: Draw_MarkerShape;
                                        KnotsSize: Standard_Integer;
                                        ShowPoles: Standard_Boolean;
                                        ShowKnots: Standard_Boolean;
                                        Discret: Standard_Integer;
                                        Deflection: Standard_Real;
                                        DrawMode: Standard_Integer): DrawTrSurf_BSplineSurface {.
    constructor, importcpp: "DrawTrSurf_BSplineSurface(@)",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc DrawOn*(this: DrawTrSurf_BSplineSurface; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BSplineSurface.hxx".}
proc ShowPoles*(this: var DrawTrSurf_BSplineSurface) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc ShowKnots*(this: var DrawTrSurf_BSplineSurface) {.importcpp: "ShowKnots",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc ShowIsos*(this: var DrawTrSurf_BSplineSurface; Nu: Standard_Integer;
              Nv: Standard_Integer) {.importcpp: "ShowIsos",
                                    header: "DrawTrSurf_BSplineSurface.hxx".}
proc ShowKnotsIsos*(this: var DrawTrSurf_BSplineSurface) {.
    importcpp: "ShowKnotsIsos", header: "DrawTrSurf_BSplineSurface.hxx".}
proc ClearIsos*(this: var DrawTrSurf_BSplineSurface) {.importcpp: "ClearIsos",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc ClearPoles*(this: var DrawTrSurf_BSplineSurface) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc ClearKnots*(this: var DrawTrSurf_BSplineSurface) {.importcpp: "ClearKnots",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc FindPole*(this: DrawTrSurf_BSplineSurface; X: Standard_Real; Y: Standard_Real;
              D: Draw_Display; Prec: Standard_Real; UIndex: var Standard_Integer;
              VIndex: var Standard_Integer) {.noSideEffect, importcpp: "FindPole",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc FindUKnot*(this: DrawTrSurf_BSplineSurface; X: Standard_Real; Y: Standard_Real;
               D: Draw_Display; Prec: Standard_Real; UIndex: var Standard_Integer) {.
    noSideEffect, importcpp: "FindUKnot", header: "DrawTrSurf_BSplineSurface.hxx".}
proc FindVKnot*(this: DrawTrSurf_BSplineSurface; X: Standard_Real; Y: Standard_Real;
               D: Draw_Display; Prec: Standard_Real; VIndex: var Standard_Integer) {.
    noSideEffect, importcpp: "FindVKnot", header: "DrawTrSurf_BSplineSurface.hxx".}
proc SetPolesColor*(this: var DrawTrSurf_BSplineSurface; aColor: Draw_Color) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BSplineSurface.hxx".}
proc SetKnotsColor*(this: var DrawTrSurf_BSplineSurface; aColor: Draw_Color) {.
    importcpp: "SetKnotsColor", header: "DrawTrSurf_BSplineSurface.hxx".}
proc SetKnotsShape*(this: var DrawTrSurf_BSplineSurface; Shape: Draw_MarkerShape) {.
    importcpp: "SetKnotsShape", header: "DrawTrSurf_BSplineSurface.hxx".}
proc KnotsShape*(this: DrawTrSurf_BSplineSurface): Draw_MarkerShape {.noSideEffect,
    importcpp: "KnotsShape", header: "DrawTrSurf_BSplineSurface.hxx".}
proc KnotsColor*(this: DrawTrSurf_BSplineSurface): Draw_Color {.noSideEffect,
    importcpp: "KnotsColor", header: "DrawTrSurf_BSplineSurface.hxx".}
proc PolesColor*(this: DrawTrSurf_BSplineSurface): Draw_Color {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BSplineSurface.hxx".}
proc Copy*(this: DrawTrSurf_BSplineSurface): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BSplineSurface.hxx".}
type
  DrawTrSurf_BSplineSurfacebase_type* = DrawTrSurf_Surface

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_BSplineSurface::get_type_name(@)",
                              header: "DrawTrSurf_BSplineSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_BSplineSurface::get_type_descriptor(@)",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc DynamicType*(this: DrawTrSurf_BSplineSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BSplineSurface.hxx".}