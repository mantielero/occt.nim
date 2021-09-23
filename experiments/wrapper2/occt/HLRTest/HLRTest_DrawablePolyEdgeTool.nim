##  Created on: 1992-08-27
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../HLRBRep/HLRBRep_ListOfBPoint,
  ../Draw/Draw_Drawable3D

discard "forward decl of HLRBRep_PolyAlgo"
discard "forward decl of Draw_Display"
discard "forward decl of HLRTest_DrawablePolyEdgeTool"
discard "forward decl of HLRTest_DrawablePolyEdgeTool"
type
  Handle_HLRTest_DrawablePolyEdgeTool* = handle[HLRTest_DrawablePolyEdgeTool]

## ! Used to display the results.

type
  HLRTest_DrawablePolyEdgeTool* {.importcpp: "HLRTest_DrawablePolyEdgeTool",
                                 header: "HLRTest_DrawablePolyEdgeTool.hxx",
                                 bycopy.} = object of Draw_Drawable3D


proc constructHLRTest_DrawablePolyEdgeTool*(Alg: handle[HLRBRep_PolyAlgo];
    ViewId: Standard_Integer; Debug: Standard_Boolean = Standard_False): HLRTest_DrawablePolyEdgeTool {.
    constructor, importcpp: "HLRTest_DrawablePolyEdgeTool(@)",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc Show*(this: var HLRTest_DrawablePolyEdgeTool) {.importcpp: "Show",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc Hide*(this: var HLRTest_DrawablePolyEdgeTool) {.importcpp: "Hide",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc DisplayRg1Line*(this: var HLRTest_DrawablePolyEdgeTool; B: Standard_Boolean) {.
    importcpp: "DisplayRg1Line", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc DisplayRg1Line*(this: HLRTest_DrawablePolyEdgeTool): Standard_Boolean {.
    noSideEffect, importcpp: "DisplayRg1Line",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc DisplayRgNLine*(this: var HLRTest_DrawablePolyEdgeTool; B: Standard_Boolean) {.
    importcpp: "DisplayRgNLine", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc DisplayRgNLine*(this: HLRTest_DrawablePolyEdgeTool): Standard_Boolean {.
    noSideEffect, importcpp: "DisplayRgNLine",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc DisplayHidden*(this: var HLRTest_DrawablePolyEdgeTool; B: Standard_Boolean) {.
    importcpp: "DisplayHidden", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc DisplayHidden*(this: HLRTest_DrawablePolyEdgeTool): Standard_Boolean {.
    noSideEffect, importcpp: "DisplayHidden",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc DrawOn*(this: HLRTest_DrawablePolyEdgeTool; D: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc Debug*(this: HLRTest_DrawablePolyEdgeTool): Standard_Boolean {.noSideEffect,
    importcpp: "Debug", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc Debug*(this: var HLRTest_DrawablePolyEdgeTool; B: Standard_Boolean) {.
    importcpp: "Debug", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
type
  HLRTest_DrawablePolyEdgeToolbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "HLRTest_DrawablePolyEdgeTool::get_type_name(@)",
                              header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRTest_DrawablePolyEdgeTool::get_type_descriptor(@)",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc DynamicType*(this: HLRTest_DrawablePolyEdgeTool): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}