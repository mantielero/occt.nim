##  Created on: 1991-04-25
##  Created by: Arnaud BOUZY
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Segment3D"
discard "forward decl of Draw_Segment3D"
type
  HandleDrawSegment3D* = Handle[DrawSegment3D]
  DrawSegment3D* {.importcpp: "Draw_Segment3D", header: "Draw_Segment3D.hxx", bycopy.} = object of DrawDrawable3D


proc constructDrawSegment3D*(p1: Pnt; p2: Pnt; col: DrawColor): DrawSegment3D {.
    constructor, importcpp: "Draw_Segment3D(@)", header: "Draw_Segment3D.hxx".}
proc drawOn*(this: DrawSegment3D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Segment3D.hxx".}
proc first*(this: DrawSegment3D): Pnt {.noSideEffect, importcpp: "First",
                                    header: "Draw_Segment3D.hxx".}
proc first*(this: var DrawSegment3D; p: Pnt) {.importcpp: "First",
    header: "Draw_Segment3D.hxx".}
proc last*(this: DrawSegment3D): Pnt {.noSideEffect, importcpp: "Last",
                                   header: "Draw_Segment3D.hxx".}
proc last*(this: var DrawSegment3D; p: Pnt) {.importcpp: "Last",
                                        header: "Draw_Segment3D.hxx".}
type
  DrawSegment3DbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Segment3D::get_type_name(@)",
                            header: "Draw_Segment3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Segment3D::get_type_descriptor(@)",
    header: "Draw_Segment3D.hxx".}
proc dynamicType*(this: DrawSegment3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Segment3D.hxx".}
