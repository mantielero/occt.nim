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

import
  ../IFSelect/IFSelect_ReturnStatus,
  ../MoniTool/MoniTool_DataMapOfShapeTransient,
  ../NCollection/NCollection_Vector, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, STEPCAFControl_DataMapOfLabelShape,
  STEPCAFControl_DataMapOfLabelExternFile,
  ../STEPControl/STEPControl_StepModelType, ../STEPControl/STEPControl_Writer,
  ../StepAP242/StepAP242_GeometricItemSpecificUsage,
  ../StepDimTol/StepDimTol_Datum, ../StepDimTol/StepDimTol_GeometricTolerance,
  ../StepDimTol/StepDimTol_HArray1OfDatumSystemOrReference,
  ../StepRepr/StepRepr_ProductDefinitionShape,
  ../StepVisual/StepVisual_DraughtingModel,
  ../StepVisual/StepVisual_HArray1OfPresentationStyleAssignment,
  ../TDF/TDF_LabelSequence,
  ../XCAFDimTolObjects/XCAFDimTolObjects_GeomToleranceObject

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TDocStd_Document"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of STEPCAFControl_ExternFile"
discard "forward decl of TopoDS_Shape"
type
  STEPCAFControl_Writer* {.importcpp: "STEPCAFControl_Writer",
                          header: "STEPCAFControl_Writer.hxx", bycopy.} = object ## !
                                                                            ## Creates a
                                                                            ## writer with an
                                                                            ## empty
                                                                            ## ! STEP
                                                                            ## model and sets
                                                                            ## ColorMode,
                                                                            ## LayerMode,
                                                                            ## NameMode and
                                                                            ## !
                                                                            ## PropsMode to
                                                                            ## Standard_True.
                                                                            ## !
                                                                            ## Mehod to
                                                                            ## writing
                                                                            ## sequence of root
                                                                            ## assemblies or part of the file
                                                                            ## specified by use by one
                                                                            ## label


proc constructSTEPCAFControl_Writer*(): STEPCAFControl_Writer {.constructor,
    importcpp: "STEPCAFControl_Writer(@)", header: "STEPCAFControl_Writer.hxx".}
proc constructSTEPCAFControl_Writer*(WS: handle[XSControl_WorkSession];
                                    scratch: Standard_Boolean = Standard_True): STEPCAFControl_Writer {.
    constructor, importcpp: "STEPCAFControl_Writer(@)",
    header: "STEPCAFControl_Writer.hxx".}
proc Init*(this: var STEPCAFControl_Writer; WS: handle[XSControl_WorkSession];
          scratch: Standard_Boolean = Standard_True) {.importcpp: "Init",
    header: "STEPCAFControl_Writer.hxx".}
proc Write*(this: var STEPCAFControl_Writer; filename: Standard_CString): IFSelect_ReturnStatus {.
    importcpp: "Write", header: "STEPCAFControl_Writer.hxx".}
proc Transfer*(this: var STEPCAFControl_Writer; doc: handle[TDocStd_Document];
              mode: STEPControl_StepModelType = STEPControl_AsIs;
              multi: Standard_CString = 0;
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc Transfer*(this: var STEPCAFControl_Writer; L: TDF_Label;
              mode: STEPControl_StepModelType = STEPControl_AsIs;
              multi: Standard_CString = 0;
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc Perform*(this: var STEPCAFControl_Writer; doc: handle[TDocStd_Document];
             filename: TCollection_AsciiString;
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "STEPCAFControl_Writer.hxx".}
proc Perform*(this: var STEPCAFControl_Writer; doc: handle[TDocStd_Document];
             filename: Standard_CString;
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "STEPCAFControl_Writer.hxx".}
proc ExternFiles*(this: STEPCAFControl_Writer): NCollection_DataMap[
    TCollection_AsciiString, handle[STEPCAFControl_ExternFile]] {.noSideEffect,
    importcpp: "ExternFiles", header: "STEPCAFControl_Writer.hxx".}
proc ExternFile*(this: STEPCAFControl_Writer; L: TDF_Label;
                ef: var handle[STEPCAFControl_ExternFile]): Standard_Boolean {.
    noSideEffect, importcpp: "ExternFile", header: "STEPCAFControl_Writer.hxx".}
proc ExternFile*(this: STEPCAFControl_Writer; name: Standard_CString;
                ef: var handle[STEPCAFControl_ExternFile]): Standard_Boolean {.
    noSideEffect, importcpp: "ExternFile", header: "STEPCAFControl_Writer.hxx".}
proc ChangeWriter*(this: var STEPCAFControl_Writer): var STEPControl_Writer {.
    importcpp: "ChangeWriter", header: "STEPCAFControl_Writer.hxx".}
proc Writer*(this: STEPCAFControl_Writer): STEPControl_Writer {.noSideEffect,
    importcpp: "Writer", header: "STEPCAFControl_Writer.hxx".}
proc SetColorMode*(this: var STEPCAFControl_Writer; colormode: Standard_Boolean) {.
    importcpp: "SetColorMode", header: "STEPCAFControl_Writer.hxx".}
proc GetColorMode*(this: STEPCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetColorMode", header: "STEPCAFControl_Writer.hxx".}
proc SetNameMode*(this: var STEPCAFControl_Writer; namemode: Standard_Boolean) {.
    importcpp: "SetNameMode", header: "STEPCAFControl_Writer.hxx".}
proc GetNameMode*(this: STEPCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetNameMode", header: "STEPCAFControl_Writer.hxx".}
proc SetLayerMode*(this: var STEPCAFControl_Writer; layermode: Standard_Boolean) {.
    importcpp: "SetLayerMode", header: "STEPCAFControl_Writer.hxx".}
proc GetLayerMode*(this: STEPCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetLayerMode", header: "STEPCAFControl_Writer.hxx".}
proc SetPropsMode*(this: var STEPCAFControl_Writer; propsmode: Standard_Boolean) {.
    importcpp: "SetPropsMode", header: "STEPCAFControl_Writer.hxx".}
proc GetPropsMode*(this: STEPCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetPropsMode", header: "STEPCAFControl_Writer.hxx".}
proc SetSHUOMode*(this: var STEPCAFControl_Writer; shuomode: Standard_Boolean) {.
    importcpp: "SetSHUOMode", header: "STEPCAFControl_Writer.hxx".}
proc GetSHUOMode*(this: STEPCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetSHUOMode", header: "STEPCAFControl_Writer.hxx".}
proc SetDimTolMode*(this: var STEPCAFControl_Writer; dimtolmode: Standard_Boolean) {.
    importcpp: "SetDimTolMode", header: "STEPCAFControl_Writer.hxx".}
proc GetDimTolMode*(this: STEPCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetDimTolMode", header: "STEPCAFControl_Writer.hxx".}
proc SetMaterialMode*(this: var STEPCAFControl_Writer; matmode: Standard_Boolean) {.
    importcpp: "SetMaterialMode", header: "STEPCAFControl_Writer.hxx".}
proc GetMaterialMode*(this: STEPCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetMaterialMode", header: "STEPCAFControl_Writer.hxx".}