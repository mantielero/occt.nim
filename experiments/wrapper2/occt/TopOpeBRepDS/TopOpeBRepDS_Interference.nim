##  Created on: 1993-06-23
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Interference"
type
  HandleC1C1* = Handle[TopOpeBRepDS_Interference]

## ! An interference    is   the   description  of  the
## ! attachment of  a new  geometry on a  geometry. For
## ! example an intersection point  on an Edge or on  a
## ! Curve.
## !
## ! The Interference contains the following data :
## !
## ! - Transition :  How the interference  separates the
## ! existing geometry in INSIDE and OUTSIDE.
## !
## ! - SupportType : Type of  the object supporting the
## ! interference. (FACE, EDGE, VERTEX, SURFACE, CURVE).
## !
## ! - Support :  Index  in the data  structure  of the
## ! object supporting the interference.
## !
## ! - GeometryType  :   Type  of the  geometry of  the
## ! interference (SURFACE, CURVE, POINT).
## !
## ! - Geometry : Index  in the data structure  of the
## ! geometry.

type
  TopOpeBRepDS_Interference* {.importcpp: "TopOpeBRepDS_Interference",
                              header: "TopOpeBRepDS_Interference.hxx", bycopy.} = object of StandardTransient


proc constructTopOpeBRepDS_Interference*(): TopOpeBRepDS_Interference {.
    constructor, importcpp: "TopOpeBRepDS_Interference(@)",
    header: "TopOpeBRepDS_Interference.hxx".}
proc constructTopOpeBRepDS_Interference*(transition: TopOpeBRepDS_Transition;
                                        supportType: TopOpeBRepDS_Kind;
                                        support: cint;
                                        geometryType: TopOpeBRepDS_Kind;
                                        geometry: cint): TopOpeBRepDS_Interference {.
    constructor, importcpp: "TopOpeBRepDS_Interference(@)",
    header: "TopOpeBRepDS_Interference.hxx".}
proc constructTopOpeBRepDS_Interference*(i: Handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_Interference {.
    constructor, importcpp: "TopOpeBRepDS_Interference(@)",
    header: "TopOpeBRepDS_Interference.hxx".}
proc transition*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "Transition", header: "TopOpeBRepDS_Interference.hxx".}
proc changeTransition*(this: var TopOpeBRepDS_Interference): var TopOpeBRepDS_Transition {.
    importcpp: "ChangeTransition", header: "TopOpeBRepDS_Interference.hxx".}
proc transition*(this: var TopOpeBRepDS_Interference; t: TopOpeBRepDS_Transition) {.
    importcpp: "Transition", header: "TopOpeBRepDS_Interference.hxx".}
proc gkgsks*(this: TopOpeBRepDS_Interference; gk: var TopOpeBRepDS_Kind; g: var cint;
            sk: var TopOpeBRepDS_Kind; s: var cint) {.noSideEffect,
    importcpp: "GKGSKS", header: "TopOpeBRepDS_Interference.hxx".}
proc supportType*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Kind {.
    noSideEffect, importcpp: "SupportType", header: "TopOpeBRepDS_Interference.hxx".}
proc support*(this: TopOpeBRepDS_Interference): cint {.noSideEffect,
    importcpp: "Support", header: "TopOpeBRepDS_Interference.hxx".}
proc geometryType*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Kind {.
    noSideEffect, importcpp: "GeometryType",
    header: "TopOpeBRepDS_Interference.hxx".}
proc geometry*(this: TopOpeBRepDS_Interference): cint {.noSideEffect,
    importcpp: "Geometry", header: "TopOpeBRepDS_Interference.hxx".}
proc setGeometry*(this: var TopOpeBRepDS_Interference; gi: cint) {.
    importcpp: "SetGeometry", header: "TopOpeBRepDS_Interference.hxx".}
proc supportType*(this: var TopOpeBRepDS_Interference; st: TopOpeBRepDS_Kind) {.
    importcpp: "SupportType", header: "TopOpeBRepDS_Interference.hxx".}
proc support*(this: var TopOpeBRepDS_Interference; s: cint) {.importcpp: "Support",
    header: "TopOpeBRepDS_Interference.hxx".}
proc geometryType*(this: var TopOpeBRepDS_Interference; gt: TopOpeBRepDS_Kind) {.
    importcpp: "GeometryType", header: "TopOpeBRepDS_Interference.hxx".}
proc geometry*(this: var TopOpeBRepDS_Interference; g: cint) {.importcpp: "Geometry",
    header: "TopOpeBRepDS_Interference.hxx".}
proc hasSameSupport*(this: TopOpeBRepDS_Interference;
                    other: Handle[TopOpeBRepDS_Interference]): bool {.noSideEffect,
    importcpp: "HasSameSupport", header: "TopOpeBRepDS_Interference.hxx".}
proc hasSameGeometry*(this: TopOpeBRepDS_Interference;
                     other: Handle[TopOpeBRepDS_Interference]): bool {.
    noSideEffect, importcpp: "HasSameGeometry",
    header: "TopOpeBRepDS_Interference.hxx".}
type
  TopOpeBRepDS_InterferencebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepDS_Interference::get_type_name(@)",
                            header: "TopOpeBRepDS_Interference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepDS_Interference::get_type_descriptor(@)",
    header: "TopOpeBRepDS_Interference.hxx".}
proc dynamicType*(this: TopOpeBRepDS_Interference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TopOpeBRepDS_Interference.hxx".}

























