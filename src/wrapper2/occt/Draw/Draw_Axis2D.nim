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

discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Axis2D"
discard "forward decl of Draw_Axis2D"
type
  HandleDrawAxis2D* = Handle[DrawAxis2D]
  DrawAxis2D* {.importcpp: "Draw_Axis2D", header: "Draw_Axis2D.hxx", bycopy.} = object of DrawDrawable2D


proc constructDrawAxis2D*(col: DrawColor; size: StandardInteger = 5): DrawAxis2D {.
    constructor, importcpp: "Draw_Axis2D(@)", header: "Draw_Axis2D.hxx".}
proc constructDrawAxis2D*(p: GpPnt2d; col: DrawColor; size: StandardInteger = 5): DrawAxis2D {.
    constructor, importcpp: "Draw_Axis2D(@)", header: "Draw_Axis2D.hxx".}
proc constructDrawAxis2D*(a: GpAx22d; col: DrawColor; size: StandardInteger = 5): DrawAxis2D {.
    constructor, importcpp: "Draw_Axis2D(@)", header: "Draw_Axis2D.hxx".}
proc drawOn*(this: DrawAxis2D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Axis2D.hxx".}
type
  DrawAxis2DbaseType* = DrawDrawable2D

proc getTypeName*(): cstring {.importcpp: "Draw_Axis2D::get_type_name(@)",
                            header: "Draw_Axis2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Axis2D::get_type_descriptor(@)", header: "Draw_Axis2D.hxx".}
proc dynamicType*(this: DrawAxis2D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Axis2D.hxx".}

