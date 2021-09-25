##  Created on: 1997-07-22
##  Created by: Laurent PAINNOT
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Poly_Triangulation"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Triangulation2D"
discard "forward decl of DrawTrSurf_Triangulation2D"
type
  HandleDrawTrSurfTriangulation2D* = Handle[DrawTrSurfTriangulation2D]

## ! Used to display a 2d triangulation.
## !
## ! Display internal edges in blue
## ! Display boundary edges in red
## ! Optional display of triangles and nodes indices.

type
  DrawTrSurfTriangulation2D* {.importcpp: "DrawTrSurf_Triangulation2D",
                              header: "DrawTrSurf_Triangulation2D.hxx", bycopy.} = object of DrawDrawable2D


proc constructDrawTrSurfTriangulation2D*(t: Handle[PolyTriangulation]): DrawTrSurfTriangulation2D {.
    constructor, importcpp: "DrawTrSurf_Triangulation2D(@)",
    header: "DrawTrSurf_Triangulation2D.hxx".}
proc triangulation*(this: DrawTrSurfTriangulation2D): Handle[PolyTriangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: "DrawTrSurf_Triangulation2D.hxx".}
proc drawOn*(this: DrawTrSurfTriangulation2D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Triangulation2D.hxx".}
proc copy*(this: DrawTrSurfTriangulation2D): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Triangulation2D.hxx".}
proc dump*(this: DrawTrSurfTriangulation2D; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Triangulation2D.hxx".}
proc whatis*(this: DrawTrSurfTriangulation2D; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Triangulation2D.hxx".}
type
  DrawTrSurfTriangulation2DbaseType* = DrawDrawable2D

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Triangulation2D::get_type_name(@)",
                            header: "DrawTrSurf_Triangulation2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Triangulation2D::get_type_descriptor(@)",
    header: "DrawTrSurf_Triangulation2D.hxx".}
proc dynamicType*(this: DrawTrSurfTriangulation2D): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "DrawTrSurf_Triangulation2D.hxx".}
