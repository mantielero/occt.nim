##  Created on: 1992-09-30
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Transient

discard "forward decl of MAT_Edge"
discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT_Bisector"
discard "forward decl of MAT_Bisector"
type
  Handle_MAT_Bisector* = handle[MAT_Bisector]
  MAT_Bisector* {.importcpp: "MAT_Bisector", header: "MAT_Bisector.hxx", bycopy.} = object of Standard_Transient


proc constructMAT_Bisector*(): MAT_Bisector {.constructor,
    importcpp: "MAT_Bisector(@)", header: "MAT_Bisector.hxx".}
proc AddBisector*(this: MAT_Bisector; abisector: handle[MAT_Bisector]) {.
    noSideEffect, importcpp: "AddBisector", header: "MAT_Bisector.hxx".}
proc List*(this: MAT_Bisector): handle[MAT_ListOfBisector] {.noSideEffect,
    importcpp: "List", header: "MAT_Bisector.hxx".}
proc FirstBisector*(this: MAT_Bisector): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "FirstBisector", header: "MAT_Bisector.hxx".}
proc LastBisector*(this: MAT_Bisector): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "LastBisector", header: "MAT_Bisector.hxx".}
proc BisectorNumber*(this: var MAT_Bisector; anumber: Standard_Integer) {.
    importcpp: "BisectorNumber", header: "MAT_Bisector.hxx".}
proc IndexNumber*(this: var MAT_Bisector; anumber: Standard_Integer) {.
    importcpp: "IndexNumber", header: "MAT_Bisector.hxx".}
proc FirstEdge*(this: var MAT_Bisector; anedge: handle[MAT_Edge]) {.
    importcpp: "FirstEdge", header: "MAT_Bisector.hxx".}
proc SecondEdge*(this: var MAT_Bisector; anedge: handle[MAT_Edge]) {.
    importcpp: "SecondEdge", header: "MAT_Bisector.hxx".}
proc IssuePoint*(this: var MAT_Bisector; apoint: Standard_Integer) {.
    importcpp: "IssuePoint", header: "MAT_Bisector.hxx".}
proc EndPoint*(this: var MAT_Bisector; apoint: Standard_Integer) {.
    importcpp: "EndPoint", header: "MAT_Bisector.hxx".}
proc DistIssuePoint*(this: var MAT_Bisector; areal: Standard_Real) {.
    importcpp: "DistIssuePoint", header: "MAT_Bisector.hxx".}
proc FirstVector*(this: var MAT_Bisector; avector: Standard_Integer) {.
    importcpp: "FirstVector", header: "MAT_Bisector.hxx".}
proc SecondVector*(this: var MAT_Bisector; avector: Standard_Integer) {.
    importcpp: "SecondVector", header: "MAT_Bisector.hxx".}
proc Sense*(this: var MAT_Bisector; asense: Standard_Real) {.importcpp: "Sense",
    header: "MAT_Bisector.hxx".}
proc FirstParameter*(this: var MAT_Bisector; aparameter: Standard_Real) {.
    importcpp: "FirstParameter", header: "MAT_Bisector.hxx".}
proc SecondParameter*(this: var MAT_Bisector; aparameter: Standard_Real) {.
    importcpp: "SecondParameter", header: "MAT_Bisector.hxx".}
proc BisectorNumber*(this: MAT_Bisector): Standard_Integer {.noSideEffect,
    importcpp: "BisectorNumber", header: "MAT_Bisector.hxx".}
proc IndexNumber*(this: MAT_Bisector): Standard_Integer {.noSideEffect,
    importcpp: "IndexNumber", header: "MAT_Bisector.hxx".}
proc FirstEdge*(this: MAT_Bisector): handle[MAT_Edge] {.noSideEffect,
    importcpp: "FirstEdge", header: "MAT_Bisector.hxx".}
proc SecondEdge*(this: MAT_Bisector): handle[MAT_Edge] {.noSideEffect,
    importcpp: "SecondEdge", header: "MAT_Bisector.hxx".}
proc IssuePoint*(this: MAT_Bisector): Standard_Integer {.noSideEffect,
    importcpp: "IssuePoint", header: "MAT_Bisector.hxx".}
proc EndPoint*(this: MAT_Bisector): Standard_Integer {.noSideEffect,
    importcpp: "EndPoint", header: "MAT_Bisector.hxx".}
proc DistIssuePoint*(this: MAT_Bisector): Standard_Real {.noSideEffect,
    importcpp: "DistIssuePoint", header: "MAT_Bisector.hxx".}
proc FirstVector*(this: MAT_Bisector): Standard_Integer {.noSideEffect,
    importcpp: "FirstVector", header: "MAT_Bisector.hxx".}
proc SecondVector*(this: MAT_Bisector): Standard_Integer {.noSideEffect,
    importcpp: "SecondVector", header: "MAT_Bisector.hxx".}
proc Sense*(this: MAT_Bisector): Standard_Real {.noSideEffect, importcpp: "Sense",
    header: "MAT_Bisector.hxx".}
proc FirstParameter*(this: MAT_Bisector): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "MAT_Bisector.hxx".}
proc SecondParameter*(this: MAT_Bisector): Standard_Real {.noSideEffect,
    importcpp: "SecondParameter", header: "MAT_Bisector.hxx".}
proc Dump*(this: MAT_Bisector; ashift: Standard_Integer; alevel: Standard_Integer) {.
    noSideEffect, importcpp: "Dump", header: "MAT_Bisector.hxx".}
type
  MAT_Bisectorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_Bisector::get_type_name(@)",
                              header: "MAT_Bisector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_Bisector::get_type_descriptor(@)", header: "MAT_Bisector.hxx".}
proc DynamicType*(this: MAT_Bisector): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Bisector.hxx".}