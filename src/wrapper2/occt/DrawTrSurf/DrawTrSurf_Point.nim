##  Created on: 1994-03-28
##  Created by: Remi LEQUETTE
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Point"
discard "forward decl of DrawTrSurf_Point"
type
  HandleDrawTrSurfPoint* = Handle[DrawTrSurfPoint]

## ! A drawable point.

type
  DrawTrSurfPoint* {.importcpp: "DrawTrSurf_Point", header: "DrawTrSurf_Point.hxx",
                    bycopy.} = object of DrawDrawable3D


proc constructDrawTrSurfPoint*(p: GpPnt; shape: DrawMarkerShape; col: DrawColor): DrawTrSurfPoint {.
    constructor, importcpp: "DrawTrSurf_Point(@)", header: "DrawTrSurf_Point.hxx".}
proc constructDrawTrSurfPoint*(p: GpPnt2d; shape: DrawMarkerShape; col: DrawColor): DrawTrSurfPoint {.
    constructor, importcpp: "DrawTrSurf_Point(@)", header: "DrawTrSurf_Point.hxx".}
proc drawOn*(this: DrawTrSurfPoint; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Point.hxx".}
proc is3D*(this: DrawTrSurfPoint): StandardBoolean {.noSideEffect, importcpp: "Is3D",
    header: "DrawTrSurf_Point.hxx".}
proc point*(this: DrawTrSurfPoint): GpPnt {.noSideEffect, importcpp: "Point",
                                        header: "DrawTrSurf_Point.hxx".}
proc point*(this: var DrawTrSurfPoint; p: GpPnt) {.importcpp: "Point",
    header: "DrawTrSurf_Point.hxx".}
proc point2d*(this: DrawTrSurfPoint): GpPnt2d {.noSideEffect, importcpp: "Point2d",
    header: "DrawTrSurf_Point.hxx".}
proc point2d*(this: var DrawTrSurfPoint; p: GpPnt2d) {.importcpp: "Point2d",
    header: "DrawTrSurf_Point.hxx".}
proc color*(this: var DrawTrSurfPoint; aColor: DrawColor) {.importcpp: "Color",
    header: "DrawTrSurf_Point.hxx".}
proc color*(this: DrawTrSurfPoint): DrawColor {.noSideEffect, importcpp: "Color",
    header: "DrawTrSurf_Point.hxx".}
proc shape*(this: var DrawTrSurfPoint; s: DrawMarkerShape) {.importcpp: "Shape",
    header: "DrawTrSurf_Point.hxx".}
proc shape*(this: DrawTrSurfPoint): DrawMarkerShape {.noSideEffect,
    importcpp: "Shape", header: "DrawTrSurf_Point.hxx".}
proc copy*(this: DrawTrSurfPoint): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Point.hxx".}
proc dump*(this: DrawTrSurfPoint; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Point.hxx".}
proc whatis*(this: DrawTrSurfPoint; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Point.hxx".}
type
  DrawTrSurfPointbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Point::get_type_name(@)",
                            header: "DrawTrSurf_Point.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Point::get_type_descriptor(@)",
    header: "DrawTrSurf_Point.hxx".}
proc dynamicType*(this: DrawTrSurfPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Point.hxx".}

