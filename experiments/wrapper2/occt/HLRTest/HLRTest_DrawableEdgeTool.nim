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
  ../Standard/Standard_Integer, ../Draw/Draw_Drawable3D

discard "forward decl of HLRBRep_Algo"
discard "forward decl of Draw_Display"
discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRBRep_EdgeData"
discard "forward decl of HLRTest_DrawableEdgeTool"
discard "forward decl of HLRTest_DrawableEdgeTool"
type
  Handle_HLRTest_DrawableEdgeTool* = handle[HLRTest_DrawableEdgeTool]

## ! Used to display the results.

type
  HLRTest_DrawableEdgeTool* {.importcpp: "HLRTest_DrawableEdgeTool",
                             header: "HLRTest_DrawableEdgeTool.hxx", bycopy.} = object of Draw_Drawable3D


proc constructHLRTest_DrawableEdgeTool*(Alg: handle[HLRBRep_Algo];
                                       Visible: Standard_Boolean;
                                       IsoLine: Standard_Boolean;
                                       Rg1Line: Standard_Boolean;
                                       RgNLine: Standard_Boolean;
                                       ViewId: Standard_Integer): HLRTest_DrawableEdgeTool {.
    constructor, importcpp: "HLRTest_DrawableEdgeTool(@)",
    header: "HLRTest_DrawableEdgeTool.hxx".}
proc DrawOn*(this: HLRTest_DrawableEdgeTool; D: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "HLRTest_DrawableEdgeTool.hxx".}
type
  HLRTest_DrawableEdgeToolbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "HLRTest_DrawableEdgeTool::get_type_name(@)",
                              header: "HLRTest_DrawableEdgeTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRTest_DrawableEdgeTool::get_type_descriptor(@)",
    header: "HLRTest_DrawableEdgeTool.hxx".}
proc DynamicType*(this: HLRTest_DrawableEdgeTool): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "HLRTest_DrawableEdgeTool.hxx".}