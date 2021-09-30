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

discard "forward decl of Draw_Color"
discard "forward decl of HLRTest_ShapeData"
discard "forward decl of HLRTest_ShapeData"
type
  HandleC1C1* = Handle[HLRTestShapeData]

## ! Contains the colors of a shape.

type
  HLRTestShapeData* {.importcpp: "HLRTest_ShapeData",
                     header: "HLRTest_ShapeData.hxx", bycopy.} = object of StandardTransient


proc constructHLRTestShapeData*(cVis: DrawColor; cOVis: DrawColor; cIVis: DrawColor;
                               cHid: DrawColor; cOHid: DrawColor; cIHid: DrawColor): HLRTestShapeData {.
    constructor, importcpp: "HLRTest_ShapeData(@)", header: "HLRTest_ShapeData.hxx".}
proc visibleColor*(this: var HLRTestShapeData; cVis: DrawColor) {.
    importcpp: "VisibleColor", header: "HLRTest_ShapeData.hxx".}
proc visibleOutLineColor*(this: var HLRTestShapeData; cOVis: DrawColor) {.
    importcpp: "VisibleOutLineColor", header: "HLRTest_ShapeData.hxx".}
proc visibleIsoColor*(this: var HLRTestShapeData; cIVis: DrawColor) {.
    importcpp: "VisibleIsoColor", header: "HLRTest_ShapeData.hxx".}
proc hiddenColor*(this: var HLRTestShapeData; cHid: DrawColor) {.
    importcpp: "HiddenColor", header: "HLRTest_ShapeData.hxx".}
proc hiddenOutLineColor*(this: var HLRTestShapeData; cOHid: DrawColor) {.
    importcpp: "HiddenOutLineColor", header: "HLRTest_ShapeData.hxx".}
proc hiddenIsoColor*(this: var HLRTestShapeData; cIHid: DrawColor) {.
    importcpp: "HiddenIsoColor", header: "HLRTest_ShapeData.hxx".}
proc visibleColor*(this: HLRTestShapeData): DrawColor {.noSideEffect,
    importcpp: "VisibleColor", header: "HLRTest_ShapeData.hxx".}
proc visibleOutLineColor*(this: HLRTestShapeData): DrawColor {.noSideEffect,
    importcpp: "VisibleOutLineColor", header: "HLRTest_ShapeData.hxx".}
proc visibleIsoColor*(this: HLRTestShapeData): DrawColor {.noSideEffect,
    importcpp: "VisibleIsoColor", header: "HLRTest_ShapeData.hxx".}
proc hiddenColor*(this: HLRTestShapeData): DrawColor {.noSideEffect,
    importcpp: "HiddenColor", header: "HLRTest_ShapeData.hxx".}
proc hiddenOutLineColor*(this: HLRTestShapeData): DrawColor {.noSideEffect,
    importcpp: "HiddenOutLineColor", header: "HLRTest_ShapeData.hxx".}
proc hiddenIsoColor*(this: HLRTestShapeData): DrawColor {.noSideEffect,
    importcpp: "HiddenIsoColor", header: "HLRTest_ShapeData.hxx".}
type
  HLRTestShapeDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRTest_ShapeData::get_type_name(@)",
                            header: "HLRTest_ShapeData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRTest_ShapeData::get_type_descriptor(@)",
    header: "HLRTest_ShapeData.hxx".}
proc dynamicType*(this: HLRTestShapeData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRTest_ShapeData.hxx".}

























