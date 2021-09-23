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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_IntersectionPoint,
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Vertex,
  ../TopOpeBRepDS/TopOpeBRepDS_Transition, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, TopOpeBRep_P2Dstatus, ../gp/gp_Pnt, ../gp/gp_Pnt2d,
  ../TopOpeBRepDS/TopOpeBRepDS_Config

discard "forward decl of TopOpeBRep_Hctxff2d"
discard "forward decl of TopOpeBRep_Hctxee2d"
discard "forward decl of TopOpeBRep_EdgesIntersector"
when defined(Status):
  discard
type
  TopOpeBRep_Point2d* {.importcpp: "TopOpeBRep_Point2d",
                       header: "TopOpeBRep_Point2d.hxx", bycopy.} = object


proc constructTopOpeBRep_Point2d*(): TopOpeBRep_Point2d {.constructor,
    importcpp: "TopOpeBRep_Point2d(@)", header: "TopOpeBRep_Point2d.hxx".}
proc Dump*(this: TopOpeBRep_Point2d; ie1: Standard_Integer = 0;
          ie2: Standard_Integer = 0) {.noSideEffect, importcpp: "Dump",
                                   header: "TopOpeBRep_Point2d.hxx".}
proc SetPint*(this: var TopOpeBRep_Point2d; P: IntRes2d_IntersectionPoint) {.
    importcpp: "SetPint", header: "TopOpeBRep_Point2d.hxx".}
proc HasPint*(this: TopOpeBRep_Point2d): Standard_Boolean {.noSideEffect,
    importcpp: "HasPint", header: "TopOpeBRep_Point2d.hxx".}
proc Pint*(this: TopOpeBRep_Point2d): IntRes2d_IntersectionPoint {.noSideEffect,
    importcpp: "Pint", header: "TopOpeBRep_Point2d.hxx".}
proc SetIsVertex*(this: var TopOpeBRep_Point2d; I: Standard_Integer;
                 B: Standard_Boolean) {.importcpp: "SetIsVertex",
                                      header: "TopOpeBRep_Point2d.hxx".}
proc IsVertex*(this: TopOpeBRep_Point2d; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsVertex", header: "TopOpeBRep_Point2d.hxx".}
proc SetVertex*(this: var TopOpeBRep_Point2d; I: Standard_Integer; V: TopoDS_Vertex) {.
    importcpp: "SetVertex", header: "TopOpeBRep_Point2d.hxx".}
proc Vertex*(this: TopOpeBRep_Point2d; I: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "TopOpeBRep_Point2d.hxx".}
proc SetTransition*(this: var TopOpeBRep_Point2d; I: Standard_Integer;
                   T: TopOpeBRepDS_Transition) {.importcpp: "SetTransition",
    header: "TopOpeBRep_Point2d.hxx".}
proc Transition*(this: TopOpeBRep_Point2d; I: Standard_Integer): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "Transition", header: "TopOpeBRep_Point2d.hxx".}
proc ChangeTransition*(this: var TopOpeBRep_Point2d; I: Standard_Integer): var TopOpeBRepDS_Transition {.
    importcpp: "ChangeTransition", header: "TopOpeBRep_Point2d.hxx".}
proc SetParameter*(this: var TopOpeBRep_Point2d; I: Standard_Integer; P: Standard_Real) {.
    importcpp: "SetParameter", header: "TopOpeBRep_Point2d.hxx".}
proc Parameter*(this: TopOpeBRep_Point2d; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "TopOpeBRep_Point2d.hxx".}
proc SetIsPointOfSegment*(this: var TopOpeBRep_Point2d; B: Standard_Boolean) {.
    importcpp: "SetIsPointOfSegment", header: "TopOpeBRep_Point2d.hxx".}
