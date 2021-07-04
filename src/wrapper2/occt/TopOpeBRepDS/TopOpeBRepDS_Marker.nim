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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfBoolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../Standard/Standard_Address

discard "forward decl of TopOpeBRepDS_Marker"
discard "forward decl of TopOpeBRepDS_Marker"
type
  Handle_TopOpeBRepDS_Marker* = handle[TopOpeBRepDS_Marker]
  TopOpeBRepDS_Marker* {.importcpp: "TopOpeBRepDS_Marker",
                        header: "TopOpeBRepDS_Marker.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepDS_Marker*(): TopOpeBRepDS_Marker {.constructor,
    importcpp: "TopOpeBRepDS_Marker(@)", header: "TopOpeBRepDS_Marker.hxx".}
proc Reset*(this: var TopOpeBRepDS_Marker) {.importcpp: "Reset",
    header: "TopOpeBRepDS_Marker.hxx".}
proc Set*(this: var TopOpeBRepDS_Marker; i: Standard_Integer; b: Standard_Boolean) {.
    importcpp: "Set", header: "TopOpeBRepDS_Marker.hxx".}
proc Set*(this: var TopOpeBRepDS_Marker; b: Standard_Boolean; n: Standard_Integer;
         a: Standard_Address) {.importcpp: "Set", header: "TopOpeBRepDS_Marker.hxx".}
proc GetI*(this: TopOpeBRepDS_Marker; i: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "GetI", header: "TopOpeBRepDS_Marker.hxx".}
proc Allocate*(this: var TopOpeBRepDS_Marker; n: Standard_Integer) {.
    importcpp: "Allocate", header: "TopOpeBRepDS_Marker.hxx".}
type
  TopOpeBRepDS_Markerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepDS_Marker::get_type_name(@)",
                              header: "TopOpeBRepDS_Marker.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepDS_Marker::get_type_descriptor(@)",
    header: "TopOpeBRepDS_Marker.hxx".}
proc DynamicType*(this: TopOpeBRepDS_Marker): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRepDS_Marker.hxx".}