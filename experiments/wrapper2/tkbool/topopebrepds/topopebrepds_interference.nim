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
type
  HandleTopOpeBRepDS_Interference* = Handle[TopOpeBRepDS_Interference]

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


proc newTopOpeBRepDS_Interference*(): TopOpeBRepDS_Interference {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_Interference(@)", dynlib: tkbool.}
proc newTopOpeBRepDS_Interference*(transition: TopOpeBRepDS_Transition;
                                  supportType: TopOpeBRepDS_Kind; support: cint;
                                  geometryType: TopOpeBRepDS_Kind; geometry: cint): TopOpeBRepDS_Interference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Interference(@)", dynlib: tkbool.}
proc newTopOpeBRepDS_Interference*(i: Handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_Interference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Interference(@)", dynlib: tkbool.}
proc transition*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Transition {.
    noSideEffect, cdecl, importcpp: "Transition", dynlib: tkbool.}
proc changeTransition*(this: var TopOpeBRepDS_Interference): var TopOpeBRepDS_Transition {.
    cdecl, importcpp: "ChangeTransition", dynlib: tkbool.}
proc transition*(this: var TopOpeBRepDS_Interference; t: TopOpeBRepDS_Transition) {.
    cdecl, importcpp: "Transition", dynlib: tkbool.}
proc gkgsks*(this: TopOpeBRepDS_Interference; gk: var TopOpeBRepDS_Kind; g: var cint;
            sk: var TopOpeBRepDS_Kind; s: var cint) {.noSideEffect, cdecl,
    importcpp: "GKGSKS", dynlib: tkbool.}
proc supportType*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Kind {.
    noSideEffect, cdecl, importcpp: "SupportType", dynlib: tkbool.}
proc support*(this: TopOpeBRepDS_Interference): cint {.noSideEffect, cdecl,
    importcpp: "Support", dynlib: tkbool.}
proc geometryType*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Kind {.
    noSideEffect, cdecl, importcpp: "GeometryType", dynlib: tkbool.}
proc geometry*(this: TopOpeBRepDS_Interference): cint {.noSideEffect, cdecl,
    importcpp: "Geometry", dynlib: tkbool.}
proc setGeometry*(this: var TopOpeBRepDS_Interference; gi: cint) {.cdecl,
    importcpp: "SetGeometry", dynlib: tkbool.}
proc supportType*(this: var TopOpeBRepDS_Interference; st: TopOpeBRepDS_Kind) {.cdecl,
    importcpp: "SupportType", dynlib: tkbool.}
proc support*(this: var TopOpeBRepDS_Interference; s: cint) {.cdecl,
    importcpp: "Support", dynlib: tkbool.}
proc geometryType*(this: var TopOpeBRepDS_Interference; gt: TopOpeBRepDS_Kind) {.
    cdecl, importcpp: "GeometryType", dynlib: tkbool.}
proc geometry*(this: var TopOpeBRepDS_Interference; g: cint) {.cdecl,
    importcpp: "Geometry", dynlib: tkbool.}
proc hasSameSupport*(this: TopOpeBRepDS_Interference;
                    other: Handle[TopOpeBRepDS_Interference]): bool {.noSideEffect,
    cdecl, importcpp: "HasSameSupport", dynlib: tkbool.}
proc hasSameGeometry*(this: TopOpeBRepDS_Interference;
                     other: Handle[TopOpeBRepDS_Interference]): bool {.
    noSideEffect, cdecl, importcpp: "HasSameGeometry", dynlib: tkbool.}