proc IsPointOfSegment*(this: TopOpeBRep_Point2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOfSegment", header: "TopOpeBRep_Point2d.hxx".}
proc SetSegmentAncestors*(this: var TopOpeBRep_Point2d; IP1: Standard_Integer;
                         IP2: Standard_Integer) {.
    importcpp: "SetSegmentAncestors", header: "TopOpeBRep_Point2d.hxx".}
proc SegmentAncestors*(this: TopOpeBRep_Point2d; IP1: var Standard_Integer;
                      IP2: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "SegmentAncestors", header: "TopOpeBRep_Point2d.hxx".}
proc SetStatus*(this: var TopOpeBRep_Point2d; S: TopOpeBRep_P2Dstatus) {.
    importcpp: "SetStatus", header: "TopOpeBRep_Point2d.hxx".}
proc Status*(this: TopOpeBRep_Point2d): TopOpeBRep_P2Dstatus {.noSideEffect,
    importcpp: "Status", header: "TopOpeBRep_Point2d.hxx".}
proc SetIndex*(this: var TopOpeBRep_Point2d; X: Standard_Integer) {.
    importcpp: "SetIndex", header: "TopOpeBRep_Point2d.hxx".}
proc Index*(this: TopOpeBRep_Point2d): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRep_Point2d.hxx".}
proc SetValue*(this: var TopOpeBRep_Point2d; P: gp_Pnt) {.importcpp: "SetValue",
    header: "TopOpeBRep_Point2d.hxx".}
proc Value*(this: TopOpeBRep_Point2d): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "TopOpeBRep_Point2d.hxx".}
proc SetValue2d*(this: var TopOpeBRep_Point2d; P: gp_Pnt2d) {.importcpp: "SetValue2d",
    header: "TopOpeBRep_Point2d.hxx".}
proc Value2d*(this: TopOpeBRep_Point2d): gp_Pnt2d {.noSideEffect,
    importcpp: "Value2d", header: "TopOpeBRep_Point2d.hxx".}
proc SetKeep*(this: var TopOpeBRep_Point2d; B: Standard_Boolean) {.
    importcpp: "SetKeep", header: "TopOpeBRep_Point2d.hxx".}
proc Keep*(this: TopOpeBRep_Point2d): Standard_Boolean {.noSideEffect,
    importcpp: "Keep", header: "TopOpeBRep_Point2d.hxx".}
proc SetEdgesConfig*(this: var TopOpeBRep_Point2d; C: TopOpeBRepDS_Config) {.
    importcpp: "SetEdgesConfig", header: "TopOpeBRep_Point2d.hxx".}
proc EdgesConfig*(this: TopOpeBRep_Point2d): TopOpeBRepDS_Config {.noSideEffect,
    importcpp: "EdgesConfig", header: "TopOpeBRep_Point2d.hxx".}
proc SetTolerance*(this: var TopOpeBRep_Point2d; T: Standard_Real) {.
    importcpp: "SetTolerance", header: "TopOpeBRep_Point2d.hxx".}
proc Tolerance*(this: TopOpeBRep_Point2d): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRep_Point2d.hxx".}
proc SetHctxff2d*(this: var TopOpeBRep_Point2d; ff2d: handle[TopOpeBRep_Hctxff2d]) {.
    importcpp: "SetHctxff2d", header: "TopOpeBRep_Point2d.hxx".}
proc Hctxff2d*(this: TopOpeBRep_Point2d): handle[TopOpeBRep_Hctxff2d] {.
    noSideEffect, importcpp: "Hctxff2d", header: "TopOpeBRep_Point2d.hxx".}
proc SetHctxee2d*(this: var TopOpeBRep_Point2d; ee2d: handle[TopOpeBRep_Hctxee2d]) {.
    importcpp: "SetHctxee2d", header: "TopOpeBRep_Point2d.hxx".}
proc Hctxee2d*(this: TopOpeBRep_Point2d): handle[TopOpeBRep_Hctxee2d] {.
    noSideEffect, importcpp: "Hctxee2d", header: "TopOpeBRep_Point2d.hxx".}