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
  ../Standard/Standard_Address, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, MAT_SequenceOfArc, MAT_SequenceOfBasicElt,
  ../Standard/Standard_Boolean

discard "forward decl of MAT_Arc"
discard "forward decl of MAT_Node"
discard "forward decl of MAT_Node"
type
  Handle_MAT_Node* = handle[MAT_Node]

## ! Node of Graph.

type
  MAT_Node* {.importcpp: "MAT_Node", header: "MAT_Node.hxx", bycopy.} = object of Standard_Transient


proc constructMAT_Node*(GeomIndex: Standard_Integer; LinkedArc: handle[MAT_Arc];
                       Distance: Standard_Real): MAT_Node {.constructor,
    importcpp: "MAT_Node(@)", header: "MAT_Node.hxx".}
proc GeomIndex*(this: MAT_Node): Standard_Integer {.noSideEffect,
    importcpp: "GeomIndex", header: "MAT_Node.hxx".}
proc Index*(this: MAT_Node): Standard_Integer {.noSideEffect, importcpp: "Index",
    header: "MAT_Node.hxx".}
proc LinkedArcs*(this: MAT_Node; S: var MAT_SequenceOfArc) {.noSideEffect,
    importcpp: "LinkedArcs", header: "MAT_Node.hxx".}
proc NearElts*(this: MAT_Node; S: var MAT_SequenceOfBasicElt) {.noSideEffect,
    importcpp: "NearElts", header: "MAT_Node.hxx".}
proc Distance*(this: MAT_Node): Standard_Real {.noSideEffect, importcpp: "Distance",
    header: "MAT_Node.hxx".}
proc PendingNode*(this: MAT_Node): Standard_Boolean {.noSideEffect,
    importcpp: "PendingNode", header: "MAT_Node.hxx".}
proc OnBasicElt*(this: MAT_Node): Standard_Boolean {.noSideEffect,
    importcpp: "OnBasicElt", header: "MAT_Node.hxx".}
proc Infinite*(this: MAT_Node): Standard_Boolean {.noSideEffect,
    importcpp: "Infinite", header: "MAT_Node.hxx".}
proc SetIndex*(this: var MAT_Node; anIndex: Standard_Integer) {.importcpp: "SetIndex",
    header: "MAT_Node.hxx".}
proc SetLinkedArc*(this: var MAT_Node; anArc: handle[MAT_Arc]) {.
    importcpp: "SetLinkedArc", header: "MAT_Node.hxx".}
type
  MAT_Nodebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_Node::get_type_name(@)",
                              header: "MAT_Node.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_Node::get_type_descriptor(@)", header: "MAT_Node.hxx".}
proc DynamicType*(this: MAT_Node): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Node.hxx".}