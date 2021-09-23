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
  ../Resource/Resource_FormatType, ../STEPControl/STEPControl_Reader,
  ../IFSelect/IFSelect_ReturnStatus, ../TDF/TDF_LabelSequence,
  ../TopTools/TopTools_MapOfShape, STEPCAFControl_DataMapOfShapePD,
  STEPCAFControl_DataMapOfPDExternFile, ../XCAFDoc/XCAFDoc_DataMapOfShapeLabel,
  ../TColStd/TColStd_HSequenceOfTransient,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DatumModifiersSequence,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DatumModifWithValue

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
  STEPCAFControl_Reader* {.importcpp: "STEPCAFControl_Reader",
                          header: "STEPCAFControl_Reader.hxx", bycopy.} = object ## !
                                                                            ## Creates a
                                                                            ## reader with an
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
                                                                            ## succeeded, and
                                                                            ## False in case of fail
                                                                            ## ! If
                                                                            ## asOne is
                                                                            ## True, in case of
                                                                            ## multiple
                                                                            ## results
                                                                            ## composes
                                                                            ## ! them into
                                                                            ## assembly.
                                                                            ## Fills
                                                                            ## sequence of
                                                                            ## produced
                                                                            ## labels
                                                                            ## !
                                                                            ## Internal
                                                                            ## method.
                                                                            ## Import all
                                                                            ## Datum
                                                                            ## attributes and set them to XCAF
                                                                            ## object. Set
                                                                            ## connection of
                                                                            ## Datum to
                                                                            ## GeomTolerance
                                                                            ## (theGDTL).


proc constructSTEPCAFControl_Reader*(): STEPCAFControl_Reader {.constructor,
    importcpp: "STEPCAFControl_Reader(@)", header: "STEPCAFControl_Reader.hxx".}
proc constructSTEPCAFControl_Reader*(WS: handle[XSControl_WorkSession];
                                    scratch: Standard_Boolean = Standard_True): STEPCAFControl_Reader {.
    constructor, importcpp: "STEPCAFControl_Reader(@)",
    header: "STEPCAFControl_Reader.hxx".}
proc destroySTEPCAFControl_Reader*(this: var STEPCAFControl_Reader) {.
    importcpp: "#.~STEPCAFControl_Reader()", header: "STEPCAFControl_Reader.hxx".}
proc Init*(this: var STEPCAFControl_Reader; WS: handle[XSControl_WorkSession];
          scratch: Standard_Boolean = Standard_True) {.importcpp: "Init",
    header: "STEPCAFControl_Reader.hxx".}
proc ReadFile*(this: var STEPCAFControl_Reader; filename: Standard_CString): IFSelect_ReturnStatus {.
    importcpp: "ReadFile", header: "STEPCAFControl_Reader.hxx".}
proc NbRootsForTransfer*(this: var STEPCAFControl_Reader): Standard_Integer {.
    importcpp: "NbRootsForTransfer", header: "STEPCAFControl_Reader.hxx".}
proc TransferOneRoot*(this: var STEPCAFControl_Reader; num: Standard_Integer;
                     doc: var handle[TDocStd_Document]; theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "TransferOneRoot", header: "STEPCAFControl_Reader.hxx".}
proc Transfer*(this: var STEPCAFControl_Reader; doc: var handle[TDocStd_Document];
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "STEPCAFControl_Reader.hxx".}
proc Perform*(this: var STEPCAFControl_Reader; filename: TCollection_AsciiString;
             doc: var handle[TDocStd_Document];
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "STEPCAFControl_Reader.hxx".}
proc Perform*(this: var STEPCAFControl_Reader; filename: Standard_CString;
             doc: var handle[TDocStd_Document];
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "STEPCAFControl_Reader.hxx".}
proc ExternFiles*(this: STEPCAFControl_Reader): NCollection_DataMap[
    TCollection_AsciiString, handle[STEPCAFControl_ExternFile]] {.noSideEffect,
    importcpp: "ExternFiles", header: "STEPCAFControl_Reader.hxx".}
