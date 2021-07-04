##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../gp/gp_XY, ../TColgp/TColgp_HArray1OfXY, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_LeaderArrow"
type
  Handle_IGESDimen_LeaderArrow* = handle[IGESDimen_LeaderArrow]

## ! defines LeaderArrow, Type <214> Form <1-12>
## ! in package IGESDimen
## ! Consists of one or more line segments except when
## ! leader is part of an angular dimension, with links to
## ! presumed text item

type
  IGESDimen_LeaderArrow* {.importcpp: "IGESDimen_LeaderArrow",
                          header: "IGESDimen_LeaderArrow.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_LeaderArrow*(): IGESDimen_LeaderArrow {.constructor,
    importcpp: "IGESDimen_LeaderArrow(@)", header: "IGESDimen_LeaderArrow.hxx".}
proc Init*(this: var IGESDimen_LeaderArrow; height: Standard_Real;
          width: Standard_Real; depth: Standard_Real; position: gp_XY;
          segments: handle[TColgp_HArray1OfXY]) {.importcpp: "Init",
    header: "IGESDimen_LeaderArrow.hxx".}
proc SetFormNumber*(this: var IGESDimen_LeaderArrow; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESDimen_LeaderArrow.hxx".}
proc NbSegments*(this: IGESDimen_LeaderArrow): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "IGESDimen_LeaderArrow.hxx".}
proc ArrowHeadHeight*(this: IGESDimen_LeaderArrow): Standard_Real {.noSideEffect,
    importcpp: "ArrowHeadHeight", header: "IGESDimen_LeaderArrow.hxx".}
proc ArrowHeadWidth*(this: IGESDimen_LeaderArrow): Standard_Real {.noSideEffect,
    importcpp: "ArrowHeadWidth", header: "IGESDimen_LeaderArrow.hxx".}
proc ZDepth*(this: IGESDimen_LeaderArrow): Standard_Real {.noSideEffect,
    importcpp: "ZDepth", header: "IGESDimen_LeaderArrow.hxx".}
proc ArrowHead*(this: IGESDimen_LeaderArrow): gp_Pnt2d {.noSideEffect,
    importcpp: "ArrowHead", header: "IGESDimen_LeaderArrow.hxx".}
proc TransformedArrowHead*(this: IGESDimen_LeaderArrow): gp_Pnt {.noSideEffect,
    importcpp: "TransformedArrowHead", header: "IGESDimen_LeaderArrow.hxx".}
proc SegmentTail*(this: IGESDimen_LeaderArrow; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "SegmentTail", header: "IGESDimen_LeaderArrow.hxx".}
proc TransformedSegmentTail*(this: IGESDimen_LeaderArrow; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TransformedSegmentTail",
    header: "IGESDimen_LeaderArrow.hxx".}
type
  IGESDimen_LeaderArrowbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_LeaderArrow::get_type_name(@)",
                              header: "IGESDimen_LeaderArrow.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_LeaderArrow::get_type_descriptor(@)",
    header: "IGESDimen_LeaderArrow.hxx".}
proc DynamicType*(this: IGESDimen_LeaderArrow): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_LeaderArrow.hxx".}