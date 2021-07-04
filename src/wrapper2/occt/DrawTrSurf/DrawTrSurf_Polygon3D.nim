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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Draw/Draw_Drawable3D, ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of Poly_Polygon3D"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Polygon3D"
discard "forward decl of DrawTrSurf_Polygon3D"
type
  Handle_DrawTrSurf_Polygon3D* = handle[DrawTrSurf_Polygon3D]

## ! Used to display a 3d polygon.
## !
## ! Optional display of nodes.

type
  DrawTrSurf_Polygon3D* {.importcpp: "DrawTrSurf_Polygon3D",
                         header: "DrawTrSurf_Polygon3D.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDrawTrSurf_Polygon3D*(P: handle[Poly_Polygon3D]): DrawTrSurf_Polygon3D {.
    constructor, importcpp: "DrawTrSurf_Polygon3D(@)",
    header: "DrawTrSurf_Polygon3D.hxx".}
proc Polygon3D*(this: DrawTrSurf_Polygon3D): handle[Poly_Polygon3D] {.noSideEffect,
    importcpp: "Polygon3D", header: "DrawTrSurf_Polygon3D.hxx".}
proc ShowNodes*(this: var DrawTrSurf_Polygon3D; B: Standard_Boolean) {.
    importcpp: "ShowNodes", header: "DrawTrSurf_Polygon3D.hxx".}
proc ShowNodes*(this: DrawTrSurf_Polygon3D): Standard_Boolean {.noSideEffect,
    importcpp: "ShowNodes", header: "DrawTrSurf_Polygon3D.hxx".}
proc DrawOn*(this: DrawTrSurf_Polygon3D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Polygon3D.hxx".}
proc Copy*(this: DrawTrSurf_Polygon3D): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Polygon3D.hxx".}
proc Dump*(this: DrawTrSurf_Polygon3D; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Polygon3D.hxx".}
proc Whatis*(this: DrawTrSurf_Polygon3D; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Polygon3D.hxx".}
type
  DrawTrSurf_Polygon3Dbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_Polygon3D::get_type_name(@)",
                              header: "DrawTrSurf_Polygon3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_Polygon3D::get_type_descriptor(@)",
    header: "DrawTrSurf_Polygon3D.hxx".}
proc DynamicType*(this: DrawTrSurf_Polygon3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Polygon3D.hxx".}