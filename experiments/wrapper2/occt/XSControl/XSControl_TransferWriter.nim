##  Created on: 1996-03-13
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../IFSelect/IFSelect_ReturnStatus, ../Transfer/Transfer_FinderProcess

discard "forward decl of XSControl_Controller"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of XSControl_TransferWriter"
discard "forward decl of XSControl_TransferWriter"
type
  Handle_XSControl_TransferWriter* = handle[XSControl_TransferWriter]

## ! TransferWriter gives help to control transfer to write a file
## ! after having converted data from Cascade/Imagine
## !
## ! It works with a Controller (which itself can work with an
## ! Actor to Write) and a FinderProcess. It records results and
## ! checks

type
  XSControl_TransferWriter* {.importcpp: "XSControl_TransferWriter",
                             header: "XSControl_TransferWriter.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## TransferWriter,
                                                                                                      ## empty,
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## run
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## with
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## FinderProcess
                                                                                                      ## (but
                                                                                                      ## no
                                                                                                      ## controller,
                                                                                                      ## etc)


proc constructXSControl_TransferWriter*(): XSControl_TransferWriter {.constructor,
    importcpp: "XSControl_TransferWriter(@)",
    header: "XSControl_TransferWriter.hxx".}
proc FinderProcess*(this: XSControl_TransferWriter): handle[Transfer_FinderProcess] {.
    noSideEffect, importcpp: "FinderProcess",
    header: "XSControl_TransferWriter.hxx".}
proc SetFinderProcess*(this: var XSControl_TransferWriter;
                      theFP: handle[Transfer_FinderProcess]) {.
    importcpp: "SetFinderProcess", header: "XSControl_TransferWriter.hxx".}
proc Controller*(this: XSControl_TransferWriter): handle[XSControl_Controller] {.
    noSideEffect, importcpp: "Controller", header: "XSControl_TransferWriter.hxx".}
proc SetController*(this: var XSControl_TransferWriter;
                   theCtl: handle[XSControl_Controller]) {.
    importcpp: "SetController", header: "XSControl_TransferWriter.hxx".}
proc Clear*(this: var XSControl_TransferWriter; theMode: Standard_Integer) {.
    importcpp: "Clear", header: "XSControl_TransferWriter.hxx".}
proc TransferMode*(this: XSControl_TransferWriter): Standard_Integer {.noSideEffect,
    importcpp: "TransferMode", header: "XSControl_TransferWriter.hxx".}
proc SetTransferMode*(this: var XSControl_TransferWriter; theMode: Standard_Integer) {.
    importcpp: "SetTransferMode", header: "XSControl_TransferWriter.hxx".}
proc PrintStats*(this: XSControl_TransferWriter; theWhat: Standard_Integer;
                theMode: Standard_Integer = 0) {.noSideEffect,
    importcpp: "PrintStats", header: "XSControl_TransferWriter.hxx".}
proc RecognizeTransient*(this: var XSControl_TransferWriter;
                        theObj: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "RecognizeTransient", header: "XSControl_TransferWriter.hxx".}
proc TransferWriteTransient*(this: var XSControl_TransferWriter;
                            theModel: handle[Interface_InterfaceModel];
                            theObj: handle[Standard_Transient]; theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    importcpp: "TransferWriteTransient", header: "XSControl_TransferWriter.hxx".}
proc RecognizeShape*(this: var XSControl_TransferWriter; theShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "RecognizeShape", header: "XSControl_TransferWriter.hxx".}
proc TransferWriteShape*(this: var XSControl_TransferWriter;
                        theModel: handle[Interface_InterfaceModel];
                        theShape: TopoDS_Shape; theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    importcpp: "TransferWriteShape", header: "XSControl_TransferWriter.hxx".}
proc CheckList*(this: XSControl_TransferWriter): Interface_CheckIterator {.
    noSideEffect, importcpp: "CheckList", header: "XSControl_TransferWriter.hxx".}
proc ResultCheckList*(this: XSControl_TransferWriter;
                     theModel: handle[Interface_InterfaceModel]): Interface_CheckIterator {.
    noSideEffect, importcpp: "ResultCheckList",
    header: "XSControl_TransferWriter.hxx".}
type
  XSControl_TransferWriterbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XSControl_TransferWriter::get_type_name(@)",
                              header: "XSControl_TransferWriter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSControl_TransferWriter::get_type_descriptor(@)",
    header: "XSControl_TransferWriter.hxx".}
proc DynamicType*(this: XSControl_TransferWriter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XSControl_TransferWriter.hxx".}