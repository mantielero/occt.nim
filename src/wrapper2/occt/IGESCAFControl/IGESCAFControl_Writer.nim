##  Created on: 2000-08-17
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../IGESControl/IGESControl_Writer, ../Standard/Standard_CString,
  ../TDF/TDF_LabelSequence, ../XCAFPrs/XCAFPrs_IndexedDataMapOfShapeStyle,
  ../XCAFPrs/XCAFPrs_DataMapOfStyleTransient, ../TopTools/TopTools_MapOfShape

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TDocStd_Document"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopoDS_Shape"
discard "forward decl of XCAFPrs_Style"
type
  IGESCAFControl_Writer* {.importcpp: "IGESCAFControl_Writer",
                          header: "IGESCAFControl_Writer.hxx", bycopy.} = object of IGESControl_Writer ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## writer
                                                                                                ## with
                                                                                                ## an
                                                                                                ## empty
                                                                                                ##
                                                                                                ## !
                                                                                                ## IGES
                                                                                                ## model
                                                                                                ## and
                                                                                                ## sets
                                                                                                ## ColorMode,
                                                                                                ## LayerMode
                                                                                                ## and
                                                                                                ## NameMode
                                                                                                ## to
                                                                                                ## Standard_True.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Reads
                                                                                                ## colors
                                                                                                ## from
                                                                                                ## DECAF
                                                                                                ## document
                                                                                                ## and
                                                                                                ## assigns
                                                                                                ## them
                                                                                                ##
                                                                                                ## !
                                                                                                ## to
                                                                                                ## corresponding
                                                                                                ## IGES
                                                                                                ## entities
                                                                                                ##
                                                                                                ## !
                                                                                                ## Recursively
                                                                                                ## iterates
                                                                                                ## on
                                                                                                ## subshapes
                                                                                                ## and
                                                                                                ## assigns
                                                                                                ## colors
                                                                                                ##
                                                                                                ## !
                                                                                                ## to
                                                                                                ## faces
                                                                                                ## and
                                                                                                ## edges
                                                                                                ## (if
                                                                                                ## set)


proc constructIGESCAFControl_Writer*(): IGESCAFControl_Writer {.constructor,
    importcpp: "IGESCAFControl_Writer(@)", header: "IGESCAFControl_Writer.hxx".}
proc constructIGESCAFControl_Writer*(WS: handle[XSControl_WorkSession];
                                    scratch: Standard_Boolean = Standard_True): IGESCAFControl_Writer {.
    constructor, importcpp: "IGESCAFControl_Writer(@)",
    header: "IGESCAFControl_Writer.hxx".}
proc Transfer*(this: var IGESCAFControl_Writer; doc: handle[TDocStd_Document];
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "IGESCAFControl_Writer.hxx".}
proc Transfer*(this: var IGESCAFControl_Writer; labels: TDF_LabelSequence;
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "IGESCAFControl_Writer.hxx".}
proc Transfer*(this: var IGESCAFControl_Writer; label: TDF_Label;
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Transfer", header: "IGESCAFControl_Writer.hxx".}
proc Perform*(this: var IGESCAFControl_Writer; doc: handle[TDocStd_Document];
             filename: TCollection_AsciiString;
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "IGESCAFControl_Writer.hxx".}
proc Perform*(this: var IGESCAFControl_Writer; doc: handle[TDocStd_Document];
             filename: Standard_CString;
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "IGESCAFControl_Writer.hxx".}
proc SetColorMode*(this: var IGESCAFControl_Writer; colormode: Standard_Boolean) {.
    importcpp: "SetColorMode", header: "IGESCAFControl_Writer.hxx".}
proc GetColorMode*(this: IGESCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetColorMode", header: "IGESCAFControl_Writer.hxx".}
proc SetNameMode*(this: var IGESCAFControl_Writer; namemode: Standard_Boolean) {.
    importcpp: "SetNameMode", header: "IGESCAFControl_Writer.hxx".}
proc GetNameMode*(this: IGESCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetNameMode", header: "IGESCAFControl_Writer.hxx".}
proc SetLayerMode*(this: var IGESCAFControl_Writer; layermode: Standard_Boolean) {.
    importcpp: "SetLayerMode", header: "IGESCAFControl_Writer.hxx".}
proc GetLayerMode*(this: IGESCAFControl_Writer): Standard_Boolean {.noSideEffect,
    importcpp: "GetLayerMode", header: "IGESCAFControl_Writer.hxx".}