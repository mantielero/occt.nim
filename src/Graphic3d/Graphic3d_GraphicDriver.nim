##  Created on: 1997-01-28
##  Created by: CAL
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Aspect_DisplayConnection"
discard "forward decl of Graphic3d_CView"
discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_Layer"
discard "forward decl of Graphic3d_TransformError"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_StructureManager"
discard "forward decl of Graphic3d_ViewManager"
discard "forward decl of Quantity_Color"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Graphic3d_GraphicDriver"
type
  HandleC1C1* = Handle[Graphic3dGraphicDriver]

## ! This class allows the definition of a graphic driver
## ! for 3d interface (currently only OpenGl driver is used).

type
  Graphic3dGraphicDriver* {.importcpp: "Graphic3d_GraphicDriver",
                           header: "Graphic3d_GraphicDriver.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Request
                                                                                                  ## limit
                                                                                                  ## of
                                                                                                  ## graphic
                                                                                                  ## resource
                                                                                                  ## of
                                                                                                  ## specific
                                                                                                  ## type.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## new
                                                                                                  ## empty
                                                                                                  ## graphic
                                                                                                  ## structure
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Initializes
                                                                                                  ## the
                                                                                                  ## Driver

  Graphic3dGraphicDriverbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_GraphicDriver::get_type_name(@)",
                            header: "Graphic3d_GraphicDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_GraphicDriver::get_type_descriptor(@)",
    header: "Graphic3d_GraphicDriver.hxx".}
proc dynamicType*(this: Graphic3dGraphicDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_GraphicDriver.hxx".}
proc inquireLimit*(this: Graphic3dGraphicDriver; theType: Graphic3dTypeOfLimit): cint {.
    noSideEffect, importcpp: "InquireLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc inquireLightLimit*(this: Graphic3dGraphicDriver): cint {.noSideEffect,
    importcpp: "InquireLightLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc inquirePlaneLimit*(this: Graphic3dGraphicDriver): cint {.noSideEffect,
    importcpp: "InquirePlaneLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc inquireViewLimit*(this: Graphic3dGraphicDriver): cint {.noSideEffect,
    importcpp: "InquireViewLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc createStructure*(this: var Graphic3dGraphicDriver;
                     theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.importcpp: "CreateStructure",
                          header: "Graphic3d_GraphicDriver.hxx".}
proc removeStructure*(this: var Graphic3dGraphicDriver;
                     theCStructure: var Handle[Graphic3dCStructure]) {.
    importcpp: "RemoveStructure", header: "Graphic3d_GraphicDriver.hxx".}
proc createView*(this: var Graphic3dGraphicDriver;
                theMgr: Handle[Graphic3dStructureManager]): Handle[Graphic3dCView] {.
    importcpp: "CreateView", header: "Graphic3d_GraphicDriver.hxx".}
proc removeView*(this: var Graphic3dGraphicDriver; theView: Handle[Graphic3dCView]) {.
    importcpp: "RemoveView", header: "Graphic3d_GraphicDriver.hxx".}
proc enableVBO*(this: var Graphic3dGraphicDriver; status: bool) {.
    importcpp: "EnableVBO", header: "Graphic3d_GraphicDriver.hxx".}
proc memoryInfo*(this: Graphic3dGraphicDriver; theFreeBytes: var StandardSize;
                theInfo: var TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "MemoryInfo", header: "Graphic3d_GraphicDriver.hxx".}
proc defaultTextHeight*(this: Graphic3dGraphicDriver): StandardShortReal {.
    noSideEffect, importcpp: "DefaultTextHeight",
    header: "Graphic3d_GraphicDriver.hxx".}
proc textSize*(this: Graphic3dGraphicDriver; theView: Handle[Graphic3dCView];
              theText: StandardCString; theHeight: StandardShortReal;
              theWidth: var StandardShortReal; theAscent: var StandardShortReal;
              theDescent: var StandardShortReal) {.noSideEffect,
    importcpp: "TextSize", header: "Graphic3d_GraphicDriver.hxx".}
proc insertLayerBefore*(this: var Graphic3dGraphicDriver;
                       theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.
    importcpp: "InsertLayerBefore", header: "Graphic3d_GraphicDriver.hxx".}
proc insertLayerAfter*(this: var Graphic3dGraphicDriver;
                      theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.
    importcpp: "InsertLayerAfter", header: "Graphic3d_GraphicDriver.hxx".}
proc removeZLayer*(this: var Graphic3dGraphicDriver; theLayerId: Graphic3dZLayerId) {.
    importcpp: "RemoveZLayer", header: "Graphic3d_GraphicDriver.hxx".}
proc zLayers*(this: Graphic3dGraphicDriver;
             theLayerSeq: var TColStdSequenceOfInteger) {.noSideEffect,
    importcpp: "ZLayers", header: "Graphic3d_GraphicDriver.hxx".}
proc setZLayerSettings*(this: var Graphic3dGraphicDriver;
                       theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "Graphic3d_GraphicDriver.hxx".}
proc zLayerSettings*(this: Graphic3dGraphicDriver; theLayerId: Graphic3dZLayerId): Graphic3dZLayerSettings {.
    noSideEffect, importcpp: "ZLayerSettings",
    header: "Graphic3d_GraphicDriver.hxx".}
proc viewExists*(this: var Graphic3dGraphicDriver; theWindow: Handle[AspectWindow];
                theView: var Handle[Graphic3dCView]): bool {.
    importcpp: "ViewExists", header: "Graphic3d_GraphicDriver.hxx".}
proc getDisplayConnection*(this: Graphic3dGraphicDriver): Handle[
    AspectDisplayConnection] {.noSideEffect, importcpp: "GetDisplayConnection",
                              header: "Graphic3d_GraphicDriver.hxx".}
proc newIdentification*(this: var Graphic3dGraphicDriver): cint {.
    importcpp: "NewIdentification", header: "Graphic3d_GraphicDriver.hxx".}
proc removeIdentification*(this: var Graphic3dGraphicDriver; theId: cint) {.
    importcpp: "RemoveIdentification", header: "Graphic3d_GraphicDriver.hxx".}
proc dumpJson*(this: Graphic3dGraphicDriver; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Graphic3d_GraphicDriver.hxx".}

























