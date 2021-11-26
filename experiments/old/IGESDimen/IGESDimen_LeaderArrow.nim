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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_LeaderArrow"
type
  HandleC1C1* = Handle[IGESDimenLeaderArrow]

## ! defines LeaderArrow, Type <214> Form <1-12>
## ! in package IGESDimen
## ! Consists of one or more line segments except when
## ! leader is part of an angular dimension, with links to
## ! presumed text item

type
  IGESDimenLeaderArrow* {.importcpp: "IGESDimen_LeaderArrow",
                         header: "IGESDimen_LeaderArrow.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenLeaderArrow*(): IGESDimenLeaderArrow {.constructor,
    importcpp: "IGESDimen_LeaderArrow(@)", header: "IGESDimen_LeaderArrow.hxx".}
proc init*(this: var IGESDimenLeaderArrow; height: cfloat; width: cfloat; depth: cfloat;
          position: Xy; segments: Handle[TColgpHArray1OfXY]) {.importcpp: "Init",
    header: "IGESDimen_LeaderArrow.hxx".}
proc setFormNumber*(this: var IGESDimenLeaderArrow; form: cint) {.
    importcpp: "SetFormNumber", header: "IGESDimen_LeaderArrow.hxx".}
proc nbSegments*(this: IGESDimenLeaderArrow): cint {.noSideEffect,
    importcpp: "NbSegments", header: "IGESDimen_LeaderArrow.hxx".}
proc arrowHeadHeight*(this: IGESDimenLeaderArrow): cfloat {.noSideEffect,
    importcpp: "ArrowHeadHeight", header: "IGESDimen_LeaderArrow.hxx".}
proc arrowHeadWidth*(this: IGESDimenLeaderArrow): cfloat {.noSideEffect,
    importcpp: "ArrowHeadWidth", header: "IGESDimen_LeaderArrow.hxx".}
proc zDepth*(this: IGESDimenLeaderArrow): cfloat {.noSideEffect, importcpp: "ZDepth",
    header: "IGESDimen_LeaderArrow.hxx".}
proc arrowHead*(this: IGESDimenLeaderArrow): Pnt2d {.noSideEffect,
    importcpp: "ArrowHead", header: "IGESDimen_LeaderArrow.hxx".}
proc transformedArrowHead*(this: IGESDimenLeaderArrow): Pnt {.noSideEffect,
    importcpp: "TransformedArrowHead", header: "IGESDimen_LeaderArrow.hxx".}
proc segmentTail*(this: IGESDimenLeaderArrow; index: cint): Pnt2d {.noSideEffect,
    importcpp: "SegmentTail", header: "IGESDimen_LeaderArrow.hxx".}
proc transformedSegmentTail*(this: IGESDimenLeaderArrow; index: cint): Pnt {.
    noSideEffect, importcpp: "TransformedSegmentTail",
    header: "IGESDimen_LeaderArrow.hxx".}
type
  IGESDimenLeaderArrowbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_LeaderArrow::get_type_name(@)",
                            header: "IGESDimen_LeaderArrow.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_LeaderArrow::get_type_descriptor(@)",
    header: "IGESDimen_LeaderArrow.hxx".}
proc dynamicType*(this: IGESDimenLeaderArrow): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_LeaderArrow.hxx".}

























