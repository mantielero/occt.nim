##  Created on: 1993-04-30
##  Created by: Yves FRICAUD
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Address, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, MAT_Side

discard "forward decl of MAT_BasicElt"
discard "forward decl of MAT_Node"
discard "forward decl of Standard_DomainError"
discard "forward decl of MAT_Arc"
discard "forward decl of MAT_Arc"
type
  Handle_MAT_Arc* = handle[MAT_Arc]

## ! An Arc is associated to each Bisecting of the mat.

type
  MAT_Arc* {.importcpp: "MAT_Arc", header: "MAT_Arc.hxx", bycopy.} = object of Standard_Transient


proc constructMAT_Arc*(ArcIndex: Standard_Integer; GeomIndex: Standard_Integer;
                      FirstElement: handle[MAT_BasicElt];
                      SecondElement: handle[MAT_BasicElt]): MAT_Arc {.constructor,
    importcpp: "MAT_Arc(@)", header: "MAT_Arc.hxx".}
proc Index*(this: MAT_Arc): Standard_Integer {.noSideEffect, importcpp: "Index",
    header: "MAT_Arc.hxx".}
proc GeomIndex*(this: MAT_Arc): Standard_Integer {.noSideEffect,
    importcpp: "GeomIndex", header: "MAT_Arc.hxx".}
proc FirstElement*(this: MAT_Arc): handle[MAT_BasicElt] {.noSideEffect,
    importcpp: "FirstElement", header: "MAT_Arc.hxx".}
proc SecondElement*(this: MAT_Arc): handle[MAT_BasicElt] {.noSideEffect,
    importcpp: "SecondElement", header: "MAT_Arc.hxx".}
proc FirstNode*(this: MAT_Arc): handle[MAT_Node] {.noSideEffect,
    importcpp: "FirstNode", header: "MAT_Arc.hxx".}
proc SecondNode*(this: MAT_Arc): handle[MAT_Node] {.noSideEffect,
    importcpp: "SecondNode", header: "MAT_Arc.hxx".}
proc TheOtherNode*(this: MAT_Arc; aNode: handle[MAT_Node]): handle[MAT_Node] {.
    noSideEffect, importcpp: "TheOtherNode", header: "MAT_Arc.hxx".}
proc HasNeighbour*(this: MAT_Arc; aNode: handle[MAT_Node]; aSide: MAT_Side): Standard_Boolean {.
    noSideEffect, importcpp: "HasNeighbour", header: "MAT_Arc.hxx".}
proc Neighbour*(this: MAT_Arc; aNode: handle[MAT_Node]; aSide: MAT_Side): handle[
    MAT_Arc] {.noSideEffect, importcpp: "Neighbour", header: "MAT_Arc.hxx".}
proc SetIndex*(this: var MAT_Arc; anInteger: Standard_Integer) {.
    importcpp: "SetIndex", header: "MAT_Arc.hxx".}
proc SetGeomIndex*(this: var MAT_Arc; anInteger: Standard_Integer) {.
    importcpp: "SetGeomIndex", header: "MAT_Arc.hxx".}
proc SetFirstElement*(this: var MAT_Arc; aBasicElt: handle[MAT_BasicElt]) {.
    importcpp: "SetFirstElement", header: "MAT_Arc.hxx".}
proc SetSecondElement*(this: var MAT_Arc; aBasicElt: handle[MAT_BasicElt]) {.
    importcpp: "SetSecondElement", header: "MAT_Arc.hxx".}
proc SetFirstNode*(this: var MAT_Arc; aNode: handle[MAT_Node]) {.
    importcpp: "SetFirstNode", header: "MAT_Arc.hxx".}
proc SetSecondNode*(this: var MAT_Arc; aNode: handle[MAT_Node]) {.
    importcpp: "SetSecondNode", header: "MAT_Arc.hxx".}
proc SetFirstArc*(this: var MAT_Arc; aSide: MAT_Side; anArc: handle[MAT_Arc]) {.
    importcpp: "SetFirstArc", header: "MAT_Arc.hxx".}
proc SetSecondArc*(this: var MAT_Arc; aSide: MAT_Side; anArc: handle[MAT_Arc]) {.
    importcpp: "SetSecondArc", header: "MAT_Arc.hxx".}
proc SetNeighbour*(this: var MAT_Arc; aSide: MAT_Side; aNode: handle[MAT_Node];
                  anArc: handle[MAT_Arc]) {.importcpp: "SetNeighbour",
    header: "MAT_Arc.hxx".}
type
  MAT_Arcbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_Arc::get_type_name(@)",
                              header: "MAT_Arc.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_Arc::get_type_descriptor(@)", header: "MAT_Arc.hxx".}
proc DynamicType*(this: MAT_Arc): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Arc.hxx".}