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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Draw/Draw_Drawable3D, ../GeomAbs/GeomAbs_IsoType

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Draw_Display"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_IsoCurve"
discard "forward decl of DrawTrSurf_Drawable"
discard "forward decl of DrawTrSurf_Drawable"
type
  Handle_DrawTrSurf_Drawable* = handle[DrawTrSurf_Drawable]

## ! this  class adds   to   the Drawable3D methods  to
## ! display Curves and Curves on Surface.
## !
## ! The discretisation,  number  of points on a Curve,
## ! is stored in this class.

type
  DrawTrSurf_Drawable* {.importcpp: "DrawTrSurf_Drawable",
                        header: "DrawTrSurf_Drawable.hxx", bycopy.} = object of Draw_Drawable3D ##
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


proc DrawCurve2dOn*(this: DrawTrSurf_Drawable; C: var Adaptor2d_Curve2d;
                   D: var Draw_Display) {.noSideEffect, importcpp: "DrawCurve2dOn",
                                       header: "DrawTrSurf_Drawable.hxx".}
proc DrawCurveOn*(this: DrawTrSurf_Drawable; C: var Adaptor3d_Curve;
                 D: var Draw_Display) {.noSideEffect, importcpp: "DrawCurveOn",
                                     header: "DrawTrSurf_Drawable.hxx".}
proc DrawIsoCurveOn*(this: DrawTrSurf_Drawable; C: var Adaptor3d_IsoCurve;
                    T: GeomAbs_IsoType; P: Standard_Real; F: Standard_Real;
                    L: Standard_Real; D: var Draw_Display) {.noSideEffect,
    importcpp: "DrawIsoCurveOn", header: "DrawTrSurf_Drawable.hxx".}
proc DrawOn*(this: DrawTrSurf_Drawable; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Drawable.hxx".}
proc SetDiscretisation*(this: var DrawTrSurf_Drawable; Discret: Standard_Integer) {.
    importcpp: "SetDiscretisation", header: "DrawTrSurf_Drawable.hxx".}
proc GetDiscretisation*(this: DrawTrSurf_Drawable): Standard_Integer {.noSideEffect,
    importcpp: "GetDiscretisation", header: "DrawTrSurf_Drawable.hxx".}
proc SetDeflection*(this: var DrawTrSurf_Drawable; Deflection: Standard_Real) {.
    importcpp: "SetDeflection", header: "DrawTrSurf_Drawable.hxx".}
proc GetDeflection*(this: DrawTrSurf_Drawable): Standard_Real {.noSideEffect,
    importcpp: "GetDeflection", header: "DrawTrSurf_Drawable.hxx".}
proc SetDrawMode*(this: var DrawTrSurf_Drawable; DrawMode: Standard_Integer) {.
    importcpp: "SetDrawMode", header: "DrawTrSurf_Drawable.hxx".}
proc GetDrawMode*(this: DrawTrSurf_Drawable): Standard_Integer {.noSideEffect,
    importcpp: "GetDrawMode", header: "DrawTrSurf_Drawable.hxx".}
type
  DrawTrSurf_Drawablebase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_Drawable::get_type_name(@)",
                              header: "DrawTrSurf_Drawable.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_Drawable::get_type_descriptor(@)",
    header: "DrawTrSurf_Drawable.hxx".}
proc DynamicType*(this: DrawTrSurf_Drawable): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Drawable.hxx".}