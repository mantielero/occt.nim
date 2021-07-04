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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Boolean,
  ../Draw/Draw_Drawable3D, ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of Poly_Triangulation"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Triangulation"
discard "forward decl of DrawTrSurf_Triangulation"
type
  Handle_DrawTrSurf_Triangulation* = handle[DrawTrSurf_Triangulation]

## ! Used to display a triangulation.
## !
## ! Display internal edges in blue
## ! Display boundary edges in red
## ! Optional display of triangles and nodes indices.

type
  DrawTrSurf_Triangulation* {.importcpp: "DrawTrSurf_Triangulation",
                             header: "DrawTrSurf_Triangulation.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDrawTrSurf_Triangulation*(T: handle[Poly_Triangulation]): DrawTrSurf_Triangulation {.
    constructor, importcpp: "DrawTrSurf_Triangulation(@)",
    header: "DrawTrSurf_Triangulation.hxx".}
proc Triangulation*(this: DrawTrSurf_Triangulation): handle[Poly_Triangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: "DrawTrSurf_Triangulation.hxx".}
proc ShowNodes*(this: var DrawTrSurf_Triangulation; B: Standard_Boolean) {.
    importcpp: "ShowNodes", header: "DrawTrSurf_Triangulation.hxx".}
proc ShowNodes*(this: DrawTrSurf_Triangulation): Standard_Boolean {.noSideEffect,
    importcpp: "ShowNodes", header: "DrawTrSurf_Triangulation.hxx".}
proc ShowTriangles*(this: var DrawTrSurf_Triangulation; B: Standard_Boolean) {.
    importcpp: "ShowTriangles", header: "DrawTrSurf_Triangulation.hxx".}
proc ShowTriangles*(this: DrawTrSurf_Triangulation): Standard_Boolean {.
    noSideEffect, importcpp: "ShowTriangles",
    header: "DrawTrSurf_Triangulation.hxx".}
proc DrawOn*(this: DrawTrSurf_Triangulation; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Triangulation.hxx".}
proc Copy*(this: DrawTrSurf_Triangulation): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Triangulation.hxx".}
proc Dump*(this: DrawTrSurf_Triangulation; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Triangulation.hxx".}
proc Whatis*(this: DrawTrSurf_Triangulation; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Triangulation.hxx".}
type
  DrawTrSurf_Triangulationbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_Triangulation::get_type_name(@)",
                              header: "DrawTrSurf_Triangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_Triangulation::get_type_descriptor(@)",
    header: "DrawTrSurf_Triangulation.hxx".}
proc DynamicType*(this: DrawTrSurf_Triangulation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DrawTrSurf_Triangulation.hxx".}