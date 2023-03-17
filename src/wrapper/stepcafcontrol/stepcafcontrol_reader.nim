import stepcafcontrol_types
import ../standard/standard_types
import ../stepcontrol/stepcontrol_types
import ../ifselect/ifselect_types
import ../message/message_types
import ../tcollection/tcollection_types
import ../ncollection/ncollection_types
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

proc newSTEPCAFControl_Reader*(): STEPCAFControl_Reader {.cdecl, constructor,
    importcpp: "STEPCAFControl_Reader(@)", header: "STEPCAFControl_Reader.hxx".}
proc newSTEPCAFControl_Reader*(WS: Handle[XSControl_WorkSession];
                              scratch: bool = true): STEPCAFControl_Reader {.cdecl,
    constructor, importcpp: "STEPCAFControl_Reader(@)",
    header: "STEPCAFControl_Reader.hxx".}
proc destroySTEPCAFControl_Reader*(this: var STEPCAFControl_Reader) {.cdecl,
    importcpp: "#.~STEPCAFControl_Reader()", header: "STEPCAFControl_Reader.hxx".}
proc Init*(this: var STEPCAFControl_Reader; WS: Handle[XSControl_WorkSession];
          scratch: bool = true) {.cdecl, importcpp: "Init",
                              header: "STEPCAFControl_Reader.hxx".}
proc ReadFile*(this: var STEPCAFControl_Reader; filename: cstring): IFSelect_ReturnStatus {.
    cdecl, importcpp: "ReadFile", header: "STEPCAFControl_Reader.hxx".}
proc NbRootsForTransfer*(this: var STEPCAFControl_Reader): cint {.cdecl,
    importcpp: "NbRootsForTransfer", header: "STEPCAFControl_Reader.hxx".}
proc TransferOneRoot*(this: var STEPCAFControl_Reader; num: cint;
                     doc: var Handle[TDocStd_Document]; theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "TransferOneRoot", header: "STEPCAFControl_Reader.hxx".}
proc Transfer*(this: var STEPCAFControl_Reader; doc: var Handle[TDocStd_Document];
              theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Transfer", header: "STEPCAFControl_Reader.hxx".}
proc Perform*(this: var STEPCAFControl_Reader; filename: TCollection_AsciiString;
             doc: var Handle[TDocStd_Document];
             theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Perform", header: "STEPCAFControl_Reader.hxx".}
proc Perform*(this: var STEPCAFControl_Reader; filename: cstring;
             doc: var Handle[TDocStd_Document];
             theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Perform", header: "STEPCAFControl_Reader.hxx".}
# proc ExternFiles*(this: STEPCAFControl_Reader): NCollection_DataMap[
#     TCollection_AsciiString, Handle[STEPCAFControl_ExternFile]] {.noSideEffect,
#     cdecl, importcpp: "ExternFiles", header: "STEPCAFControl_Reader.hxx".}
proc ExternFile*(this: STEPCAFControl_Reader; name: cstring;
                ef: var Handle[STEPCAFControl_ExternFile]): bool {.noSideEffect,
    cdecl, importcpp: "ExternFile", header: "STEPCAFControl_Reader.hxx".}
proc ChangeReader*(this: var STEPCAFControl_Reader): var STEPControl_Reader {.cdecl,
    importcpp: "ChangeReader", header: "STEPCAFControl_Reader.hxx".}
proc Reader*(this: STEPCAFControl_Reader): STEPControl_Reader {.noSideEffect, cdecl,
    importcpp: "Reader", header: "STEPCAFControl_Reader.hxx".}
proc FindInstance*(NAUO: Handle[StepRepr_NextAssemblyUsageOccurrence];
                  STool: Handle[XCAFDoc_ShapeTool]; Tool: STEPConstruct_Tool;
                  ShapeLabelMap: XCAFDoc_DataMapOfShapeLabel): TDF_Label {.cdecl,
    importcpp: "STEPCAFControl_Reader::FindInstance(@)",
    header: "STEPCAFControl_Reader.hxx".}
proc SetColorMode*(this: var STEPCAFControl_Reader; colormode: bool) {.cdecl,
    importcpp: "SetColorMode", header: "STEPCAFControl_Reader.hxx".}
proc GetColorMode*(this: STEPCAFControl_Reader): bool {.noSideEffect, cdecl,
    importcpp: "GetColorMode", header: "STEPCAFControl_Reader.hxx".}
proc SetNameMode*(this: var STEPCAFControl_Reader; namemode: bool) {.cdecl,
    importcpp: "SetNameMode", header: "STEPCAFControl_Reader.hxx".}
proc GetNameMode*(this: STEPCAFControl_Reader): bool {.noSideEffect, cdecl,
    importcpp: "GetNameMode", header: "STEPCAFControl_Reader.hxx".}
proc SetLayerMode*(this: var STEPCAFControl_Reader; layermode: bool) {.cdecl,
    importcpp: "SetLayerMode", header: "STEPCAFControl_Reader.hxx".}
proc GetLayerMode*(this: STEPCAFControl_Reader): bool {.noSideEffect, cdecl,
    importcpp: "GetLayerMode", header: "STEPCAFControl_Reader.hxx".}
proc SetPropsMode*(this: var STEPCAFControl_Reader; propsmode: bool) {.cdecl,
    importcpp: "SetPropsMode", header: "STEPCAFControl_Reader.hxx".}
proc GetPropsMode*(this: STEPCAFControl_Reader): bool {.noSideEffect, cdecl,
    importcpp: "GetPropsMode", header: "STEPCAFControl_Reader.hxx".}
proc SetSHUOMode*(this: var STEPCAFControl_Reader; shuomode: bool) {.cdecl,
    importcpp: "SetSHUOMode", header: "STEPCAFControl_Reader.hxx".}
proc GetSHUOMode*(this: STEPCAFControl_Reader): bool {.noSideEffect, cdecl,
    importcpp: "GetSHUOMode", header: "STEPCAFControl_Reader.hxx".}
proc SetGDTMode*(this: var STEPCAFControl_Reader; gdtmode: bool) {.cdecl,
    importcpp: "SetGDTMode", header: "STEPCAFControl_Reader.hxx".}
proc GetGDTMode*(this: STEPCAFControl_Reader): bool {.noSideEffect, cdecl,
    importcpp: "GetGDTMode", header: "STEPCAFControl_Reader.hxx".}
proc SetMatMode*(this: var STEPCAFControl_Reader; matmode: bool) {.cdecl,
    importcpp: "SetMatMode", header: "STEPCAFControl_Reader.hxx".}
proc GetMatMode*(this: STEPCAFControl_Reader): bool {.noSideEffect, cdecl,
    importcpp: "GetMatMode", header: "STEPCAFControl_Reader.hxx".}
proc SetViewMode*(this: var STEPCAFControl_Reader; viewmode: bool) {.cdecl,
    importcpp: "SetViewMode", header: "STEPCAFControl_Reader.hxx".}
proc GetViewMode*(this: STEPCAFControl_Reader): bool {.noSideEffect, cdecl,
    importcpp: "GetViewMode", header: "STEPCAFControl_Reader.hxx".}
proc GetShapeLabelMap*(this: STEPCAFControl_Reader): XCAFDoc_DataMapOfShapeLabel {.
    noSideEffect, cdecl, importcpp: "GetShapeLabelMap",
    header: "STEPCAFControl_Reader.hxx".}