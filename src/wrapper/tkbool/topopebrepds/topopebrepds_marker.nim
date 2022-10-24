import topopebrepds_types

##  Created on: 1999-04-01
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TopOpeBRepDS_Marker"


proc newTopOpeBRepDS_Marker*(): TopOpeBRepDS_Marker {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Marker(@)", header: "TopOpeBRepDS_Marker.hxx".}
proc reset*(this: var TopOpeBRepDS_Marker) {.cdecl, importcpp: "Reset", header: "TopOpeBRepDS_Marker.hxx".}
proc set*(this: var TopOpeBRepDS_Marker; i: cint; b: bool) {.cdecl, importcpp: "Set",
    header: "TopOpeBRepDS_Marker.hxx".}
proc set*(this: var TopOpeBRepDS_Marker; b: bool; n: cint; a: pointer) {.cdecl,
    importcpp: "Set", header: "TopOpeBRepDS_Marker.hxx".}
proc getI*(this: TopOpeBRepDS_Marker; i: cint): bool {.noSideEffect, cdecl,
    importcpp: "GetI", header: "TopOpeBRepDS_Marker.hxx".}
proc allocate*(this: var TopOpeBRepDS_Marker; n: cint) {.cdecl, importcpp: "Allocate",
    header: "TopOpeBRepDS_Marker.hxx".}
