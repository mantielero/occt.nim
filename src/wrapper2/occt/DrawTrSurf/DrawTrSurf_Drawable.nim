##  Created on: 1991-07-16
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Draw_Display"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_IsoCurve"
discard "forward decl of DrawTrSurf_Drawable"
discard "forward decl of DrawTrSurf_Drawable"
type
  HandleDrawTrSurfDrawable* = Handle[DrawTrSurfDrawable]

## ! this  class adds   to   the Drawable3D methods  to
## ! display Curves and Curves on Surface.
## !
## ! The discretisation,  number  of points on a Curve,
## ! is stored in this class.

type
  DrawTrSurfDrawable* {.importcpp: "DrawTrSurf_Drawable",
                       header: "DrawTrSurf_Drawable.hxx", bycopy.} = object of DrawDrawable3D ##
                                                                                       ## !
                                                                                       ## Draw
                                                                                       ## a
                                                                                       ## polygon
                                                                                       ## of
                                                                                       ## the
                                                                                       ## curve
                                                                                       ## on
                                                                                       ## the
                                                                                       ## Display
                                                                                       ##
                                                                                       ## !
                                                                                       ## set
                                                                                       ## the
                                                                                       ## number
                                                                                       ## of
                                                                                       ## points
                                                                                       ## on
                                                                                       ## a
                                                                                       ## curve
                                                                                       ## at
                                                                                       ## creation.


proc drawCurve2dOn*(this: DrawTrSurfDrawable; c: var Adaptor2dCurve2d;
                   d: var DrawDisplay) {.noSideEffect, importcpp: "DrawCurve2dOn",
                                      header: "DrawTrSurf_Drawable.hxx".}
proc drawCurveOn*(this: DrawTrSurfDrawable; c: var Adaptor3dCurve; d: var DrawDisplay) {.
    noSideEffect, importcpp: "DrawCurveOn", header: "DrawTrSurf_Drawable.hxx".}
proc drawIsoCurveOn*(this: DrawTrSurfDrawable; c: var Adaptor3dIsoCurve;
                    t: GeomAbsIsoType; p: StandardReal; f: StandardReal;
                    L: StandardReal; d: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawIsoCurveOn", header: "DrawTrSurf_Drawable.hxx".}
proc drawOn*(this: DrawTrSurfDrawable; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Drawable.hxx".}
proc setDiscretisation*(this: var DrawTrSurfDrawable; discret: StandardInteger) {.
    importcpp: "SetDiscretisation", header: "DrawTrSurf_Drawable.hxx".}
proc getDiscretisation*(this: DrawTrSurfDrawable): StandardInteger {.noSideEffect,
    importcpp: "GetDiscretisation", header: "DrawTrSurf_Drawable.hxx".}
proc setDeflection*(this: var DrawTrSurfDrawable; deflection: StandardReal) {.
    importcpp: "SetDeflection", header: "DrawTrSurf_Drawable.hxx".}
proc getDeflection*(this: DrawTrSurfDrawable): StandardReal {.noSideEffect,
    importcpp: "GetDeflection", header: "DrawTrSurf_Drawable.hxx".}
proc setDrawMode*(this: var DrawTrSurfDrawable; drawMode: StandardInteger) {.
    importcpp: "SetDrawMode", header: "DrawTrSurf_Drawable.hxx".}
proc getDrawMode*(this: DrawTrSurfDrawable): StandardInteger {.noSideEffect,
    importcpp: "GetDrawMode", header: "DrawTrSurf_Drawable.hxx".}
type
  DrawTrSurfDrawablebaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Drawable::get_type_name(@)",
                            header: "DrawTrSurf_Drawable.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Drawable::get_type_descriptor(@)",
    header: "DrawTrSurf_Drawable.hxx".}
proc dynamicType*(this: DrawTrSurfDrawable): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Drawable.hxx".}

