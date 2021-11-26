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

discard "forward decl of MAT_Bisector"
discard "forward decl of MAT_Edge"
discard "forward decl of MAT_Edge"
type
  HandleC1C1* = Handle[MAT_Edge]
  MAT_Edge* {.importcpp: "MAT_Edge", header: "MAT_Edge.hxx", bycopy.} = object of StandardTransient


proc constructMAT_Edge*(): MAT_Edge {.constructor, importcpp: "MAT_Edge(@)",
                                   header: "MAT_Edge.hxx".}
proc edgeNumber*(this: var MAT_Edge; anumber: cint) {.importcpp: "EdgeNumber",
    header: "MAT_Edge.hxx".}
proc firstBisector*(this: var MAT_Edge; abisector: Handle[MAT_Bisector]) {.
    importcpp: "FirstBisector", header: "MAT_Edge.hxx".}
proc secondBisector*(this: var MAT_Edge; abisector: Handle[MAT_Bisector]) {.
    importcpp: "SecondBisector", header: "MAT_Edge.hxx".}
proc distance*(this: var MAT_Edge; adistance: cfloat) {.importcpp: "Distance",
    header: "MAT_Edge.hxx".}
proc intersectionPoint*(this: var MAT_Edge; apoint: cint) {.
    importcpp: "IntersectionPoint", header: "MAT_Edge.hxx".}
proc edgeNumber*(this: MAT_Edge): cint {.noSideEffect, importcpp: "EdgeNumber",
                                     header: "MAT_Edge.hxx".}
proc firstBisector*(this: MAT_Edge): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "FirstBisector", header: "MAT_Edge.hxx".}
proc secondBisector*(this: MAT_Edge): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "SecondBisector", header: "MAT_Edge.hxx".}
proc distance*(this: MAT_Edge): cfloat {.noSideEffect, importcpp: "Distance",
                                     header: "MAT_Edge.hxx".}
proc intersectionPoint*(this: MAT_Edge): cint {.noSideEffect,
    importcpp: "IntersectionPoint", header: "MAT_Edge.hxx".}
proc dump*(this: MAT_Edge; ashift: cint; alevel: cint) {.noSideEffect,
    importcpp: "Dump", header: "MAT_Edge.hxx".}
type
  MAT_EdgebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_Edge::get_type_name(@)",
                            header: "MAT_Edge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_Edge::get_type_descriptor(@)", header: "MAT_Edge.hxx".}
proc dynamicType*(this: MAT_Edge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Edge.hxx".}

























