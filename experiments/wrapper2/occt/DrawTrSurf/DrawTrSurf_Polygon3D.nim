##  Created on: 1995-03-09
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Poly_Polygon3D"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Polygon3D"
discard "forward decl of DrawTrSurf_Polygon3D"
type
  HandleC1C1* = Handle[DrawTrSurfPolygon3D]

## ! Used to display a 3d polygon.
## !
## ! Optional display of nodes.

type
  DrawTrSurfPolygon3D* {.importcpp: "DrawTrSurf_Polygon3D",
                        header: "DrawTrSurf_Polygon3D.hxx", bycopy.} = object of DrawDrawable3D


proc constructDrawTrSurfPolygon3D*(p: Handle[PolyPolygon3D]): DrawTrSurfPolygon3D {.
    constructor, importcpp: "DrawTrSurf_Polygon3D(@)",
    header: "DrawTrSurf_Polygon3D.hxx".}
proc polygon3D*(this: DrawTrSurfPolygon3D): Handle[PolyPolygon3D] {.noSideEffect,
    importcpp: "Polygon3D", header: "DrawTrSurf_Polygon3D.hxx".}
proc showNodes*(this: var DrawTrSurfPolygon3D; b: bool) {.importcpp: "ShowNodes",
    header: "DrawTrSurf_Polygon3D.hxx".}
proc showNodes*(this: DrawTrSurfPolygon3D): bool {.noSideEffect,
    importcpp: "ShowNodes", header: "DrawTrSurf_Polygon3D.hxx".}
proc drawOn*(this: DrawTrSurfPolygon3D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Polygon3D.hxx".}
proc copy*(this: DrawTrSurfPolygon3D): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Polygon3D.hxx".}
proc dump*(this: DrawTrSurfPolygon3D; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Polygon3D.hxx".}
proc whatis*(this: DrawTrSurfPolygon3D; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Polygon3D.hxx".}
type
  DrawTrSurfPolygon3DbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Polygon3D::get_type_name(@)",
                            header: "DrawTrSurf_Polygon3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Polygon3D::get_type_descriptor(@)",
    header: "DrawTrSurf_Polygon3D.hxx".}
proc dynamicType*(this: DrawTrSurfPolygon3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Polygon3D.hxx".}

























