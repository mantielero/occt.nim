##  Created on: 2000-05-25
##  Created by: Peter KURNEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Draw/Draw_Color,
  ../DBRep/DBRep_DrawableShape, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_CString

discard "forward decl of Draw_Text3D"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Display"
discard "forward decl of BOPTest_DrawableShape"
discard "forward decl of BOPTest_DrawableShape"
type
  Handle_BOPTest_DrawableShape* = handle[BOPTest_DrawableShape]
  BOPTest_DrawableShape* {.importcpp: "BOPTest_DrawableShape",
                          header: "BOPTest_DrawableShape.hxx", bycopy.} = object of DBRep_DrawableShape


proc constructBOPTest_DrawableShape*(S: TopoDS_Shape; FreeCol: Draw_Color;
                                    ConnCol: Draw_Color; EdgeCol: Draw_Color;
                                    IsosCol: Draw_Color; size: Standard_Real;
                                    nbisos: Standard_Integer;
                                    discret: Standard_Integer;
                                    Text: Standard_CString; TextColor: Draw_Color): BOPTest_DrawableShape {.
    constructor, importcpp: "BOPTest_DrawableShape(@)",
    header: "BOPTest_DrawableShape.hxx".}
proc constructBOPTest_DrawableShape*(S: TopoDS_Shape; Text: Standard_CString;
                                    TextColor: Draw_Color): BOPTest_DrawableShape {.
    constructor, importcpp: "BOPTest_DrawableShape(@)",
    header: "BOPTest_DrawableShape.hxx".}
proc DrawOn*(this: BOPTest_DrawableShape; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "BOPTest_DrawableShape.hxx".}
type
  BOPTest_DrawableShapebase_type* = DBRep_DrawableShape

proc get_type_name*(): cstring {.importcpp: "BOPTest_DrawableShape::get_type_name(@)",
                              header: "BOPTest_DrawableShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BOPTest_DrawableShape::get_type_descriptor(@)",
    header: "BOPTest_DrawableShape.hxx".}
proc DynamicType*(this: BOPTest_DrawableShape): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BOPTest_DrawableShape.hxx".}