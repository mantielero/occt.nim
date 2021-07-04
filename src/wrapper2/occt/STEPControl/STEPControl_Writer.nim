##  Created on: 1996-07-08
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../IFSelect/IFSelect_ReturnStatus,
  STEPControl_StepModelType, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../Message/Message_ProgressRange

discard "forward decl of XSControl_WorkSession"
discard "forward decl of StepData_StepModel"
discard "forward decl of TopoDS_Shape"
type
  STEPControl_Writer* {.importcpp: "STEPControl_Writer",
                       header: "STEPControl_Writer.hxx", bycopy.} = object ## ! Creates a Writer from scratch


proc constructSTEPControl_Writer*(): STEPControl_Writer {.constructor,
    importcpp: "STEPControl_Writer(@)", header: "STEPControl_Writer.hxx".}
proc constructSTEPControl_Writer*(WS: handle[XSControl_WorkSession];
                                 scratch: Standard_Boolean = Standard_True): STEPControl_Writer {.
    constructor, importcpp: "STEPControl_Writer(@)",
    header: "STEPControl_Writer.hxx".}
proc SetTolerance*(this: var STEPControl_Writer; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "STEPControl_Writer.hxx".}
proc UnsetTolerance*(this: var STEPControl_Writer) {.importcpp: "UnsetTolerance",
    header: "STEPControl_Writer.hxx".}
proc SetWS*(this: var STEPControl_Writer; WS: handle[XSControl_WorkSession];
           scratch: Standard_Boolean = Standard_True) {.importcpp: "SetWS",
    header: "STEPControl_Writer.hxx".}
proc WS*(this: STEPControl_Writer): handle[XSControl_WorkSession] {.noSideEffect,
    importcpp: "WS", header: "STEPControl_Writer.hxx".}
proc Model*(this: var STEPControl_Writer; newone: Standard_Boolean = Standard_False): handle[
    StepData_StepModel] {.importcpp: "Model", header: "STEPControl_Writer.hxx".}
proc Transfer*(this: var STEPControl_Writer; sh: TopoDS_Shape;
              mode: STEPControl_StepModelType;
              compgraph: Standard_Boolean = Standard_True;
              theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    importcpp: "Transfer", header: "STEPControl_Writer.hxx".}
proc Write*(this: var STEPControl_Writer; filename: Standard_CString): IFSelect_ReturnStatus {.
    importcpp: "Write", header: "STEPControl_Writer.hxx".}
proc PrintStatsTransfer*(this: STEPControl_Writer; what: Standard_Integer;
                        mode: Standard_Integer = 0) {.noSideEffect,
    importcpp: "PrintStatsTransfer", header: "STEPControl_Writer.hxx".}