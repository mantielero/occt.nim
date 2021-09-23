##  Created on: 1996-01-30
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
  ../Standard/Standard_Handle, ../IGESData/IGESData_BasicEditor,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString, ../Standard/Standard_OStream,
  ../Message/Message_ProgressRange

discard "forward decl of Transfer_FinderProcess"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_IGESEntity"
type
  IGESControl_Writer* {.importcpp: "IGESControl_Writer",
                       header: "IGESControl_Writer.hxx", bycopy.} = object ## ! Creates a writer object with the
                                                                      ## ! default unit
                                                                      ## (millimeters) and write mode (Face).
                                                                      ## !
                                                                      ## IGESControl_Writer (const
                                                                      ## Standard_CString unit,
                                                                      ## ! const
                                                                      ## Standard_Integer modecr = 0);


proc constructIGESControl_Writer*(): IGESControl_Writer {.constructor,
    importcpp: "IGESControl_Writer(@)", header: "IGESControl_Writer.hxx".}
proc constructIGESControl_Writer*(unit: Standard_CString;
                                 modecr: Standard_Integer = 0): IGESControl_Writer {.
    constructor, importcpp: "IGESControl_Writer(@)",
    header: "IGESControl_Writer.hxx".}
proc constructIGESControl_Writer*(model: handle[IGESData_IGESModel];
                                 modecr: Standard_Integer = 0): IGESControl_Writer {.
    constructor, importcpp: "IGESControl_Writer(@)",
    header: "IGESControl_Writer.hxx".}
proc Model*(this: IGESControl_Writer): handle[IGESData_IGESModel] {.noSideEffect,
    importcpp: "Model", header: "IGESControl_Writer.hxx".}
proc TransferProcess*(this: IGESControl_Writer): handle[Transfer_FinderProcess] {.
    noSideEffect, importcpp: "TransferProcess", header: "IGESControl_Writer.hxx".}
proc SetTransferProcess*(this: var IGESControl_Writer;
                        TP: handle[Transfer_FinderProcess]) {.
    importcpp: "SetTransferProcess", header: "IGESControl_Writer.hxx".}
proc AddShape*(this: var IGESControl_Writer; sh: TopoDS_Shape;
              theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "AddShape", header: "IGESControl_Writer.hxx".}
proc AddGeom*(this: var IGESControl_Writer; geom: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "AddGeom", header: "IGESControl_Writer.hxx".}
proc AddEntity*(this: var IGESControl_Writer; ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "AddEntity", header: "IGESControl_Writer.hxx".}
proc ComputeModel*(this: var IGESControl_Writer) {.importcpp: "ComputeModel",
    header: "IGESControl_Writer.hxx".}
proc Write*(this: var IGESControl_Writer; S: var Standard_OStream;
           fnes: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "Write", header: "IGESControl_Writer.hxx".}
proc Write*(this: var IGESControl_Writer; file: Standard_CString;
           fnes: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "Write", header: "IGESControl_Writer.hxx".}