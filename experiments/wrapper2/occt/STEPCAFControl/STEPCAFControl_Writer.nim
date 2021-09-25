##  Created on: 2000-08-15
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TDocStd_Document"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of STEPCAFControl_ExternFile"
discard "forward decl of TopoDS_Shape"
type
  STEPCAFControlWriter* {.importcpp: "STEPCAFControl_Writer",
                         header: "STEPCAFControl_Writer.hxx", bycopy.} = object ## !
                                                                           ## Creates a
                                                                           ## writer with an empty
                                                                           ## ! STEP model and sets
                                                                           ## ColorMode,
                                                                           ## LayerMode,
                                                                           ## NameMode and
                                                                           ## !
                                                                           ## PropsMode to
                                                                           ## Standard_True.
                                                                           ## ! Mehod to
                                                                           ## writing
                                                                           ## sequence of root
                                                                           ## assemblies or part of the file
                                                                           ## specified by use by one label


proc constructSTEPCAFControlWriter*(): STEPCAFControlWriter {.constructor,
    importcpp: "STEPCAFControl_Writer(@)", header: "STEPCAFControl_Writer.hxx".}
proc constructSTEPCAFControlWriter*(ws: Handle[XSControlWorkSession];
                                   scratch: bool = true): STEPCAFControlWriter {.
    constructor, importcpp: "STEPCAFControl_Writer(@)",
    header: "STEPCAFControl_Writer.hxx".}
proc init*(this: var STEPCAFControlWriter; ws: Handle[XSControlWorkSession];
          scratch: bool = true) {.importcpp: "Init",
                              header: "STEPCAFControl_Writer.hxx".}
proc write*(this: var STEPCAFControlWriter; filename: StandardCString): IFSelectReturnStatus {.
    importcpp: "Write", header: "STEPCAFControl_Writer.hxx".}
proc transfer*(this: var STEPCAFControlWriter; doc: Handle[TDocStdDocument];
              mode: STEPControlStepModelType = sTEPControlAsIs;
              multi: StandardCString = 0;
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc transfer*(this: var STEPCAFControlWriter; L: TDF_Label;
              mode: STEPControlStepModelType = sTEPControlAsIs;
              multi: StandardCString = 0;
              theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc perform*(this: var STEPCAFControlWriter; doc: Handle[TDocStdDocument];
             filename: TCollectionAsciiString;
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "STEPCAFControl_Writer.hxx".}
proc perform*(this: var STEPCAFControlWriter; doc: Handle[TDocStdDocument];
             filename: StandardCString;
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "STEPCAFControl_Writer.hxx".}
proc externFiles*(this: STEPCAFControlWriter): NCollectionDataMap[
    TCollectionAsciiString, Handle[STEPCAFControlExternFile]] {.noSideEffect,
    importcpp: "ExternFiles", header: "STEPCAFControl_Writer.hxx".}
proc externFile*(this: STEPCAFControlWriter; L: TDF_Label;
                ef: var Handle[STEPCAFControlExternFile]): bool {.noSideEffect,
    importcpp: "ExternFile", header: "STEPCAFControl_Writer.hxx".}
proc externFile*(this: STEPCAFControlWriter; name: StandardCString;
                ef: var Handle[STEPCAFControlExternFile]): bool {.noSideEffect,
    importcpp: "ExternFile", header: "STEPCAFControl_Writer.hxx".}
proc changeWriter*(this: var STEPCAFControlWriter): var STEPControlWriter {.
    importcpp: "ChangeWriter", header: "STEPCAFControl_Writer.hxx".}
proc writer*(this: STEPCAFControlWriter): STEPControlWriter {.noSideEffect,
    importcpp: "Writer", header: "STEPCAFControl_Writer.hxx".}
proc setColorMode*(this: var STEPCAFControlWriter; colormode: bool) {.
    importcpp: "SetColorMode", header: "STEPCAFControl_Writer.hxx".}
proc getColorMode*(this: STEPCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetColorMode", header: "STEPCAFControl_Writer.hxx".}
proc setNameMode*(this: var STEPCAFControlWriter; namemode: bool) {.
    importcpp: "SetNameMode", header: "STEPCAFControl_Writer.hxx".}
proc getNameMode*(this: STEPCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetNameMode", header: "STEPCAFControl_Writer.hxx".}
proc setLayerMode*(this: var STEPCAFControlWriter; layermode: bool) {.
    importcpp: "SetLayerMode", header: "STEPCAFControl_Writer.hxx".}
proc getLayerMode*(this: STEPCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetLayerMode", header: "STEPCAFControl_Writer.hxx".}
proc setPropsMode*(this: var STEPCAFControlWriter; propsmode: bool) {.
    importcpp: "SetPropsMode", header: "STEPCAFControl_Writer.hxx".}
proc getPropsMode*(this: STEPCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetPropsMode", header: "STEPCAFControl_Writer.hxx".}
proc setSHUOMode*(this: var STEPCAFControlWriter; shuomode: bool) {.
    importcpp: "SetSHUOMode", header: "STEPCAFControl_Writer.hxx".}
proc getSHUOMode*(this: STEPCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetSHUOMode", header: "STEPCAFControl_Writer.hxx".}
proc setDimTolMode*(this: var STEPCAFControlWriter; dimtolmode: bool) {.
    importcpp: "SetDimTolMode", header: "STEPCAFControl_Writer.hxx".}
proc getDimTolMode*(this: STEPCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetDimTolMode", header: "STEPCAFControl_Writer.hxx".}
proc setMaterialMode*(this: var STEPCAFControlWriter; matmode: bool) {.
    importcpp: "SetMaterialMode", header: "STEPCAFControl_Writer.hxx".}
proc getMaterialMode*(this: STEPCAFControlWriter): bool {.noSideEffect,
    importcpp: "GetMaterialMode", header: "STEPCAFControl_Writer.hxx".}
