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

discard "forward decl of MAT_BasicElt"
discard "forward decl of MAT_Node"
discard "forward decl of Standard_DomainError"
discard "forward decl of MAT_Arc"
discard "forward decl of MAT_Arc"
type
  HandleMAT_Arc* = Handle[MAT_Arc]

## ! An Arc is associated to each Bisecting of the mat.

type
  MAT_Arc* {.importcpp: "MAT_Arc", header: "MAT_Arc.hxx", bycopy.} = object of StandardTransient


proc constructMAT_Arc*(arcIndex: int; geomIndex: int;
                      firstElement: Handle[MAT_BasicElt];
                      secondElement: Handle[MAT_BasicElt]): MAT_Arc {.constructor,
    importcpp: "MAT_Arc(@)", header: "MAT_Arc.hxx".}
proc index*(this: MAT_Arc): int {.noSideEffect, importcpp: "Index",
                              header: "MAT_Arc.hxx".}
proc geomIndex*(this: MAT_Arc): int {.noSideEffect, importcpp: "GeomIndex",
                                  header: "MAT_Arc.hxx".}
proc firstElement*(this: MAT_Arc): Handle[MAT_BasicElt] {.noSideEffect,
    importcpp: "FirstElement", header: "MAT_Arc.hxx".}
proc secondElement*(this: MAT_Arc): Handle[MAT_BasicElt] {.noSideEffect,
    importcpp: "SecondElement", header: "MAT_Arc.hxx".}
proc firstNode*(this: MAT_Arc): Handle[MAT_Node] {.noSideEffect,
    importcpp: "FirstNode", header: "MAT_Arc.hxx".}
proc secondNode*(this: MAT_Arc): Handle[MAT_Node] {.noSideEffect,
    importcpp: "SecondNode", header: "MAT_Arc.hxx".}
proc theOtherNode*(this: MAT_Arc; aNode: Handle[MAT_Node]): Handle[MAT_Node] {.
    noSideEffect, importcpp: "TheOtherNode", header: "MAT_Arc.hxx".}
proc hasNeighbour*(this: MAT_Arc; aNode: Handle[MAT_Node]; aSide: MAT_Side): bool {.
    noSideEffect, importcpp: "HasNeighbour", header: "MAT_Arc.hxx".}
proc neighbour*(this: MAT_Arc; aNode: Handle[MAT_Node]; aSide: MAT_Side): Handle[
    MAT_Arc] {.noSideEffect, importcpp: "Neighbour", header: "MAT_Arc.hxx".}
proc setIndex*(this: var MAT_Arc; anInteger: int) {.importcpp: "SetIndex",
    header: "MAT_Arc.hxx".}
proc setGeomIndex*(this: var MAT_Arc; anInteger: int) {.importcpp: "SetGeomIndex",
    header: "MAT_Arc.hxx".}
proc setFirstElement*(this: var MAT_Arc; aBasicElt: Handle[MAT_BasicElt]) {.
    importcpp: "SetFirstElement", header: "MAT_Arc.hxx".}
proc setSecondElement*(this: var MAT_Arc; aBasicElt: Handle[MAT_BasicElt]) {.
    importcpp: "SetSecondElement", header: "MAT_Arc.hxx".}
proc setFirstNode*(this: var MAT_Arc; aNode: Handle[MAT_Node]) {.
    importcpp: "SetFirstNode", header: "MAT_Arc.hxx".}
proc setSecondNode*(this: var MAT_Arc; aNode: Handle[MAT_Node]) {.
    importcpp: "SetSecondNode", header: "MAT_Arc.hxx".}
proc setFirstArc*(this: var MAT_Arc; aSide: MAT_Side; anArc: Handle[MAT_Arc]) {.
    importcpp: "SetFirstArc", header: "MAT_Arc.hxx".}
proc setSecondArc*(this: var MAT_Arc; aSide: MAT_Side; anArc: Handle[MAT_Arc]) {.
    importcpp: "SetSecondArc", header: "MAT_Arc.hxx".}
proc setNeighbour*(this: var MAT_Arc; aSide: MAT_Side; aNode: Handle[MAT_Node];
                  anArc: Handle[MAT_Arc]) {.importcpp: "SetNeighbour",
    header: "MAT_Arc.hxx".}
type
  MAT_ArcbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_Arc::get_type_name(@)",
                            header: "MAT_Arc.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_Arc::get_type_descriptor(@)", header: "MAT_Arc.hxx".}
proc dynamicType*(this: MAT_Arc): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Arc.hxx".}
