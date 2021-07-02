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

discard "forward decl of Geom_Surface"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Surface"
discard "forward decl of DrawTrSurf_Surface"
type
  HandleDrawTrSurfSurface* = Handle[DrawTrSurfSurface]

## ! This class defines a drawable surface.
## ! With this class you can draw a general surface from
## ! package Geom.

type
  DrawTrSurfSurface* {.importcpp: "DrawTrSurf_Surface",
                      header: "DrawTrSurf_Surface.hxx", bycopy.} = object of DrawTrSurfDrawable ##
                                                                                         ## !
                                                                                         ## default
                                                                                         ## drawing
                                                                                         ## mode
                                                                                         ##
                                                                                         ## !
                                                                                         ## Just
                                                                                         ## the
                                                                                         ## middle
                                                                                         ## isoparametric
                                                                                         ## curves
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


proc constructDrawTrSurfSurface*(s: Handle[GeomSurface]): DrawTrSurfSurface {.
    constructor, importcpp: "DrawTrSurf_Surface(@)",
    header: "DrawTrSurf_Surface.hxx".}
proc constructDrawTrSurfSurface*(s: Handle[GeomSurface]; nu: StandardInteger;
                                nv: StandardInteger; boundsColor: DrawColor;
                                isosColor: DrawColor; discret: StandardInteger;
                                deflection: StandardReal;
                                drawMode: StandardInteger): DrawTrSurfSurface {.
    constructor, importcpp: "DrawTrSurf_Surface(@)",
    header: "DrawTrSurf_Surface.hxx".}
proc boundsColor*(this: DrawTrSurfSurface): DrawColor {.noSideEffect,
    importcpp: "BoundsColor", header: "DrawTrSurf_Surface.hxx".}
proc clearIsos*(this: var DrawTrSurfSurface) {.importcpp: "ClearIsos",
    header: "DrawTrSurf_Surface.hxx".}
proc drawOn*(this: DrawTrSurfSurface; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Surface.hxx".}
proc drawOn*(this: DrawTrSurfSurface; dis: var DrawDisplay; iso: StandardBoolean) {.
    noSideEffect, importcpp: "DrawOn", header: "DrawTrSurf_Surface.hxx".}
proc getSurface*(this: DrawTrSurfSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "GetSurface", header: "DrawTrSurf_Surface.hxx".}
proc isosColor*(this: DrawTrSurfSurface): DrawColor {.noSideEffect,
    importcpp: "IsosColor", header: "DrawTrSurf_Surface.hxx".}
proc nbIsos*(this: DrawTrSurfSurface; nu: var StandardInteger; nb: var StandardInteger) {.
    noSideEffect, importcpp: "NbIsos", header: "DrawTrSurf_Surface.hxx".}
proc setBoundsColor*(this: var DrawTrSurfSurface; aColor: DrawColor) {.
    importcpp: "SetBoundsColor", header: "DrawTrSurf_Surface.hxx".}
proc setIsosColor*(this: var DrawTrSurfSurface; aColor: DrawColor) {.
    importcpp: "SetIsosColor", header: "DrawTrSurf_Surface.hxx".}
proc showIsos*(this: var DrawTrSurfSurface; nu: StandardInteger; nv: StandardInteger) {.
    importcpp: "ShowIsos", header: "DrawTrSurf_Surface.hxx".}
proc copy*(this: DrawTrSurfSurface): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Surface.hxx".}
proc dump*(this: DrawTrSurfSurface; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Surface.hxx".}
proc whatis*(this: DrawTrSurfSurface; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Surface.hxx".}
type
  DrawTrSurfSurfacebaseType* = DrawTrSurfDrawable

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Surface::get_type_name(@)",
                            header: "DrawTrSurf_Surface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Surface::get_type_descriptor(@)",
    header: "DrawTrSurf_Surface.hxx".}
proc dynamicType*(this: DrawTrSurfSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Surface.hxx".}

