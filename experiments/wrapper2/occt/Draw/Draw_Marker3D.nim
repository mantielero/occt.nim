##  Created on: 1992-04-23
##  Created by: Modelistation
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt, Draw_Color,
  Draw_MarkerShape, ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, Draw_Drawable3D

discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Marker3D"
discard "forward decl of Draw_Marker3D"
type
  Handle_Draw_Marker3D* = handle[Draw_Marker3D]
  Draw_Marker3D* {.importcpp: "Draw_Marker3D", header: "Draw_Marker3D.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDraw_Marker3D*(P: gp_Pnt; T: Draw_MarkerShape; C: Draw_Color;
                            ISize: Standard_Integer = 5): Draw_Marker3D {.
    constructor, importcpp: "Draw_Marker3D(@)", header: "Draw_Marker3D.hxx".}
proc constructDraw_Marker3D*(P: gp_Pnt; T: Draw_MarkerShape; C: Draw_Color;
                            RSize: Standard_Real): Draw_Marker3D {.constructor,
    importcpp: "Draw_Marker3D(@)", header: "Draw_Marker3D.hxx".}
proc ChangePos*(this: var Draw_Marker3D): var gp_Pnt {.importcpp: "ChangePos",
    header: "Draw_Marker3D.hxx".}
proc DrawOn*(this: Draw_Marker3D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Marker3D.hxx".}
proc PickReject*(this: Draw_Marker3D; X: Standard_Real; Y: Standard_Real;
                Prec: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "PickReject", header: "Draw_Marker3D.hxx".}
type
  Draw_Marker3Dbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "Draw_Marker3D::get_type_name(@)",
                              header: "Draw_Marker3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Marker3D::get_type_descriptor(@)",
    header: "Draw_Marker3D.hxx".}
proc DynamicType*(this: Draw_Marker3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Marker3D.hxx".}