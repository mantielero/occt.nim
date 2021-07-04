##  Created on: 1997-05-14
##  Created by: Christian CAILLET
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../IFSelect/IFSelect_ReturnStatus,
  ../Standard/Standard_Integer, ../Message/Message_ProgressRange

discard "forward decl of XSControl_WorkSession"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TopoDS_Shape"
type
  XSControl_Writer* {.importcpp: "XSControl_Writer",
                     header: "XSControl_Writer.hxx", bycopy.} = object ## ! Creates a Writer from scratch


proc constructXSControl_Writer*(): XSControl_Writer {.constructor,
    importcpp: "XSControl_Writer(@)", header: "XSControl_Writer.hxx".}
proc constructXSControl_Writer*(norm: Standard_CString): XSControl_Writer {.
    constructor, importcpp: "XSControl_Writer(@)", header: "XSControl_Writer.hxx".}
proc constructXSControl_Writer*(WS: handle[XSControl_WorkSession];
                               scratch: Standard_Boolean = Standard_True): XSControl_Writer {.
    constructor, importcpp: "XSControl_Writer(@)", header: "XSControl_Writer.hxx".}
proc SetNorm*(this: var XSControl_Writer; norm: Standard_CString): Standard_Boolean {.
    importcpp: "SetNorm", header: "XSControl_Writer.hxx".}
proc SetWS*(this: var XSControl_Writer; WS: handle[XSControl_WorkSession];
           scratch: Standard_Boolean = Standard_True) {.importcpp: "SetWS",
    header: "XSControl_Writer.hxx".}
proc WS*(this: XSControl_Writer): handle[XSControl_WorkSession] {.noSideEffect,
    importcpp: "WS", header: "XSControl_Writer.hxx".}
proc Model*(this: var XSControl_Writer; newone: Standard_Boolean = Standard_False): handle[
    Interface_InterfaceModel] {.importcpp: "Model", header: "XSControl_Writer.hxx".}
proc TransferShape*(this: var XSControl_Writer; sh: TopoDS_Shape;
                   mode: Standard_Integer = 0;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    importcpp: "TransferShape", header: "XSControl_Writer.hxx".}
proc WriteFile*(this: var XSControl_Writer; filename: Standard_CString): IFSelect_ReturnStatus {.
    importcpp: "WriteFile", header: "XSControl_Writer.hxx".}
proc PrintStatsTransfer*(this: XSControl_Writer; what: Standard_Integer;
                        mode: Standard_Integer = 0) {.noSideEffect,
    importcpp: "PrintStatsTransfer", header: "XSControl_Writer.hxx".}