##  Created on: 1993-12-02
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Blend/Blend_SequenceOfPoint,
  ../IntSurf/IntSurf_TypeTrans, BRepBlend_Extremity, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Blend_Point"
discard "forward decl of BRepBlend_Extremity"
discard "forward decl of BRepBlend_Line"
discard "forward decl of BRepBlend_Line"
type
  Handle_BRepBlend_Line* = handle[BRepBlend_Line]
  BRepBlend_Line* {.importcpp: "BRepBlend_Line", header: "BRepBlend_Line.hxx", bycopy.} = object of Standard_Transient


proc constructBRepBlend_Line*(): BRepBlend_Line {.constructor,
    importcpp: "BRepBlend_Line(@)", header: "BRepBlend_Line.hxx".}
proc Clear*(this: var BRepBlend_Line) {.importcpp: "Clear",
                                    header: "BRepBlend_Line.hxx".}
proc Append*(this: var BRepBlend_Line; P: Blend_Point) {.importcpp: "Append",
    header: "BRepBlend_Line.hxx".}
proc Prepend*(this: var BRepBlend_Line; P: Blend_Point) {.importcpp: "Prepend",
    header: "BRepBlend_Line.hxx".}
proc InsertBefore*(this: var BRepBlend_Line; Index: Standard_Integer; P: Blend_Point) {.
    importcpp: "InsertBefore", header: "BRepBlend_Line.hxx".}
proc Remove*(this: var BRepBlend_Line; FromIndex: Standard_Integer;
            ToIndex: Standard_Integer) {.importcpp: "Remove",
                                       header: "BRepBlend_Line.hxx".}
proc Set*(this: var BRepBlend_Line; TranS1: IntSurf_TypeTrans;
         TranS2: IntSurf_TypeTrans) {.importcpp: "Set", header: "BRepBlend_Line.hxx".}
proc Set*(this: var BRepBlend_Line; Trans: IntSurf_TypeTrans) {.importcpp: "Set",
    header: "BRepBlend_Line.hxx".}
proc SetStartPoints*(this: var BRepBlend_Line; StartPt1: BRepBlend_Extremity;
                    StartPt2: BRepBlend_Extremity) {.importcpp: "SetStartPoints",
    header: "BRepBlend_Line.hxx".}
proc SetEndPoints*(this: var BRepBlend_Line; EndPt1: BRepBlend_Extremity;
                  EndPt2: BRepBlend_Extremity) {.importcpp: "SetEndPoints",
    header: "BRepBlend_Line.hxx".}
proc NbPoints*(this: BRepBlend_Line): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "BRepBlend_Line.hxx".}
proc Point*(this: BRepBlend_Line; Index: Standard_Integer): Blend_Point {.
    noSideEffect, importcpp: "Point", header: "BRepBlend_Line.hxx".}
proc TransitionOnS1*(this: BRepBlend_Line): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionOnS1", header: "BRepBlend_Line.hxx".}
proc TransitionOnS2*(this: BRepBlend_Line): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionOnS2", header: "BRepBlend_Line.hxx".}
proc StartPointOnFirst*(this: BRepBlend_Line): BRepBlend_Extremity {.noSideEffect,
    importcpp: "StartPointOnFirst", header: "BRepBlend_Line.hxx".}
proc StartPointOnSecond*(this: BRepBlend_Line): BRepBlend_Extremity {.noSideEffect,
    importcpp: "StartPointOnSecond", header: "BRepBlend_Line.hxx".}
proc EndPointOnFirst*(this: BRepBlend_Line): BRepBlend_Extremity {.noSideEffect,
    importcpp: "EndPointOnFirst", header: "BRepBlend_Line.hxx".}
proc EndPointOnSecond*(this: BRepBlend_Line): BRepBlend_Extremity {.noSideEffect,
    importcpp: "EndPointOnSecond", header: "BRepBlend_Line.hxx".}
proc TransitionOnS*(this: BRepBlend_Line): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionOnS", header: "BRepBlend_Line.hxx".}
type
  BRepBlend_Linebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepBlend_Line::get_type_name(@)",
                              header: "BRepBlend_Line.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepBlend_Line::get_type_descriptor(@)",
    header: "BRepBlend_Line.hxx".}
proc DynamicType*(this: BRepBlend_Line): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepBlend_Line.hxx".}