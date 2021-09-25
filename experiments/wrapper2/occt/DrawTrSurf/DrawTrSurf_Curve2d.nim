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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Curve2d"
discard "forward decl of DrawTrSurf_Curve2d"
type
  HandleDrawTrSurfCurve2d* = Handle[DrawTrSurfCurve2d]

## ! This class defines a drawable curve in 2d space.
## ! The curve is drawned in the plane XOY.

type
  DrawTrSurfCurve2d* {.importcpp: "DrawTrSurf_Curve2d",
                      header: "DrawTrSurf_Curve2d.hxx", bycopy.} = object of DrawTrSurfDrawable ##
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


proc constructDrawTrSurfCurve2d*(c: Handle[Geom2dCurve]; dispOrigin: bool = true): DrawTrSurfCurve2d {.
    constructor, importcpp: "DrawTrSurf_Curve2d(@)",
    header: "DrawTrSurf_Curve2d.hxx".}
proc constructDrawTrSurfCurve2d*(c: Handle[Geom2dCurve]; aColor: DrawColor;
                                discret: int; dispOrigin: bool = true;
                                dispCurvRadius: bool = false;
                                radiusMax: float = 1.0e3; ratioOfRadius: float = 0.1): DrawTrSurfCurve2d {.
    constructor, importcpp: "DrawTrSurf_Curve2d(@)",
    header: "DrawTrSurf_Curve2d.hxx".}
proc drawOn*(this: DrawTrSurfCurve2d; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Curve2d.hxx".}
proc getCurve*(this: DrawTrSurfCurve2d): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "DrawTrSurf_Curve2d.hxx".}
proc setColor*(this: var DrawTrSurfCurve2d; aColor: DrawColor) {.
    importcpp: "SetColor", header: "DrawTrSurf_Curve2d.hxx".}
proc showCurvature*(this: var DrawTrSurfCurve2d) {.importcpp: "ShowCurvature",
    header: "DrawTrSurf_Curve2d.hxx".}
proc clearCurvature*(this: var DrawTrSurfCurve2d) {.importcpp: "ClearCurvature",
    header: "DrawTrSurf_Curve2d.hxx".}
proc setRadiusMax*(this: var DrawTrSurfCurve2d; radius: float) {.
    importcpp: "SetRadiusMax", header: "DrawTrSurf_Curve2d.hxx".}
proc setRadiusRatio*(this: var DrawTrSurfCurve2d; ratio: float) {.
    importcpp: "SetRadiusRatio", header: "DrawTrSurf_Curve2d.hxx".}
proc color*(this: DrawTrSurfCurve2d): DrawColor {.noSideEffect, importcpp: "Color",
    header: "DrawTrSurf_Curve2d.hxx".}
proc radiusMax*(this: DrawTrSurfCurve2d): float {.noSideEffect,
    importcpp: "RadiusMax", header: "DrawTrSurf_Curve2d.hxx".}
proc radiusRatio*(this: DrawTrSurfCurve2d): float {.noSideEffect,
    importcpp: "RadiusRatio", header: "DrawTrSurf_Curve2d.hxx".}
proc copy*(this: DrawTrSurfCurve2d): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Curve2d.hxx".}
proc dump*(this: DrawTrSurfCurve2d; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Curve2d.hxx".}
proc is3D*(this: DrawTrSurfCurve2d): bool {.noSideEffect, importcpp: "Is3D",
                                        header: "DrawTrSurf_Curve2d.hxx".}
proc whatis*(this: DrawTrSurfCurve2d; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Curve2d.hxx".}
type
  DrawTrSurfCurve2dbaseType* = DrawTrSurfDrawable

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Curve2d::get_type_name(@)",
                            header: "DrawTrSurf_Curve2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Curve2d::get_type_descriptor(@)",
    header: "DrawTrSurf_Curve2d.hxx".}
proc dynamicType*(this: DrawTrSurfCurve2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Curve2d.hxx".}
