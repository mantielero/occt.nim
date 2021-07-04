##  Created on: 1992-08-21
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Draw/Draw_Color,
  ../Standard/Standard_Transient

discard "forward decl of Draw_Color"
discard "forward decl of HLRTest_ShapeData"
discard "forward decl of HLRTest_ShapeData"
type
  Handle_HLRTest_ShapeData* = handle[HLRTest_ShapeData]

## ! Contains the colors of a shape.

type
  HLRTest_ShapeData* {.importcpp: "HLRTest_ShapeData",
                      header: "HLRTest_ShapeData.hxx", bycopy.} = object of Standard_Transient


proc constructHLRTest_ShapeData*(CVis: Draw_Color; COVis: Draw_Color;
                                CIVis: Draw_Color; CHid: Draw_Color;
                                COHid: Draw_Color; CIHid: Draw_Color): HLRTest_ShapeData {.
    constructor, importcpp: "HLRTest_ShapeData(@)", header: "HLRTest_ShapeData.hxx".}
proc VisibleColor*(this: var HLRTest_ShapeData; CVis: Draw_Color) {.
    importcpp: "VisibleColor", header: "HLRTest_ShapeData.hxx".}
proc VisibleOutLineColor*(this: var HLRTest_ShapeData; COVis: Draw_Color) {.
    importcpp: "VisibleOutLineColor", header: "HLRTest_ShapeData.hxx".}
proc VisibleIsoColor*(this: var HLRTest_ShapeData; CIVis: Draw_Color) {.
    importcpp: "VisibleIsoColor", header: "HLRTest_ShapeData.hxx".}
proc HiddenColor*(this: var HLRTest_ShapeData; CHid: Draw_Color) {.
    importcpp: "HiddenColor", header: "HLRTest_ShapeData.hxx".}
proc HiddenOutLineColor*(this: var HLRTest_ShapeData; COHid: Draw_Color) {.
    importcpp: "HiddenOutLineColor", header: "HLRTest_ShapeData.hxx".}
proc HiddenIsoColor*(this: var HLRTest_ShapeData; CIHid: Draw_Color) {.
    importcpp: "HiddenIsoColor", header: "HLRTest_ShapeData.hxx".}
proc VisibleColor*(this: HLRTest_ShapeData): Draw_Color {.noSideEffect,
    importcpp: "VisibleColor", header: "HLRTest_ShapeData.hxx".}
proc VisibleOutLineColor*(this: HLRTest_ShapeData): Draw_Color {.noSideEffect,
    importcpp: "VisibleOutLineColor", header: "HLRTest_ShapeData.hxx".}
proc VisibleIsoColor*(this: HLRTest_ShapeData): Draw_Color {.noSideEffect,
    importcpp: "VisibleIsoColor", header: "HLRTest_ShapeData.hxx".}
proc HiddenColor*(this: HLRTest_ShapeData): Draw_Color {.noSideEffect,
    importcpp: "HiddenColor", header: "HLRTest_ShapeData.hxx".}
proc HiddenOutLineColor*(this: HLRTest_ShapeData): Draw_Color {.noSideEffect,
    importcpp: "HiddenOutLineColor", header: "HLRTest_ShapeData.hxx".}
proc HiddenIsoColor*(this: HLRTest_ShapeData): Draw_Color {.noSideEffect,
    importcpp: "HiddenIsoColor", header: "HLRTest_ShapeData.hxx".}
type
  HLRTest_ShapeDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRTest_ShapeData::get_type_name(@)",
                              header: "HLRTest_ShapeData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRTest_ShapeData::get_type_descriptor(@)",
    header: "HLRTest_ShapeData.hxx".}
proc DynamicType*(this: HLRTest_ShapeData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRTest_ShapeData.hxx".}