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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Segment2D"
discard "forward decl of Draw_Segment2D"
type
  HandleC1C1* = Handle[DrawSegment2D]
  DrawSegment2D* {.importcpp: "Draw_Segment2D", header: "Draw_Segment2D.hxx", bycopy.} = object of DrawDrawable2D


proc constructDrawSegment2D*(p1: Pnt2d; p2: Pnt2d; col: DrawColor): DrawSegment2D {.
    constructor, importcpp: "Draw_Segment2D(@)", header: "Draw_Segment2D.hxx".}
proc drawOn*(this: DrawSegment2D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Segment2D.hxx".}
proc first*(this: DrawSegment2D): Pnt2d {.noSideEffect, importcpp: "First",
                                      header: "Draw_Segment2D.hxx".}
proc first*(this: var DrawSegment2D; p: Pnt2d) {.importcpp: "First",
    header: "Draw_Segment2D.hxx".}
proc last*(this: DrawSegment2D): Pnt2d {.noSideEffect, importcpp: "Last",
                                     header: "Draw_Segment2D.hxx".}
proc last*(this: var DrawSegment2D; p: Pnt2d) {.importcpp: "Last",
    header: "Draw_Segment2D.hxx".}
proc dump*(this: DrawSegment2D; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "Draw_Segment2D.hxx".}
proc whatis*(this: DrawSegment2D; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "Draw_Segment2D.hxx".}
type
  DrawSegment2DbaseType* = DrawDrawable2D

proc getTypeName*(): cstring {.importcpp: "Draw_Segment2D::get_type_name(@)",
                            header: "Draw_Segment2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Segment2D::get_type_descriptor(@)",
    header: "Draw_Segment2D.hxx".}
proc dynamicType*(this: DrawSegment2D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Segment2D.hxx".}

























