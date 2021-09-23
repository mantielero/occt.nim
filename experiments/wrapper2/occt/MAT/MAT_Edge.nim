##  Created on: 1992-10-14
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

discard "forward decl of MAT_Bisector"
discard "forward decl of MAT_Edge"
discard "forward decl of MAT_Edge"
type
  Handle_MAT_Edge* = handle[MAT_Edge]
  MAT_Edge* {.importcpp: "MAT_Edge", header: "MAT_Edge.hxx", bycopy.} = object of Standard_Transient


proc constructMAT_Edge*(): MAT_Edge {.constructor, importcpp: "MAT_Edge(@)",
                                   header: "MAT_Edge.hxx".}
proc EdgeNumber*(this: var MAT_Edge; anumber: Standard_Integer) {.
    importcpp: "EdgeNumber", header: "MAT_Edge.hxx".}
proc FirstBisector*(this: var MAT_Edge; abisector: handle[MAT_Bisector]) {.
    importcpp: "FirstBisector", header: "MAT_Edge.hxx".}
proc SecondBisector*(this: var MAT_Edge; abisector: handle[MAT_Bisector]) {.
    importcpp: "SecondBisector", header: "MAT_Edge.hxx".}
proc Distance*(this: var MAT_Edge; adistance: Standard_Real) {.importcpp: "Distance",
    header: "MAT_Edge.hxx".}
proc IntersectionPoint*(this: var MAT_Edge; apoint: Standard_Integer) {.
    importcpp: "IntersectionPoint", header: "MAT_Edge.hxx".}
proc EdgeNumber*(this: MAT_Edge): Standard_Integer {.noSideEffect,
    importcpp: "EdgeNumber", header: "MAT_Edge.hxx".}
proc FirstBisector*(this: MAT_Edge): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "FirstBisector", header: "MAT_Edge.hxx".}
proc SecondBisector*(this: MAT_Edge): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "SecondBisector", header: "MAT_Edge.hxx".}
proc Distance*(this: MAT_Edge): Standard_Real {.noSideEffect, importcpp: "Distance",
    header: "MAT_Edge.hxx".}
proc IntersectionPoint*(this: MAT_Edge): Standard_Integer {.noSideEffect,
    importcpp: "IntersectionPoint", header: "MAT_Edge.hxx".}
proc Dump*(this: MAT_Edge; ashift: Standard_Integer; alevel: Standard_Integer) {.
    noSideEffect, importcpp: "Dump", header: "MAT_Edge.hxx".}
type
  MAT_Edgebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_Edge::get_type_name(@)",
                              header: "MAT_Edge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_Edge::get_type_descriptor(@)", header: "MAT_Edge.hxx".}
proc DynamicType*(this: MAT_Edge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Edge.hxx".}