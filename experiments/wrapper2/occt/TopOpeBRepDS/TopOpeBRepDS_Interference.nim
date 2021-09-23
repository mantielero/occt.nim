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

import
  ../Standard/Standard, ../Standard/Standard_Type, TopOpeBRepDS_Transition,
  ../Standard/Standard_Integer, TopOpeBRepDS_Kind, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Interference"
type
  Handle_TopOpeBRepDS_Interference* = handle[TopOpeBRepDS_Interference]

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
                              header: "TopOpeBRepDS_Interference.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepDS_Interference*(): TopOpeBRepDS_Interference {.
    constructor, importcpp: "TopOpeBRepDS_Interference(@)",
    header: "TopOpeBRepDS_Interference.hxx".}
proc constructTopOpeBRepDS_Interference*(Transition: TopOpeBRepDS_Transition;
                                        SupportType: TopOpeBRepDS_Kind;
                                        Support: Standard_Integer;
                                        GeometryType: TopOpeBRepDS_Kind;
                                        Geometry: Standard_Integer): TopOpeBRepDS_Interference {.
    constructor, importcpp: "TopOpeBRepDS_Interference(@)",
    header: "TopOpeBRepDS_Interference.hxx".}
proc constructTopOpeBRepDS_Interference*(I: handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_Interference {.
    constructor, importcpp: "TopOpeBRepDS_Interference(@)",
    header: "TopOpeBRepDS_Interference.hxx".}
proc Transition*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "Transition", header: "TopOpeBRepDS_Interference.hxx".}
proc ChangeTransition*(this: var TopOpeBRepDS_Interference): var TopOpeBRepDS_Transition {.
    importcpp: "ChangeTransition", header: "TopOpeBRepDS_Interference.hxx".}
proc Transition*(this: var TopOpeBRepDS_Interference; T: TopOpeBRepDS_Transition) {.
    importcpp: "Transition", header: "TopOpeBRepDS_Interference.hxx".}
proc GKGSKS*(this: TopOpeBRepDS_Interference; GK: var TopOpeBRepDS_Kind;
            G: var Standard_Integer; SK: var TopOpeBRepDS_Kind;
            S: var Standard_Integer) {.noSideEffect, importcpp: "GKGSKS",
                                    header: "TopOpeBRepDS_Interference.hxx".}
proc SupportType*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Kind {.
    noSideEffect, importcpp: "SupportType", header: "TopOpeBRepDS_Interference.hxx".}
proc Support*(this: TopOpeBRepDS_Interference): Standard_Integer {.noSideEffect,
    importcpp: "Support", header: "TopOpeBRepDS_Interference.hxx".}
proc GeometryType*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Kind {.
    noSideEffect, importcpp: "GeometryType",
    header: "TopOpeBRepDS_Interference.hxx".}
proc Geometry*(this: TopOpeBRepDS_Interference): Standard_Integer {.noSideEffect,
    importcpp: "Geometry", header: "TopOpeBRepDS_Interference.hxx".}
proc SetGeometry*(this: var TopOpeBRepDS_Interference; GI: Standard_Integer) {.
    importcpp: "SetGeometry", header: "TopOpeBRepDS_Interference.hxx".}
proc SupportType*(this: var TopOpeBRepDS_Interference; ST: TopOpeBRepDS_Kind) {.
    importcpp: "SupportType", header: "TopOpeBRepDS_Interference.hxx".}
proc Support*(this: var TopOpeBRepDS_Interference; S: Standard_Integer) {.
    importcpp: "Support", header: "TopOpeBRepDS_Interference.hxx".}
proc GeometryType*(this: var TopOpeBRepDS_Interference; GT: TopOpeBRepDS_Kind) {.
    importcpp: "GeometryType", header: "TopOpeBRepDS_Interference.hxx".}
proc Geometry*(this: var TopOpeBRepDS_Interference; G: Standard_Integer) {.
    importcpp: "Geometry", header: "TopOpeBRepDS_Interference.hxx".}
proc HasSameSupport*(this: TopOpeBRepDS_Interference;
                    Other: handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    noSideEffect, importcpp: "HasSameSupport",
    header: "TopOpeBRepDS_Interference.hxx".}
proc HasSameGeometry*(this: TopOpeBRepDS_Interference;
                     Other: handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    noSideEffect, importcpp: "HasSameGeometry",
    header: "TopOpeBRepDS_Interference.hxx".}
type
  TopOpeBRepDS_Interferencebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepDS_Interference::get_type_name(@)",
                              header: "TopOpeBRepDS_Interference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepDS_Interference::get_type_descriptor(@)",
    header: "TopOpeBRepDS_Interference.hxx".}
proc DynamicType*(this: TopOpeBRepDS_Interference): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TopOpeBRepDS_Interference.hxx".}