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

discard "forward decl of MAT_Arc"
discard "forward decl of MAT_Node"
discard "forward decl of MAT_Node"
type
  HandleMAT_Node* = Handle[MAT_Node]

## ! Node of Graph.

type
  MAT_Node* {.importcpp: "MAT_Node", header: "MAT_Node.hxx", bycopy.} = object of StandardTransient


proc constructMAT_Node*(geomIndex: StandardInteger; linkedArc: Handle[MAT_Arc];
                       distance: StandardReal): MAT_Node {.constructor,
    importcpp: "MAT_Node(@)", header: "MAT_Node.hxx".}
proc geomIndex*(this: MAT_Node): StandardInteger {.noSideEffect,
    importcpp: "GeomIndex", header: "MAT_Node.hxx".}
proc index*(this: MAT_Node): StandardInteger {.noSideEffect, importcpp: "Index",
    header: "MAT_Node.hxx".}
proc linkedArcs*(this: MAT_Node; s: var MAT_SequenceOfArc) {.noSideEffect,
    importcpp: "LinkedArcs", header: "MAT_Node.hxx".}
proc nearElts*(this: MAT_Node; s: var MAT_SequenceOfBasicElt) {.noSideEffect,
    importcpp: "NearElts", header: "MAT_Node.hxx".}
proc distance*(this: MAT_Node): StandardReal {.noSideEffect, importcpp: "Distance",
    header: "MAT_Node.hxx".}
proc pendingNode*(this: MAT_Node): StandardBoolean {.noSideEffect,
    importcpp: "PendingNode", header: "MAT_Node.hxx".}
proc onBasicElt*(this: MAT_Node): StandardBoolean {.noSideEffect,
    importcpp: "OnBasicElt", header: "MAT_Node.hxx".}
proc infinite*(this: MAT_Node): StandardBoolean {.noSideEffect,
    importcpp: "Infinite", header: "MAT_Node.hxx".}
proc setIndex*(this: var MAT_Node; anIndex: StandardInteger) {.importcpp: "SetIndex",
    header: "MAT_Node.hxx".}
proc setLinkedArc*(this: var MAT_Node; anArc: Handle[MAT_Arc]) {.
    importcpp: "SetLinkedArc", header: "MAT_Node.hxx".}
type
  MAT_NodebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_Node::get_type_name(@)",
                            header: "MAT_Node.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_Node::get_type_descriptor(@)", header: "MAT_Node.hxx".}
proc dynamicType*(this: MAT_Node): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Node.hxx".}

