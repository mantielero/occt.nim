##  Created on: 1995-03-06
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

discard "forward decl of Poly_Triangulation"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Triangulation"
discard "forward decl of DrawTrSurf_Triangulation"
type
  HandleDrawTrSurfTriangulation* = Handle[DrawTrSurfTriangulation]

## ! Used to display a triangulation.
## !
## ! Display internal edges in blue
## ! Display boundary edges in red
## ! Optional display of triangles and nodes indices.

type
  DrawTrSurfTriangulation* {.importcpp: "DrawTrSurf_Triangulation",
                            header: "DrawTrSurf_Triangulation.hxx", bycopy.} = object of DrawDrawable3D


proc constructDrawTrSurfTriangulation*(t: Handle[PolyTriangulation]): DrawTrSurfTriangulation {.
    constructor, importcpp: "DrawTrSurf_Triangulation(@)",
    header: "DrawTrSurf_Triangulation.hxx".}
proc triangulation*(this: DrawTrSurfTriangulation): Handle[PolyTriangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: "DrawTrSurf_Triangulation.hxx".}
proc showNodes*(this: var DrawTrSurfTriangulation; b: bool) {.importcpp: "ShowNodes",
    header: "DrawTrSurf_Triangulation.hxx".}
proc showNodes*(this: DrawTrSurfTriangulation): bool {.noSideEffect,
    importcpp: "ShowNodes", header: "DrawTrSurf_Triangulation.hxx".}
proc showTriangles*(this: var DrawTrSurfTriangulation; b: bool) {.
    importcpp: "ShowTriangles", header: "DrawTrSurf_Triangulation.hxx".}
proc showTriangles*(this: DrawTrSurfTriangulation): bool {.noSideEffect,
    importcpp: "ShowTriangles", header: "DrawTrSurf_Triangulation.hxx".}
proc drawOn*(this: DrawTrSurfTriangulation; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Triangulation.hxx".}
proc copy*(this: DrawTrSurfTriangulation): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Triangulation.hxx".}
proc dump*(this: DrawTrSurfTriangulation; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Triangulation.hxx".}
proc whatis*(this: DrawTrSurfTriangulation; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Triangulation.hxx".}
type
  DrawTrSurfTriangulationbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Triangulation::get_type_name(@)",
                            header: "DrawTrSurf_Triangulation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Triangulation::get_type_descriptor(@)",
    header: "DrawTrSurf_Triangulation.hxx".}
proc dynamicType*(this: DrawTrSurfTriangulation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_Triangulation.hxx".}
