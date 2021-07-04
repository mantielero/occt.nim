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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../Draw/Draw_Drawable2D,
  ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of Poly_Triangulation"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Triangulation2D"
discard "forward decl of DrawTrSurf_Triangulation2D"
type
  Handle_DrawTrSurf_Triangulation2D* = handle[DrawTrSurf_Triangulation2D]

## ! Used to display a 2d triangulation.
## !
## ! Display internal edges in blue
## ! Display boundary edges in red
## ! Optional display of triangles and nodes indices.

type
  DrawTrSurf_Triangulation2D* {.importcpp: "DrawTrSurf_Triangulation2D",
                               header: "DrawTrSurf_Triangulation2D.hxx", bycopy.} = object of Draw_Drawable2D


proc constructDrawTrSurf_Triangulation2D*(T: handle[Poly_Triangulation]): DrawTrSurf_Triangulation2D {.
    constructor, importcpp: "DrawTrSurf_Triangulation2D(@)",
    header: "DrawTrSurf_Triangulation2D.hxx".}
proc Triangulation*(this: DrawTrSurf_Triangulation2D): handle[Poly_Triangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: "DrawTrSurf_Triangulation2D.hxx".}
proc DrawOn*(this: DrawTrSurf_Triangulation2D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Triangulation2D.hxx".}
proc Copy*(this: DrawTrSurf_Triangulation2D): handle[Draw_Drawable3D] {.
    noSideEffect, importcpp: "Copy", header: "DrawTrSurf_Triangulation2D.hxx".}
proc Dump*(this: DrawTrSurf_Triangulation2D; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Triangulation2D.hxx".}
proc Whatis*(this: DrawTrSurf_Triangulation2D; I: var Draw_Interpretor) {.
    noSideEffect, importcpp: "Whatis", header: "DrawTrSurf_Triangulation2D.hxx".}
type
  DrawTrSurf_Triangulation2Dbase_type* = Draw_Drawable2D

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_Triangulation2D::get_type_name(@)",
                              header: "DrawTrSurf_Triangulation2D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_Triangulation2D::get_type_descriptor(@)",
    header: "DrawTrSurf_Triangulation2D.hxx".}
proc DynamicType*(this: DrawTrSurf_Triangulation2D): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "DrawTrSurf_Triangulation2D.hxx".}