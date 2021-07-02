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
discard "forward decl of STEPControl_Reader"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of STEPConstruct_Tool"
discard "forward decl of StepDimTol_Datum"
type
  STEPCAFControlReader* {.importcpp: "STEPCAFControl_Reader",
                         header: "STEPCAFControl_Reader.hxx", bycopy.} = object ## !
                                                                           ## Creates a
                                                                           ## reader with an empty
                                                                           ## ! STEP model and sets
                                                                           ## ColorMode,
                                                                           ## LayerMode,
                                                                           ## NameMode and
                                                                           ## !
                                                                           ## PropsMode to
                                                                           ## Standard_True.
                                                                           ## !
                                                                           ## Translates STEP file
                                                                           ## already
                                                                           ## loaded into the
                                                                           ## reader
                                                                           ## ! into the
                                                                           ## document
                                                                           ## ! If
                                                                           ## num==0,
                                                                           ## translates all
                                                                           ## roots, else only root
                                                                           ## number num
                                                                           ## !
                                                                           ## Returns True if
                                                                           ## succeeded, and False in case of fail
                                                                           ## ! If asOne is True, in case of
                                                                           ## multiple
                                                                           ## results
                                                                           ## composes
                                                                           ## ! them into
                                                                           ## assembly. Fills
                                                                           ## sequence of
                                                                           ## produced
                                                                           ## labels
                                                                           ## !
                                                                           ## Internal
                                                                           ## method.
                                                                           ## Import all Datum
                                                                           ## attributes and set them to XCAF
                                                                           ## object. Set
                                                                           ## connection of Datum to
                                                                           ## GeomTolerance
                                                                           ## (theGDTL).


proc constructSTEPCAFControlReader*(): STEPCAFControlReader {.constructor,
    importcpp: "STEPCAFControl_Reader(@)", header: "STEPCAFControl_Reader.hxx".}
proc constructSTEPCAFControlReader*(ws: Handle[XSControlWorkSession];
                                   scratch: StandardBoolean = standardTrue): STEPCAFControlReader {.
    constructor, importcpp: "STEPCAFControl_Reader(@)",
    header: "STEPCAFControl_Reader.hxx".}
proc destroySTEPCAFControlReader*(this: var STEPCAFControlReader) {.
    importcpp: "#.~STEPCAFControl_Reader()", header: "STEPCAFControl_Reader.hxx".}
proc init*(this: var STEPCAFControlReader; ws: Handle[XSControlWorkSession];
          scratch: StandardBoolean = standardTrue) {.importcpp: "Init",
    header: "STEPCAFControl_Reader.hxx".}
proc readFile*(this: var STEPCAFControlReader; filename: StandardCString): IFSelectReturnStatus {.
    importcpp: "ReadFile", header: "STEPCAFControl_Reader.hxx".}
proc nbRootsForTransfer*(this: var STEPCAFControlReader): StandardInteger {.
    importcpp: "NbRootsForTransfer", header: "STEPCAFControl_Reader.hxx".}
proc transferOneRoot*(this: var STEPCAFControlReader; num: StandardInteger;
                     doc: var Handle[TDocStdDocument];
                     theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "TransferOneRoot", header: "STEPCAFControl_Reader.hxx".}
proc transfer*(this: var STEPCAFControlReader; doc: var Handle[TDocStdDocument];
              theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Transfer", header: "STEPCAFControl_Reader.hxx".}
proc perform*(this: var STEPCAFControlReader; filename: TCollectionAsciiString;
             doc: var Handle[TDocStdDocument];
             theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Perform", header: "STEPCAFControl_Reader.hxx".}
proc perform*(this: var STEPCAFControlReader; filename: StandardCString;
             doc: var Handle[TDocStdDocument];
             theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Perform", header: "STEPCAFControl_Reader.hxx".}
proc externFiles*(this: STEPCAFControlReader): NCollectionDataMap[
    TCollectionAsciiString, Handle[STEPCAFControlExternFile]] {.noSideEffect,
    importcpp: "ExternFiles", header: "STEPCAFControl_Reader.hxx".}
proc externFile*(this: STEPCAFControlReader; name: StandardCString;
                ef: var Handle[STEPCAFControlExternFile]): StandardBoolean {.
    noSideEffect, importcpp: "ExternFile", header: "STEPCAFControl_Reader.hxx".}
proc changeReader*(this: var STEPCAFControlReader): var STEPControlReader {.
    importcpp: "ChangeReader", header: "STEPCAFControl_Reader.hxx".}
proc reader*(this: STEPCAFControlReader): STEPControlReader {.noSideEffect,
    importcpp: "Reader", header: "STEPCAFControl_Reader.hxx".}
proc findInstance*(nauo: Handle[StepReprNextAssemblyUsageOccurrence];
                  sTool: Handle[XCAFDocShapeTool]; tool: STEPConstructTool;
                  shapeLabelMap: XCAFDocDataMapOfShapeLabel): TDF_Label {.
    importcpp: "STEPCAFControl_Reader::FindInstance(@)",
    header: "STEPCAFControl_Reader.hxx".}
proc setColorMode*(this: var STEPCAFControlReader; colormode: StandardBoolean) {.
    importcpp: "SetColorMode", header: "STEPCAFControl_Reader.hxx".}
proc getColorMode*(this: STEPCAFControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetColorMode", header: "STEPCAFControl_Reader.hxx".}
proc setNameMode*(this: var STEPCAFControlReader; namemode: StandardBoolean) {.
    importcpp: "SetNameMode", header: "STEPCAFControl_Reader.hxx".}
proc getNameMode*(this: STEPCAFControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetNameMode", header: "STEPCAFControl_Reader.hxx".}
proc setLayerMode*(this: var STEPCAFControlReader; layermode: StandardBoolean) {.
    importcpp: "SetLayerMode", header: "STEPCAFControl_Reader.hxx".}
proc getLayerMode*(this: STEPCAFControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetLayerMode", header: "STEPCAFControl_Reader.hxx".}
proc setPropsMode*(this: var STEPCAFControlReader; propsmode: StandardBoolean) {.
    importcpp: "SetPropsMode", header: "STEPCAFControl_Reader.hxx".}
proc getPropsMode*(this: STEPCAFControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetPropsMode", header: "STEPCAFControl_Reader.hxx".}
proc setSHUOMode*(this: var STEPCAFControlReader; shuomode: StandardBoolean) {.
    importcpp: "SetSHUOMode", header: "STEPCAFControl_Reader.hxx".}
proc getSHUOMode*(this: STEPCAFControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetSHUOMode", header: "STEPCAFControl_Reader.hxx".}
proc setGDTMode*(this: var STEPCAFControlReader; gdtmode: StandardBoolean) {.
    importcpp: "SetGDTMode", header: "STEPCAFControl_Reader.hxx".}
proc getGDTMode*(this: STEPCAFControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetGDTMode", header: "STEPCAFControl_Reader.hxx".}
proc setMatMode*(this: var STEPCAFControlReader; matmode: StandardBoolean) {.
    importcpp: "SetMatMode", header: "STEPCAFControl_Reader.hxx".}
proc getMatMode*(this: STEPCAFControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetMatMode", header: "STEPCAFControl_Reader.hxx".}
proc setViewMode*(this: var STEPCAFControlReader; viewmode: StandardBoolean) {.
    importcpp: "SetViewMode", header: "STEPCAFControl_Reader.hxx".}
proc getViewMode*(this: STEPCAFControlReader): StandardBoolean {.noSideEffect,
    importcpp: "GetViewMode", header: "STEPCAFControl_Reader.hxx".}

