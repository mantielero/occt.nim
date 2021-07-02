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

discard "forward decl of MAT_Edge"
discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT_Bisector"
discard "forward decl of MAT_Bisector"
type
  HandleMAT_Bisector* = Handle[MAT_Bisector]
  MAT_Bisector* {.importcpp: "MAT_Bisector", header: "MAT_Bisector.hxx", bycopy.} = object of StandardTransient


proc constructMAT_Bisector*(): MAT_Bisector {.constructor,
    importcpp: "MAT_Bisector(@)", header: "MAT_Bisector.hxx".}
proc addBisector*(this: MAT_Bisector; abisector: Handle[MAT_Bisector]) {.
    noSideEffect, importcpp: "AddBisector", header: "MAT_Bisector.hxx".}
proc list*(this: MAT_Bisector): Handle[MAT_ListOfBisector] {.noSideEffect,
    importcpp: "List", header: "MAT_Bisector.hxx".}
proc firstBisector*(this: MAT_Bisector): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "FirstBisector", header: "MAT_Bisector.hxx".}
proc lastBisector*(this: MAT_Bisector): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "LastBisector", header: "MAT_Bisector.hxx".}
proc bisectorNumber*(this: var MAT_Bisector; anumber: StandardInteger) {.
    importcpp: "BisectorNumber", header: "MAT_Bisector.hxx".}
proc indexNumber*(this: var MAT_Bisector; anumber: StandardInteger) {.
    importcpp: "IndexNumber", header: "MAT_Bisector.hxx".}
proc firstEdge*(this: var MAT_Bisector; anedge: Handle[MAT_Edge]) {.
    importcpp: "FirstEdge", header: "MAT_Bisector.hxx".}
proc secondEdge*(this: var MAT_Bisector; anedge: Handle[MAT_Edge]) {.
    importcpp: "SecondEdge", header: "MAT_Bisector.hxx".}
proc issuePoint*(this: var MAT_Bisector; apoint: StandardInteger) {.
    importcpp: "IssuePoint", header: "MAT_Bisector.hxx".}
proc endPoint*(this: var MAT_Bisector; apoint: StandardInteger) {.
    importcpp: "EndPoint", header: "MAT_Bisector.hxx".}
proc distIssuePoint*(this: var MAT_Bisector; areal: StandardReal) {.
    importcpp: "DistIssuePoint", header: "MAT_Bisector.hxx".}
proc firstVector*(this: var MAT_Bisector; avector: StandardInteger) {.
    importcpp: "FirstVector", header: "MAT_Bisector.hxx".}
proc secondVector*(this: var MAT_Bisector; avector: StandardInteger) {.
    importcpp: "SecondVector", header: "MAT_Bisector.hxx".}
proc sense*(this: var MAT_Bisector; asense: StandardReal) {.importcpp: "Sense",
    header: "MAT_Bisector.hxx".}
proc firstParameter*(this: var MAT_Bisector; aparameter: StandardReal) {.
    importcpp: "FirstParameter", header: "MAT_Bisector.hxx".}
proc secondParameter*(this: var MAT_Bisector; aparameter: StandardReal) {.
    importcpp: "SecondParameter", header: "MAT_Bisector.hxx".}
proc bisectorNumber*(this: MAT_Bisector): StandardInteger {.noSideEffect,
    importcpp: "BisectorNumber", header: "MAT_Bisector.hxx".}
proc indexNumber*(this: MAT_Bisector): StandardInteger {.noSideEffect,
    importcpp: "IndexNumber", header: "MAT_Bisector.hxx".}
proc firstEdge*(this: MAT_Bisector): Handle[MAT_Edge] {.noSideEffect,
    importcpp: "FirstEdge", header: "MAT_Bisector.hxx".}
proc secondEdge*(this: MAT_Bisector): Handle[MAT_Edge] {.noSideEffect,
    importcpp: "SecondEdge", header: "MAT_Bisector.hxx".}
proc issuePoint*(this: MAT_Bisector): StandardInteger {.noSideEffect,
    importcpp: "IssuePoint", header: "MAT_Bisector.hxx".}
proc endPoint*(this: MAT_Bisector): StandardInteger {.noSideEffect,
    importcpp: "EndPoint", header: "MAT_Bisector.hxx".}
proc distIssuePoint*(this: MAT_Bisector): StandardReal {.noSideEffect,
    importcpp: "DistIssuePoint", header: "MAT_Bisector.hxx".}
proc firstVector*(this: MAT_Bisector): StandardInteger {.noSideEffect,
    importcpp: "FirstVector", header: "MAT_Bisector.hxx".}
proc secondVector*(this: MAT_Bisector): StandardInteger {.noSideEffect,
    importcpp: "SecondVector", header: "MAT_Bisector.hxx".}
proc sense*(this: MAT_Bisector): StandardReal {.noSideEffect, importcpp: "Sense",
    header: "MAT_Bisector.hxx".}
proc firstParameter*(this: MAT_Bisector): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "MAT_Bisector.hxx".}
proc secondParameter*(this: MAT_Bisector): StandardReal {.noSideEffect,
    importcpp: "SecondParameter", header: "MAT_Bisector.hxx".}
proc dump*(this: MAT_Bisector; ashift: StandardInteger; alevel: StandardInteger) {.
    noSideEffect, importcpp: "Dump", header: "MAT_Bisector.hxx".}
type
  MAT_BisectorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_Bisector::get_type_name(@)",
                            header: "MAT_Bisector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_Bisector::get_type_descriptor(@)", header: "MAT_Bisector.hxx".}
proc dynamicType*(this: MAT_Bisector): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Bisector.hxx".}

