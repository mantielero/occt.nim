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

discard "forward decl of HLRBRep_PolyAlgo"
discard "forward decl of Draw_Display"
discard "forward decl of HLRTest_DrawablePolyEdgeTool"
discard "forward decl of HLRTest_DrawablePolyEdgeTool"
type
  HandleHLRTestDrawablePolyEdgeTool* = Handle[HLRTestDrawablePolyEdgeTool]

## ! Used to display the results.

type
  HLRTestDrawablePolyEdgeTool* {.importcpp: "HLRTest_DrawablePolyEdgeTool",
                                header: "HLRTest_DrawablePolyEdgeTool.hxx", bycopy.} = object of DrawDrawable3D


proc constructHLRTestDrawablePolyEdgeTool*(alg: Handle[HLRBRepPolyAlgo];
    viewId: int; debug: bool = false): HLRTestDrawablePolyEdgeTool {.constructor,
    importcpp: "HLRTest_DrawablePolyEdgeTool(@)",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc show*(this: var HLRTestDrawablePolyEdgeTool) {.importcpp: "Show",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc hide*(this: var HLRTestDrawablePolyEdgeTool) {.importcpp: "Hide",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc displayRg1Line*(this: var HLRTestDrawablePolyEdgeTool; b: bool) {.
    importcpp: "DisplayRg1Line", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc displayRg1Line*(this: HLRTestDrawablePolyEdgeTool): bool {.noSideEffect,
    importcpp: "DisplayRg1Line", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc displayRgNLine*(this: var HLRTestDrawablePolyEdgeTool; b: bool) {.
    importcpp: "DisplayRgNLine", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc displayRgNLine*(this: HLRTestDrawablePolyEdgeTool): bool {.noSideEffect,
    importcpp: "DisplayRgNLine", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc displayHidden*(this: var HLRTestDrawablePolyEdgeTool; b: bool) {.
    importcpp: "DisplayHidden", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc displayHidden*(this: HLRTestDrawablePolyEdgeTool): bool {.noSideEffect,
    importcpp: "DisplayHidden", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc drawOn*(this: HLRTestDrawablePolyEdgeTool; d: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc debug*(this: HLRTestDrawablePolyEdgeTool): bool {.noSideEffect,
    importcpp: "Debug", header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc debug*(this: var HLRTestDrawablePolyEdgeTool; b: bool) {.importcpp: "Debug",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
type
  HLRTestDrawablePolyEdgeToolbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "HLRTest_DrawablePolyEdgeTool::get_type_name(@)",
                            header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRTest_DrawablePolyEdgeTool::get_type_descriptor(@)",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
proc dynamicType*(this: HLRTestDrawablePolyEdgeTool): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "HLRTest_DrawablePolyEdgeTool.hxx".}