proc ExternFile*(this: STEPCAFControl_Reader; name: Standard_CString;
                ef: var handle[STEPCAFControl_ExternFile]): Standard_Boolean {.
    noSideEffect, importcpp: "ExternFile", header: "STEPCAFControl_Reader.hxx".}
proc ChangeReader*(this: var STEPCAFControl_Reader): var STEPControl_Reader {.
    importcpp: "ChangeReader", header: "STEPCAFControl_Reader.hxx".}
proc Reader*(this: STEPCAFControl_Reader): STEPControl_Reader {.noSideEffect,
    importcpp: "Reader", header: "STEPCAFControl_Reader.hxx".}
proc FindInstance*(NAUO: handle[StepRepr_NextAssemblyUsageOccurrence];
                  STool: handle[XCAFDoc_ShapeTool]; Tool: STEPConstruct_Tool;
                  ShapeLabelMap: XCAFDoc_DataMapOfShapeLabel): TDF_Label {.
    importcpp: "STEPCAFControl_Reader::FindInstance(@)",
    header: "STEPCAFControl_Reader.hxx".}
proc SetColorMode*(this: var STEPCAFControl_Reader; colormode: Standard_Boolean) {.
    importcpp: "SetColorMode", header: "STEPCAFControl_Reader.hxx".}
proc GetColorMode*(this: STEPCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetColorMode", header: "STEPCAFControl_Reader.hxx".}
proc SetNameMode*(this: var STEPCAFControl_Reader; namemode: Standard_Boolean) {.
    importcpp: "SetNameMode", header: "STEPCAFControl_Reader.hxx".}
proc GetNameMode*(this: STEPCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetNameMode", header: "STEPCAFControl_Reader.hxx".}
proc SetLayerMode*(this: var STEPCAFControl_Reader; layermode: Standard_Boolean) {.
    importcpp: "SetLayerMode", header: "STEPCAFControl_Reader.hxx".}
proc GetLayerMode*(this: STEPCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetLayerMode", header: "STEPCAFControl_Reader.hxx".}
proc SetPropsMode*(this: var STEPCAFControl_Reader; propsmode: Standard_Boolean) {.
    importcpp: "SetPropsMode", header: "STEPCAFControl_Reader.hxx".}
proc GetPropsMode*(this: STEPCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetPropsMode", header: "STEPCAFControl_Reader.hxx".}
proc SetSHUOMode*(this: var STEPCAFControl_Reader; shuomode: Standard_Boolean) {.
    importcpp: "SetSHUOMode", header: "STEPCAFControl_Reader.hxx".}
proc GetSHUOMode*(this: STEPCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetSHUOMode", header: "STEPCAFControl_Reader.hxx".}
proc SetGDTMode*(this: var STEPCAFControl_Reader; gdtmode: Standard_Boolean) {.
    importcpp: "SetGDTMode", header: "STEPCAFControl_Reader.hxx".}
proc GetGDTMode*(this: STEPCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetGDTMode", header: "STEPCAFControl_Reader.hxx".}
proc SetMatMode*(this: var STEPCAFControl_Reader; matmode: Standard_Boolean) {.
    importcpp: "SetMatMode", header: "STEPCAFControl_Reader.hxx".}
proc GetMatMode*(this: STEPCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetMatMode", header: "STEPCAFControl_Reader.hxx".}
proc SetViewMode*(this: var STEPCAFControl_Reader; viewmode: Standard_Boolean) {.
    importcpp: "SetViewMode", header: "STEPCAFControl_Reader.hxx".}
proc GetViewMode*(this: STEPCAFControl_Reader): Standard_Boolean {.noSideEffect,
    importcpp: "GetViewMode", header: "STEPCAFControl_Reader.hxx".}