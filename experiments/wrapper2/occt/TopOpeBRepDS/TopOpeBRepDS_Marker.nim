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
discard "forward decl of TopOpeBRepDS_Marker"
type
  HandleC1C1* = Handle[TopOpeBRepDS_Marker]
  TopOpeBRepDS_Marker* {.importcpp: "TopOpeBRepDS_Marker",
                        header: "TopOpeBRepDS_Marker.hxx", bycopy.} = object of StandardTransient


proc constructTopOpeBRepDS_Marker*(): TopOpeBRepDS_Marker {.constructor,
    importcpp: "TopOpeBRepDS_Marker(@)", header: "TopOpeBRepDS_Marker.hxx".}
proc reset*(this: var TopOpeBRepDS_Marker) {.importcpp: "Reset",
    header: "TopOpeBRepDS_Marker.hxx".}
proc set*(this: var TopOpeBRepDS_Marker; i: cint; b: bool) {.importcpp: "Set",
    header: "TopOpeBRepDS_Marker.hxx".}
proc set*(this: var TopOpeBRepDS_Marker; b: bool; n: cint; a: StandardAddress) {.
    importcpp: "Set", header: "TopOpeBRepDS_Marker.hxx".}
proc getI*(this: TopOpeBRepDS_Marker; i: cint): bool {.noSideEffect, importcpp: "GetI",
    header: "TopOpeBRepDS_Marker.hxx".}
proc allocate*(this: var TopOpeBRepDS_Marker; n: cint) {.importcpp: "Allocate",
    header: "TopOpeBRepDS_Marker.hxx".}
type
  TopOpeBRepDS_MarkerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepDS_Marker::get_type_name(@)",
                            header: "TopOpeBRepDS_Marker.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepDS_Marker::get_type_descriptor(@)",
    header: "TopOpeBRepDS_Marker.hxx".}
proc dynamicType*(this: TopOpeBRepDS_Marker): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRepDS_Marker.hxx".}

























