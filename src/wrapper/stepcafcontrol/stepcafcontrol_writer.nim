import stepcafcontrol_types
import ../standard/standard_types
import ../stepcontrol/stepcontrol_types
import ../ifselect/ifselect_types
import ../message/message_types
import ../tcollection/tcollection_types
import ../ncollection/ncollection_types
import ../tdf/tdf_types
import ../tdocstd/tdocstd_types
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

proc newSTEPCAFControl_Writer*(): STEPCAFControl_Writer {.cdecl, constructor,
    importcpp: "STEPCAFControl_Writer(@)", header: "STEPCAFControl_Writer.hxx".}
proc newSTEPCAFControl_Writer*(WS: Handle[XSControl_WorkSession];
                              scratch: bool = true): STEPCAFControl_Writer {.cdecl,
    constructor, importcpp: "STEPCAFControl_Writer(@)",
    header: "STEPCAFControl_Writer.hxx".}
proc Init*(this: var STEPCAFControl_Writer; WS: Handle[XSControl_WorkSession];
          scratch: bool = true) {.cdecl, importcpp: "Init",
                              header: "STEPCAFControl_Writer.hxx".}
proc Write*(this: var STEPCAFControl_Writer; filename: cstring): IFSelect_ReturnStatus {.
    cdecl, importcpp: "Write", header: "STEPCAFControl_Writer.hxx".}
proc Transfer*(this: var STEPCAFControl_Writer; doc: Handle[TDocStd_Document];
              mode: STEPControl_StepModelType = STEPControl_AsIs;
              multi: cstring = "0";
              theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc Transfer*(this: var STEPCAFControl_Writer; L: TDF_Label;
              mode: STEPControl_StepModelType = STEPControl_AsIs;
              multi: cstring = "0";
              theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc Transfer*(this: var STEPCAFControl_Writer; L: TDF_LabelSequence;
              mode: STEPControl_StepModelType = STEPControl_AsIs;
              multi: cstring = "0";
              theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc Perform*(this: var STEPCAFControl_Writer; doc: Handle[TDocStd_Document];
             filename: TCollection_AsciiString;
             theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Perform", header: "STEPCAFControl_Writer.hxx".}
proc Perform*(this: var STEPCAFControl_Writer; doc: Handle[TDocStd_Document];
             filename: cstring;
             theProgress: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Perform", header: "STEPCAFControl_Writer.hxx".}
# proc ExternFiles*(this: STEPCAFControl_Writer): NCollection_DataMap[
#     TCollection_AsciiString, Handle[STEPCAFControl_ExternFile]] {.noSideEffect,
#     cdecl, importcpp: "ExternFiles", header: "STEPCAFControl_Writer.hxx".}
proc ExternFile*(this: STEPCAFControl_Writer; L: TDF_Label;
                ef: var Handle[STEPCAFControl_ExternFile]): bool {.noSideEffect,
    cdecl, importcpp: "ExternFile", header: "STEPCAFControl_Writer.hxx".}
proc ExternFile*(this: STEPCAFControl_Writer; name: cstring;
                ef: var Handle[STEPCAFControl_ExternFile]): bool {.noSideEffect,
    cdecl, importcpp: "ExternFile", header: "STEPCAFControl_Writer.hxx".}
proc ChangeWriter*(this: var STEPCAFControl_Writer): var STEPControl_Writer {.cdecl,
    importcpp: "ChangeWriter", header: "STEPCAFControl_Writer.hxx".}
proc Writer*(this: STEPCAFControl_Writer): STEPControl_Writer {.noSideEffect, cdecl,
    importcpp: "Writer", header: "STEPCAFControl_Writer.hxx".}
proc SetColorMode*(this: var STEPCAFControl_Writer; colormode: bool) {.cdecl,
    importcpp: "SetColorMode", header: "STEPCAFControl_Writer.hxx".}
proc GetColorMode*(this: STEPCAFControl_Writer): bool {.noSideEffect, cdecl,
    importcpp: "GetColorMode", header: "STEPCAFControl_Writer.hxx".}
proc SetNameMode*(this: var STEPCAFControl_Writer; namemode: bool) {.cdecl,
    importcpp: "SetNameMode", header: "STEPCAFControl_Writer.hxx".}
proc GetNameMode*(this: STEPCAFControl_Writer): bool {.noSideEffect, cdecl,
    importcpp: "GetNameMode", header: "STEPCAFControl_Writer.hxx".}
proc SetLayerMode*(this: var STEPCAFControl_Writer; layermode: bool) {.cdecl,
    importcpp: "SetLayerMode", header: "STEPCAFControl_Writer.hxx".}
proc GetLayerMode*(this: STEPCAFControl_Writer): bool {.noSideEffect, cdecl,
    importcpp: "GetLayerMode", header: "STEPCAFControl_Writer.hxx".}
proc SetPropsMode*(this: var STEPCAFControl_Writer; propsmode: bool) {.cdecl,
    importcpp: "SetPropsMode", header: "STEPCAFControl_Writer.hxx".}
proc GetPropsMode*(this: STEPCAFControl_Writer): bool {.noSideEffect, cdecl,
    importcpp: "GetPropsMode", header: "STEPCAFControl_Writer.hxx".}
proc SetSHUOMode*(this: var STEPCAFControl_Writer; shuomode: bool) {.cdecl,
    importcpp: "SetSHUOMode", header: "STEPCAFControl_Writer.hxx".}
proc GetSHUOMode*(this: STEPCAFControl_Writer): bool {.noSideEffect, cdecl,
    importcpp: "GetSHUOMode", header: "STEPCAFControl_Writer.hxx".}
proc SetDimTolMode*(this: var STEPCAFControl_Writer; dimtolmode: bool) {.cdecl,
    importcpp: "SetDimTolMode", header: "STEPCAFControl_Writer.hxx".}
proc GetDimTolMode*(this: STEPCAFControl_Writer): bool {.noSideEffect, cdecl,
    importcpp: "GetDimTolMode", header: "STEPCAFControl_Writer.hxx".}
proc SetMaterialMode*(this: var STEPCAFControl_Writer; matmode: bool) {.cdecl,
    importcpp: "SetMaterialMode", header: "STEPCAFControl_Writer.hxx".}
proc GetMaterialMode*(this: STEPCAFControl_Writer): bool {.noSideEffect, cdecl,
    importcpp: "GetMaterialMode", header: "STEPCAFControl_Writer.hxx".}