##  Created on: 1994-04-18
##  Created by: Modelistation
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt2d, Draw_Color,
  Draw_MarkerShape, ../Standard/Standard_Integer, Draw_Drawable2D,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt2d"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Marker2D"
discard "forward decl of Draw_Marker2D"
type
  Handle_Draw_Marker2D* = handle[Draw_Marker2D]
  Draw_Marker2D* {.importcpp: "Draw_Marker2D", header: "Draw_Marker2D.hxx", bycopy.} = object of Draw_Drawable2D


proc constructDraw_Marker2D*(P: gp_Pnt2d; T: Draw_MarkerShape; C: Draw_Color;
                            Size: Standard_Integer = 5): Draw_Marker2D {.constructor,
    importcpp: "Draw_Marker2D(@)", header: "Draw_Marker2D.hxx".}
proc constructDraw_Marker2D*(P: gp_Pnt2d; T: Draw_MarkerShape; C: Draw_Color;
                            RSize: Standard_Real): Draw_Marker2D {.constructor,
    importcpp: "Draw_Marker2D(@)", header: "Draw_Marker2D.hxx".}
proc ChangePos*(this: var Draw_Marker2D): var gp_Pnt2d {.importcpp: "ChangePos",
    header: "Draw_Marker2D.hxx".}
proc DrawOn*(this: Draw_Marker2D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Marker2D.hxx".}
proc PickReject*(this: Draw_Marker2D; X: Standard_Real; Y: Standard_Real;
                Prec: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "PickReject", header: "Draw_Marker2D.hxx".}
type
  Draw_Marker2Dbase_type* = Draw_Drawable2D

proc get_type_name*(): cstring {.importcpp: "Draw_Marker2D::get_type_name(@)",
                              header: "Draw_Marker2D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Marker2D::get_type_descriptor(@)",
    header: "Draw_Marker2D.hxx".}
proc DynamicType*(this: Draw_Marker2D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Marker2D.hxx".}