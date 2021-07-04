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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_SequenceOfTransient, ../TopTools/TopTools_SequenceOfShape,
  ../Standard/Standard_CString, ../IFSelect/IFSelect_ReturnStatus,
  ../TColStd/TColStd_HSequenceOfTransient, ../Standard/Standard_Integer,
  ../IFSelect/IFSelect_PrintCount, ../Message/Message_ProgressRange

discard "forward decl of XSControl_WorkSession"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of TopoDS_Shape"
type
  XSControl_Reader* {.importcpp: "XSControl_Reader",
                     header: "XSControl_Reader.hxx", bycopy.} = object ## ! Creates a Reader from scratch (creates an empty WorkSession)
                                                                  ## ! A WorkSession or a Controller must be provided before running
                                                                  ## ! Returns a sequence of produced shapes


proc constructXSControl_Reader*(): XSControl_Reader {.constructor,
    importcpp: "XSControl_Reader(@)", header: "XSControl_Reader.hxx".}
proc constructXSControl_Reader*(norm: Standard_CString): XSControl_Reader {.
    constructor, importcpp: "XSControl_Reader(@)", header: "XSControl_Reader.hxx".}
proc constructXSControl_Reader*(WS: handle[XSControl_WorkSession];
                               scratch: Standard_Boolean = Standard_True): XSControl_Reader {.
    constructor, importcpp: "XSControl_Reader(@)", header: "XSControl_Reader.hxx".}
proc destroyXSControl_Reader*(this: var XSControl_Reader) {.
    importcpp: "#.~XSControl_Reader()", header: "XSControl_Reader.hxx".}
proc SetNorm*(this: var XSControl_Reader; norm: Standard_CString): Standard_Boolean {.
    importcpp: "SetNorm", header: "XSControl_Reader.hxx".}
proc SetWS*(this: var XSControl_Reader; WS: handle[XSControl_WorkSession];
           scratch: Standard_Boolean = Standard_True) {.importcpp: "SetWS",
    header: "XSControl_Reader.hxx".}
proc WS*(this: XSControl_Reader): handle[XSControl_WorkSession] {.noSideEffect,
    importcpp: "WS", header: "XSControl_Reader.hxx".}
proc ReadFile*(this: var XSControl_Reader; filename: Standard_CString): IFSelect_ReturnStatus {.
    importcpp: "ReadFile", header: "XSControl_Reader.hxx".}
proc ReadStream*(this: var XSControl_Reader; theName: Standard_CString;
                theIStream: var istream): IFSelect_ReturnStatus {.
    importcpp: "ReadStream", header: "XSControl_Reader.hxx".}
proc Model*(this: XSControl_Reader): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "XSControl_Reader.hxx".}
proc GiveList*(this: var XSControl_Reader; first: Standard_CString = "";
              second: Standard_CString = ""): handle[TColStd_HSequenceOfTransient] {.
    importcpp: "GiveList", header: "XSControl_Reader.hxx".}
proc GiveList*(this: var XSControl_Reader; first: Standard_CString;
              ent: handle[Standard_Transient]): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "GiveList",
                                   header: "XSControl_Reader.hxx".}
proc NbRootsForTransfer*(this: var XSControl_Reader): Standard_Integer {.
    importcpp: "NbRootsForTransfer", header: "XSControl_Reader.hxx".}
proc RootForTransfer*(this: var XSControl_Reader; num: Standard_Integer = 1): handle[
    Standard_Transient] {.importcpp: "RootForTransfer",
                         header: "XSControl_Reader.hxx".}
proc TransferOneRoot*(this: var XSControl_Reader; num: Standard_Integer = 1; theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "TransferOneRoot", header: "XSControl_Reader.hxx".}
proc TransferOne*(this: var XSControl_Reader; num: Standard_Integer;
                 theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "TransferOne", header: "XSControl_Reader.hxx".}
proc TransferEntity*(this: var XSControl_Reader; start: handle[Standard_Transient];
    theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "TransferEntity", header: "XSControl_Reader.hxx".}
proc TransferList*(this: var XSControl_Reader;
                  list: handle[TColStd_HSequenceOfTransient];
                  theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Integer {.
    importcpp: "TransferList", header: "XSControl_Reader.hxx".}
proc TransferRoots*(this: var XSControl_Reader;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Integer {.
    importcpp: "TransferRoots", header: "XSControl_Reader.hxx".}
proc ClearShapes*(this: var XSControl_Reader) {.importcpp: "ClearShapes",
    header: "XSControl_Reader.hxx".}
proc NbShapes*(this: XSControl_Reader): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "XSControl_Reader.hxx".}
proc Shape*(this: XSControl_Reader; num: Standard_Integer = 1): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "XSControl_Reader.hxx".}
proc OneShape*(this: XSControl_Reader): TopoDS_Shape {.noSideEffect,
    importcpp: "OneShape", header: "XSControl_Reader.hxx".}
proc PrintCheckLoad*(this: XSControl_Reader; failsonly: Standard_Boolean;
                    mode: IFSelect_PrintCount) {.noSideEffect,
    importcpp: "PrintCheckLoad", header: "XSControl_Reader.hxx".}
proc PrintCheckLoad*(this: XSControl_Reader; theStream: var Standard_OStream;
                    failsonly: Standard_Boolean; mode: IFSelect_PrintCount) {.
    noSideEffect, importcpp: "PrintCheckLoad", header: "XSControl_Reader.hxx".}
proc PrintCheckTransfer*(this: XSControl_Reader; failsonly: Standard_Boolean;
                        mode: IFSelect_PrintCount) {.noSideEffect,
    importcpp: "PrintCheckTransfer", header: "XSControl_Reader.hxx".}
proc PrintCheckTransfer*(this: XSControl_Reader; theStream: var Standard_OStream;
                        failsonly: Standard_Boolean; mode: IFSelect_PrintCount) {.
    noSideEffect, importcpp: "PrintCheckTransfer", header: "XSControl_Reader.hxx".}
proc PrintStatsTransfer*(this: XSControl_Reader; what: Standard_Integer;
                        mode: Standard_Integer = 0) {.noSideEffect,
    importcpp: "PrintStatsTransfer", header: "XSControl_Reader.hxx".}
proc PrintStatsTransfer*(this: XSControl_Reader; theStream: var Standard_OStream;
                        what: Standard_Integer; mode: Standard_Integer = 0) {.
    noSideEffect, importcpp: "PrintStatsTransfer", header: "XSControl_Reader.hxx".}
proc GetStatsTransfer*(this: XSControl_Reader;
                      list: handle[TColStd_HSequenceOfTransient];
                      nbMapped: var Standard_Integer;
                      nbWithResult: var Standard_Integer;
                      nbWithFail: var Standard_Integer) {.noSideEffect,
    importcpp: "GetStatsTransfer", header: "XSControl_Reader.hxx".}