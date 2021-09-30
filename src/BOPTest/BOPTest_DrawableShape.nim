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

discard "forward decl of Draw_Text3D"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Display"
discard "forward decl of BOPTest_DrawableShape"
discard "forward decl of BOPTest_DrawableShape"
type
  HandleC1C1* = Handle[BOPTestDrawableShape]
  BOPTestDrawableShape* {.importcpp: "BOPTest_DrawableShape",
                         header: "BOPTest_DrawableShape.hxx", bycopy.} = object of DBRepDrawableShape


proc constructBOPTestDrawableShape*(s: TopoDS_Shape; freeCol: DrawColor;
                                   connCol: DrawColor; edgeCol: DrawColor;
                                   isosCol: DrawColor; size: cfloat; nbisos: cint;
                                   discret: cint; text: StandardCString;
                                   textColor: DrawColor): BOPTestDrawableShape {.
    constructor, importcpp: "BOPTest_DrawableShape(@)",
    header: "BOPTest_DrawableShape.hxx".}
proc constructBOPTestDrawableShape*(s: TopoDS_Shape; text: StandardCString;
                                   textColor: DrawColor): BOPTestDrawableShape {.
    constructor, importcpp: "BOPTest_DrawableShape(@)",
    header: "BOPTest_DrawableShape.hxx".}
proc drawOn*(this: BOPTestDrawableShape; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "BOPTest_DrawableShape.hxx".}
type
  BOPTestDrawableShapebaseType* = DBRepDrawableShape

proc getTypeName*(): cstring {.importcpp: "BOPTest_DrawableShape::get_type_name(@)",
                            header: "BOPTest_DrawableShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BOPTest_DrawableShape::get_type_descriptor(@)",
    header: "BOPTest_DrawableShape.hxx".}
proc dynamicType*(this: BOPTestDrawableShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BOPTest_DrawableShape.hxx".}

























