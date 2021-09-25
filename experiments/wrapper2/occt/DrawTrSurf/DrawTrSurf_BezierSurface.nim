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

discard "forward decl of Geom_BezierSurface"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_BezierSurface"
discard "forward decl of DrawTrSurf_BezierSurface"
type
  HandleDrawTrSurfBezierSurface* = Handle[DrawTrSurfBezierSurface]
  DrawTrSurfBezierSurface* {.importcpp: "DrawTrSurf_BezierSurface",
                            header: "DrawTrSurf_BezierSurface.hxx", bycopy.} = object of DrawTrSurfSurface ##
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


proc constructDrawTrSurfBezierSurface*(s: Handle[GeomBezierSurface]): DrawTrSurfBezierSurface {.
    constructor, importcpp: "DrawTrSurf_BezierSurface(@)",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc constructDrawTrSurfBezierSurface*(s: Handle[GeomBezierSurface]; nbUIsos: int;
                                      nbVIsos: int; boundsColor: DrawColor;
                                      isosColor: DrawColor; polesColor: DrawColor;
                                      showPoles: bool; discret: int;
                                      deflection: float; drawMode: int): DrawTrSurfBezierSurface {.
    constructor, importcpp: "DrawTrSurf_BezierSurface(@)",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc drawOn*(this: DrawTrSurfBezierSurface; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_BezierSurface.hxx".}
proc showPoles*(this: var DrawTrSurfBezierSurface) {.importcpp: "ShowPoles",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc clearPoles*(this: var DrawTrSurfBezierSurface) {.importcpp: "ClearPoles",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc findPole*(this: DrawTrSurfBezierSurface; x: float; y: float; d: DrawDisplay;
              prec: float; uIndex: var int; vIndex: var int) {.noSideEffect,
    importcpp: "FindPole", header: "DrawTrSurf_BezierSurface.hxx".}
proc setPolesColor*(this: var DrawTrSurfBezierSurface; aColor: DrawColor) {.
    importcpp: "SetPolesColor", header: "DrawTrSurf_BezierSurface.hxx".}
proc polesColor*(this: DrawTrSurfBezierSurface): DrawColor {.noSideEffect,
    importcpp: "PolesColor", header: "DrawTrSurf_BezierSurface.hxx".}
proc copy*(this: DrawTrSurfBezierSurface): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_BezierSurface.hxx".}
type
  DrawTrSurfBezierSurfacebaseType* = DrawTrSurfSurface

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_BezierSurface::get_type_name(@)",
                            header: "DrawTrSurf_BezierSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_BezierSurface::get_type_descriptor(@)",
    header: "DrawTrSurf_BezierSurface.hxx".}
proc dynamicType*(this: DrawTrSurfBezierSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_BezierSurface.hxx".}
