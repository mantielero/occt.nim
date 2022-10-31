import topopebrepds_types
import ../../tkernel/standard/standard_types





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





proc newTopOpeBRepDS_Interference*(): TopOpeBRepDS_Interference {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_Interference(@)", header: "TopOpeBRepDS_Interference.hxx".}
proc newTopOpeBRepDS_Interference*(transition: TopOpeBRepDS_Transition;
                                  supportType: TopOpeBRepDS_Kind; support: cint;
                                  geometryType: TopOpeBRepDS_Kind; geometry: cint): TopOpeBRepDS_Interference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Interference(@)", header: "TopOpeBRepDS_Interference.hxx".}
proc newTopOpeBRepDS_Interference*(i: Handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_Interference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Interference(@)", header: "TopOpeBRepDS_Interference.hxx".}
proc transition*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Transition {.
    noSideEffect, cdecl, importcpp: "Transition", header: "TopOpeBRepDS_Interference.hxx".}
proc changeTransition*(this: var TopOpeBRepDS_Interference): var TopOpeBRepDS_Transition {.
    cdecl, importcpp: "ChangeTransition", header: "TopOpeBRepDS_Interference.hxx".}
proc transition*(this: var TopOpeBRepDS_Interference; t: TopOpeBRepDS_Transition) {.
    cdecl, importcpp: "Transition", header: "TopOpeBRepDS_Interference.hxx".}
proc gkgsks*(this: TopOpeBRepDS_Interference; gk: var TopOpeBRepDS_Kind; g: var cint;
            sk: var TopOpeBRepDS_Kind; s: var cint) {.noSideEffect, cdecl,
    importcpp: "GKGSKS", header: "TopOpeBRepDS_Interference.hxx".}
proc supportType*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Kind {.
    noSideEffect, cdecl, importcpp: "SupportType", header: "TopOpeBRepDS_Interference.hxx".}
proc support*(this: TopOpeBRepDS_Interference): cint {.noSideEffect, cdecl,
    importcpp: "Support", header: "TopOpeBRepDS_Interference.hxx".}
proc geometryType*(this: TopOpeBRepDS_Interference): TopOpeBRepDS_Kind {.
    noSideEffect, cdecl, importcpp: "GeometryType", header: "TopOpeBRepDS_Interference.hxx".}
proc geometry*(this: TopOpeBRepDS_Interference): cint {.noSideEffect, cdecl,
    importcpp: "Geometry", header: "TopOpeBRepDS_Interference.hxx".}
proc setGeometry*(this: var TopOpeBRepDS_Interference; gi: cint) {.cdecl,
    importcpp: "SetGeometry", header: "TopOpeBRepDS_Interference.hxx".}
proc supportType*(this: var TopOpeBRepDS_Interference; st: TopOpeBRepDS_Kind) {.cdecl,
    importcpp: "SupportType", header: "TopOpeBRepDS_Interference.hxx".}
proc support*(this: var TopOpeBRepDS_Interference; s: cint) {.cdecl,
    importcpp: "Support", header: "TopOpeBRepDS_Interference.hxx".}
proc geometryType*(this: var TopOpeBRepDS_Interference; gt: TopOpeBRepDS_Kind) {.
    cdecl, importcpp: "GeometryType", header: "TopOpeBRepDS_Interference.hxx".}
proc geometry*(this: var TopOpeBRepDS_Interference; g: cint) {.cdecl,
    importcpp: "Geometry", header: "TopOpeBRepDS_Interference.hxx".}
proc hasSameSupport*(this: TopOpeBRepDS_Interference;
                    other: Handle[TopOpeBRepDS_Interference]): bool {.noSideEffect,
    cdecl, importcpp: "HasSameSupport", header: "TopOpeBRepDS_Interference.hxx".}
proc hasSameGeometry*(this: TopOpeBRepDS_Interference;
                     other: Handle[TopOpeBRepDS_Interference]): bool {.
    noSideEffect, cdecl, importcpp: "HasSameGeometry", header: "TopOpeBRepDS_Interference.hxx".}


