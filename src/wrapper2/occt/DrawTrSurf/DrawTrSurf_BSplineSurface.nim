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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BSplineSurface"
discard "forward decl of DrawTrSurf_BSplineSurface"
type
  HandleDrawTrSurfBSplineSurface* = Handle[DrawTrSurfBSplineSurface]

## ! This class defines a drawable BSplineSurface.
## ! With this class you can draw the control points and the knots
## ! of the surface.
## ! You can use the general class Surface from DrawTrSurf too,
## ! if you just want to sea boundaries and isoparametric curves.

type
  DrawTrSurfBSplineSurface* {.importcpp: "DrawTrSurf_BSplineSurface",
                             header: "DrawTrSurf_BSplineSurface.hxx", bycopy.} = object of DrawTrSurfSurface ##
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


proc constructDrawTrSurfBSplineSurface*(s: Handle[GeomBSplineSurface]): DrawTrSurfBSplineSurface {.
    constructor, importcpp: "DrawTrSurf_BSplineSurface(@)",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc constructDrawTrSurfBSplineSurface*(s: Handle[GeomBSplineSurface];
                                       boundsColor: DrawColor;
                                       isosColor: DrawColor;
                                       polesColor: DrawColor;
                                       knotsColor: DrawColor;
                                       knotsShape: DrawMarkerShape;
                                       knotsSize: StandardInteger;
                                       showPoles: StandardBoolean;
                                       showKnots: StandardBoolean;
                                       discret: StandardInteger;
                                       deflection: StandardReal;
                                       drawMode: StandardInteger): DrawTrSurfBSplineSurface {.
    constructor, importcpp: "DrawTrSurf_BSplineSurface(@)",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc constructDrawTrSurfBSplineSurface*(s: Handle[GeomBSplineSurface];
                                       nbUIsos: StandardInteger;
                                       nbVIsos: StandardInteger;
                                       boundsColor: DrawColor;
                                       isosColor: DrawColor;
                                       polesColor: DrawColor;
                                       knotsColor: DrawColor;
                                       knotsShape: DrawMarkerShape;
                                       knotsSize: StandardInteger;
                                       showPoles: StandardBoolean;
                                       showKnots: StandardBoolean;
                                       discret: StandardInteger;
                                       deflection: StandardReal;
                                       drawMode: StandardInteger): DrawTrSurfBSplineSurface {.
    constructor, importcpp: "DrawTrSurf_BSplineSurface(@)",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc drawOn*(this: DrawTrSurfBSplineSurface; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BSplineSurface.hxx".}
proc showPoles*(this: var DrawTrSurfBSplineSurface) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc showKnots*(this: var DrawTrSurfBSplineSurface) {.importcpp: "ShowKnots",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc showIsos*(this: var DrawTrSurfBSplineSurface; nu: StandardInteger;
              nv: StandardInteger) {.importcpp: "ShowIsos",
                                   header: "DrawTrSurf_BSplineSurface.hxx".}
proc showKnotsIsos*(this: var DrawTrSurfBSplineSurface) {.
    importcpp: "ShowKnotsIsos", header: "DrawTrSurf_BSplineSurface.hxx".}
proc clearIsos*(this: var DrawTrSurfBSplineSurface) {.importcpp: "ClearIsos",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc clearPoles*(this: var DrawTrSurfBSplineSurface) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc clearKnots*(this: var DrawTrSurfBSplineSurface) {.importcpp: "ClearKnots",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc findPole*(this: DrawTrSurfBSplineSurface; x: StandardReal; y: StandardReal;
              d: DrawDisplay; prec: StandardReal; uIndex: var StandardInteger;
              vIndex: var StandardInteger) {.noSideEffect, importcpp: "FindPole",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc findUKnot*(this: DrawTrSurfBSplineSurface; x: StandardReal; y: StandardReal;
               d: DrawDisplay; prec: StandardReal; uIndex: var StandardInteger) {.
    noSideEffect, importcpp: "FindUKnot", header: "DrawTrSurf_BSplineSurface.hxx".}
proc findVKnot*(this: DrawTrSurfBSplineSurface; x: StandardReal; y: StandardReal;
               d: DrawDisplay; prec: StandardReal; vIndex: var StandardInteger) {.
    noSideEffect, importcpp: "FindVKnot", header: "DrawTrSurf_BSplineSurface.hxx".}
proc setPolesColor*(this: var DrawTrSurfBSplineSurface; aColor: DrawColor) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BSplineSurface.hxx".}
proc setKnotsColor*(this: var DrawTrSurfBSplineSurface; aColor: DrawColor) {.
    importcpp: "SetKnotsColor", header: "DrawTrSurf_BSplineSurface.hxx".}
proc setKnotsShape*(this: var DrawTrSurfBSplineSurface; shape: DrawMarkerShape) {.
    importcpp: "SetKnotsShape", header: "DrawTrSurf_BSplineSurface.hxx".}
proc knotsShape*(this: DrawTrSurfBSplineSurface): DrawMarkerShape {.noSideEffect,
    importcpp: "KnotsShape", header: "DrawTrSurf_BSplineSurface.hxx".}
proc knotsColor*(this: DrawTrSurfBSplineSurface): DrawColor {.noSideEffect,
    importcpp: "KnotsColor", header: "DrawTrSurf_BSplineSurface.hxx".}
proc polesColor*(this: DrawTrSurfBSplineSurface): DrawColor {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BSplineSurface.hxx".}
proc copy*(this: DrawTrSurfBSplineSurface): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BSplineSurface.hxx".}
type
  DrawTrSurfBSplineSurfacebaseType* = DrawTrSurfSurface

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_BSplineSurface::get_type_name(@)",
                            header: "DrawTrSurf_BSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_BSplineSurface::get_type_descriptor(@)",
    header: "DrawTrSurf_BSplineSurface.hxx".}
proc dynamicType*(this: DrawTrSurfBSplineSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BSplineSurface.hxx".}

