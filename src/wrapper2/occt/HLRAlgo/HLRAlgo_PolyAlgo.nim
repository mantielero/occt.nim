##  Created on: 1992-02-18
##  Created by: Christophe MARION
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
  HLRAlgo_PolyData, ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfTransient, ../Standard/Standard_Real,
  HLRAlgo_ListIteratorOfListOfBPoint, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient,
  ../TColStd/TColStd_Array1OfTransient

discard "forward decl of HLRAlgo_EdgeStatus"
discard "forward decl of HLRAlgo_PolyAlgo"
discard "forward decl of HLRAlgo_PolyAlgo"
type
  Handle_HLRAlgo_PolyAlgo* = handle[HLRAlgo_PolyAlgo]

## ! to remove Hidden lines on Triangulations.

type
  HLRAlgo_PolyAlgo* {.importcpp: "HLRAlgo_PolyAlgo",
                     header: "HLRAlgo_PolyAlgo.hxx", bycopy.} = object of Standard_Transient


proc constructHLRAlgo_PolyAlgo*(): HLRAlgo_PolyAlgo {.constructor,
    importcpp: "HLRAlgo_PolyAlgo(@)", header: "HLRAlgo_PolyAlgo.hxx".}
proc Init*(this: var HLRAlgo_PolyAlgo; HShell: handle[TColStd_HArray1OfTransient]) {.
    importcpp: "Init", header: "HLRAlgo_PolyAlgo.hxx".}
proc PolyShell*(this: HLRAlgo_PolyAlgo): var TColStd_Array1OfTransient {.
    noSideEffect, importcpp: "PolyShell", header: "HLRAlgo_PolyAlgo.hxx".}
proc Clear*(this: var HLRAlgo_PolyAlgo) {.importcpp: "Clear",
                                      header: "HLRAlgo_PolyAlgo.hxx".}
proc Update*(this: var HLRAlgo_PolyAlgo) {.importcpp: "Update",
                                       header: "HLRAlgo_PolyAlgo.hxx".}
proc InitHide*(this: var HLRAlgo_PolyAlgo) {.importcpp: "InitHide",
    header: "HLRAlgo_PolyAlgo.hxx".}
proc MoreHide*(this: HLRAlgo_PolyAlgo): Standard_Boolean {.noSideEffect,
    importcpp: "MoreHide", header: "HLRAlgo_PolyAlgo.hxx".}
proc NextHide*(this: var HLRAlgo_PolyAlgo) {.importcpp: "NextHide",
    header: "HLRAlgo_PolyAlgo.hxx".}
proc Hide*(this: var HLRAlgo_PolyAlgo; status: var HLRAlgo_EdgeStatus;
          Index: var Standard_Integer; reg1: var Standard_Boolean;
          regn: var Standard_Boolean; outl: var Standard_Boolean;
          intl: var Standard_Boolean): var PointsT {.importcpp: "Hide",
    header: "HLRAlgo_PolyAlgo.hxx".}
proc InitShow*(this: var HLRAlgo_PolyAlgo) {.importcpp: "InitShow",
    header: "HLRAlgo_PolyAlgo.hxx".}
proc MoreShow*(this: HLRAlgo_PolyAlgo): Standard_Boolean {.noSideEffect,
    importcpp: "MoreShow", header: "HLRAlgo_PolyAlgo.hxx".}
proc NextShow*(this: var HLRAlgo_PolyAlgo) {.importcpp: "NextShow",
    header: "HLRAlgo_PolyAlgo.hxx".}
proc Show*(this: var HLRAlgo_PolyAlgo; Index: var Standard_Integer;
          reg1: var Standard_Boolean; regn: var Standard_Boolean;
          outl: var Standard_Boolean; intl: var Standard_Boolean): var PointsT {.
    importcpp: "Show", header: "HLRAlgo_PolyAlgo.hxx".}
type
  HLRAlgo_PolyAlgobase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRAlgo_PolyAlgo::get_type_name(@)",
                              header: "HLRAlgo_PolyAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRAlgo_PolyAlgo::get_type_descriptor(@)",
    header: "HLRAlgo_PolyAlgo.hxx".}
proc DynamicType*(this: HLRAlgo_PolyAlgo): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_PolyAlgo.hxx".}