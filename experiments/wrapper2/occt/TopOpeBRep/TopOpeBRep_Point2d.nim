##  Created on: 1998-10-29
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopOpeBRep_Hctxff2d"
discard "forward decl of TopOpeBRep_Hctxee2d"
discard "forward decl of TopOpeBRep_EdgesIntersector"
# when defined(Status):
#   discard
type
  TopOpeBRepPoint2d* {.importcpp: "TopOpeBRep_Point2d",
                      header: "TopOpeBRep_Point2d.hxx", bycopy.} = object


proc constructTopOpeBRepPoint2d*(): TopOpeBRepPoint2d {.constructor,
    importcpp: "TopOpeBRep_Point2d(@)", header: "TopOpeBRep_Point2d.hxx".}
proc dump*(this: TopOpeBRepPoint2d; ie1: int = 0; ie2: int = 0) {.noSideEffect,
    importcpp: "Dump", header: "TopOpeBRep_Point2d.hxx".}
proc setPint*(this: var TopOpeBRepPoint2d; p: IntRes2dIntersectionPoint) {.
    importcpp: "SetPint", header: "TopOpeBRep_Point2d.hxx".}
proc hasPint*(this: TopOpeBRepPoint2d): bool {.noSideEffect, importcpp: "HasPint",
    header: "TopOpeBRep_Point2d.hxx".}
proc pint*(this: TopOpeBRepPoint2d): IntRes2dIntersectionPoint {.noSideEffect,
    importcpp: "Pint", header: "TopOpeBRep_Point2d.hxx".}
proc setIsVertex*(this: var TopOpeBRepPoint2d; i: int; b: bool) {.
    importcpp: "SetIsVertex", header: "TopOpeBRep_Point2d.hxx".}
proc isVertex*(this: TopOpeBRepPoint2d; i: int): bool {.noSideEffect,
    importcpp: "IsVertex", header: "TopOpeBRep_Point2d.hxx".}
proc setVertex*(this: var TopOpeBRepPoint2d; i: int; v: TopoDS_Vertex) {.
    importcpp: "SetVertex", header: "TopOpeBRep_Point2d.hxx".}
proc vertex*(this: TopOpeBRepPoint2d; i: int): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "TopOpeBRep_Point2d.hxx".}
proc setTransition*(this: var TopOpeBRepPoint2d; i: int; t: TopOpeBRepDS_Transition) {.
    importcpp: "SetTransition", header: "TopOpeBRep_Point2d.hxx".}
proc transition*(this: TopOpeBRepPoint2d; i: int): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "Transition", header: "TopOpeBRep_Point2d.hxx".}
proc changeTransition*(this: var TopOpeBRepPoint2d; i: int): var TopOpeBRepDS_Transition {.
    importcpp: "ChangeTransition", header: "TopOpeBRep_Point2d.hxx".}
proc setParameter*(this: var TopOpeBRepPoint2d; i: int; p: float) {.
    importcpp: "SetParameter", header: "TopOpeBRep_Point2d.hxx".}
proc parameter*(this: TopOpeBRepPoint2d; i: int): float {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRep_Point2d.hxx".}
proc setIsPointOfSegment*(this: var TopOpeBRepPoint2d; b: bool) {.
    importcpp: "SetIsPointOfSegment", header: "TopOpeBRep_Point2d.hxx".}
proc isPointOfSegment*(this: TopOpeBRepPoint2d): bool {.noSideEffect,
    importcpp: "IsPointOfSegment", header: "TopOpeBRep_Point2d.hxx".}
proc setSegmentAncestors*(this: var TopOpeBRepPoint2d; ip1: int; ip2: int) {.
    importcpp: "SetSegmentAncestors", header: "TopOpeBRep_Point2d.hxx".}
proc segmentAncestors*(this: TopOpeBRepPoint2d; ip1: var int; ip2: var int): bool {.
    noSideEffect, importcpp: "SegmentAncestors", header: "TopOpeBRep_Point2d.hxx".}
proc setStatus*(this: var TopOpeBRepPoint2d; s: TopOpeBRepP2Dstatus) {.
    importcpp: "SetStatus", header: "TopOpeBRep_Point2d.hxx".}
proc status*(this: TopOpeBRepPoint2d): TopOpeBRepP2Dstatus {.noSideEffect,
    importcpp: "Status", header: "TopOpeBRep_Point2d.hxx".}
proc setIndex*(this: var TopOpeBRepPoint2d; x: int) {.importcpp: "SetIndex",
    header: "TopOpeBRep_Point2d.hxx".}
proc index*(this: TopOpeBRepPoint2d): int {.noSideEffect, importcpp: "Index",
                                        header: "TopOpeBRep_Point2d.hxx".}
proc setValue*(this: var TopOpeBRepPoint2d; p: Pnt) {.importcpp: "SetValue",
    header: "TopOpeBRep_Point2d.hxx".}
proc value*(this: TopOpeBRepPoint2d): Pnt {.noSideEffect, importcpp: "Value",
                                        header: "TopOpeBRep_Point2d.hxx".}
proc setValue2d*(this: var TopOpeBRepPoint2d; p: Pnt2d) {.importcpp: "SetValue2d",
    header: "TopOpeBRep_Point2d.hxx".}
proc value2d*(this: TopOpeBRepPoint2d): Pnt2d {.noSideEffect, importcpp: "Value2d",
    header: "TopOpeBRep_Point2d.hxx".}
proc setKeep*(this: var TopOpeBRepPoint2d; b: bool) {.importcpp: "SetKeep",
    header: "TopOpeBRep_Point2d.hxx".}
proc keep*(this: TopOpeBRepPoint2d): bool {.noSideEffect, importcpp: "Keep",
                                        header: "TopOpeBRep_Point2d.hxx".}
proc setEdgesConfig*(this: var TopOpeBRepPoint2d; c: TopOpeBRepDS_Config) {.
    importcpp: "SetEdgesConfig", header: "TopOpeBRep_Point2d.hxx".}
proc edgesConfig*(this: TopOpeBRepPoint2d): TopOpeBRepDS_Config {.noSideEffect,
    importcpp: "EdgesConfig", header: "TopOpeBRep_Point2d.hxx".}
proc setTolerance*(this: var TopOpeBRepPoint2d; t: float) {.importcpp: "SetTolerance",
    header: "TopOpeBRep_Point2d.hxx".}
proc tolerance*(this: TopOpeBRepPoint2d): float {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRep_Point2d.hxx".}
proc setHctxff2d*(this: var TopOpeBRepPoint2d; ff2d: Handle[TopOpeBRepHctxff2d]) {.
    importcpp: "SetHctxff2d", header: "TopOpeBRep_Point2d.hxx".}
proc hctxff2d*(this: TopOpeBRepPoint2d): Handle[TopOpeBRepHctxff2d] {.noSideEffect,
    importcpp: "Hctxff2d", header: "TopOpeBRep_Point2d.hxx".}
proc setHctxee2d*(this: var TopOpeBRepPoint2d; ee2d: Handle[TopOpeBRepHctxee2d]) {.
    importcpp: "SetHctxee2d", header: "TopOpeBRep_Point2d.hxx".}
proc hctxee2d*(this: TopOpeBRepPoint2d): Handle[TopOpeBRepHctxee2d] {.noSideEffect,
    importcpp: "Hctxee2d", header: "TopOpeBRep_Point2d.hxx".}
