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

discard "forward decl of HLRBRep_Algo"
discard "forward decl of Draw_Display"
discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRBRep_EdgeData"
discard "forward decl of HLRTest_DrawableEdgeTool"
discard "forward decl of HLRTest_DrawableEdgeTool"
type
  HandleC1C1* = Handle[HLRTestDrawableEdgeTool]

## ! Used to display the results.

type
  HLRTestDrawableEdgeTool* {.importcpp: "HLRTest_DrawableEdgeTool",
                            header: "HLRTest_DrawableEdgeTool.hxx", bycopy.} = object of DrawDrawable3D


proc constructHLRTestDrawableEdgeTool*(alg: Handle[HLRBRepAlgo]; visible: bool;
                                      isoLine: bool; rg1Line: bool; rgNLine: bool;
                                      viewId: cint): HLRTestDrawableEdgeTool {.
    constructor, importcpp: "HLRTest_DrawableEdgeTool(@)",
    header: "HLRTest_DrawableEdgeTool.hxx".}
proc drawOn*(this: HLRTestDrawableEdgeTool; d: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "HLRTest_DrawableEdgeTool.hxx".}
type
  HLRTestDrawableEdgeToolbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "HLRTest_DrawableEdgeTool::get_type_name(@)",
                            header: "HLRTest_DrawableEdgeTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRTest_DrawableEdgeTool::get_type_descriptor(@)",
    header: "HLRTest_DrawableEdgeTool.hxx".}
proc dynamicType*(this: HLRTestDrawableEdgeTool): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "HLRTest_DrawableEdgeTool.hxx".}

























