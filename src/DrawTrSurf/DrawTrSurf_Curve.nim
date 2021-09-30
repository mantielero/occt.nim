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

discard "forward decl of Geom_Curve"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Curve"
discard "forward decl of DrawTrSurf_Curve"
type
  HandleC1C1* = Handle[DrawTrSurfCurve]

## ! This class defines a drawable curve in 3d space.

type
  DrawTrSurfCurve* {.importcpp: "DrawTrSurf_Curve", header: "DrawTrSurf_Curve.hxx",
                    bycopy.} = object of DrawTrSurfDrawable ## ! creates a drawable curve from a curve of package Geom.


proc constructDrawTrSurfCurve*(c: Handle[GeomCurve]; dispOrigin: bool = true): DrawTrSurfCurve {.
    constructor, importcpp: "DrawTrSurf_Curve(@)", header: "DrawTrSurf_Curve.hxx".}
proc constructDrawTrSurfCurve*(c: Handle[GeomCurve]; aColor: DrawColor;
                              discret: cint; deflection: cfloat; drawMode: cint;
                              dispOrigin: bool = true; dispCurvRadius: bool = false;
                              radiusMax: cfloat = 1.0e3; ratioOfRadius: cfloat = 0.1): DrawTrSurfCurve {.
    constructor, importcpp: "DrawTrSurf_Curve(@)", header: "DrawTrSurf_Curve.hxx".}
proc drawOn*(this: DrawTrSurfCurve; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Curve.hxx".}
proc getCurve*(this: DrawTrSurfCurve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "DrawTrSurf_Curve.hxx".}
proc setColor*(this: var DrawTrSurfCurve; aColor: DrawColor) {.importcpp: "SetColor",
    header: "DrawTrSurf_Curve.hxx".}
proc displayOrigin*(this: DrawTrSurfCurve): bool {.noSideEffect,
    importcpp: "DisplayOrigin", header: "DrawTrSurf_Curve.hxx".}
proc displayOrigin*(this: var DrawTrSurfCurve; v: bool) {.importcpp: "DisplayOrigin",
    header: "DrawTrSurf_Curve.hxx".}
proc showCurvature*(this: var DrawTrSurfCurve) {.importcpp: "ShowCurvature",
    header: "DrawTrSurf_Curve.hxx".}
proc clearCurvature*(this: var DrawTrSurfCurve) {.importcpp: "ClearCurvature",
    header: "DrawTrSurf_Curve.hxx".}
proc setRadiusMax*(this: var DrawTrSurfCurve; radius: cfloat) {.
    importcpp: "SetRadiusMax", header: "DrawTrSurf_Curve.hxx".}
proc setRadiusRatio*(this: var DrawTrSurfCurve; ratio: cfloat) {.
    importcpp: "SetRadiusRatio", header: "DrawTrSurf_Curve.hxx".}
proc color*(this: DrawTrSurfCurve): DrawColor {.noSideEffect, importcpp: "Color",
    header: "DrawTrSurf_Curve.hxx".}
proc radiusMax*(this: DrawTrSurfCurve): cfloat {.noSideEffect,
    importcpp: "RadiusMax", header: "DrawTrSurf_Curve.hxx".}
proc radiusRatio*(this: DrawTrSurfCurve): cfloat {.noSideEffect,
    importcpp: "RadiusRatio", header: "DrawTrSurf_Curve.hxx".}
proc copy*(this: DrawTrSurfCurve): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Curve.hxx".}
proc dump*(this: DrawTrSurfCurve; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Curve.hxx".}
proc whatis*(this: DrawTrSurfCurve; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Curve.hxx".}
type
  DrawTrSurfCurvebaseType* = DrawTrSurfDrawable

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Curve::get_type_name(@)",
                            header: "DrawTrSurf_Curve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Curve::get_type_descriptor(@)",
    header: "DrawTrSurf_Curve.hxx".}
proc dynamicType*(this: DrawTrSurfCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Curve.hxx".}

























