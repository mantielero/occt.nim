##  Created on: 1992-02-11
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of StepData_FileRecognizer"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of StepData_Protocol"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
type
  StepDataStepReaderTool* {.importcpp: "StepData_StepReaderTool",
                           header: "StepData_StepReaderTool.hxx", bycopy.} = object of InterfaceFileReaderTool


proc `new`*(this: var StepDataStepReaderTool; theSize: csize_t): pointer {.
    importcpp: "StepData_StepReaderTool::operator new",
    header: "StepData_StepReaderTool.hxx".}
proc `delete`*(this: var StepDataStepReaderTool; theAddress: pointer) {.
    importcpp: "StepData_StepReaderTool::operator delete",
    header: "StepData_StepReaderTool.hxx".}
proc `new[]`*(this: var StepDataStepReaderTool; theSize: csize_t): pointer {.
    importcpp: "StepData_StepReaderTool::operator new[]",
    header: "StepData_StepReaderTool.hxx".}
proc `delete[]`*(this: var StepDataStepReaderTool; theAddress: pointer) {.
    importcpp: "StepData_StepReaderTool::operator delete[]",
    header: "StepData_StepReaderTool.hxx".}
proc `new`*(this: var StepDataStepReaderTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepData_StepReaderTool::operator new",
    header: "StepData_StepReaderTool.hxx".}
proc `delete`*(this: var StepDataStepReaderTool; a2: pointer; a3: pointer) {.
    importcpp: "StepData_StepReaderTool::operator delete",
    header: "StepData_StepReaderTool.hxx".}
proc constructStepDataStepReaderTool*(reader: Handle[StepDataStepReaderData];
                                     protocol: Handle[StepDataProtocol]): StepDataStepReaderTool {.
    constructor, importcpp: "StepData_StepReaderTool(@)",
    header: "StepData_StepReaderTool.hxx".}
proc prepare*(this: var StepDataStepReaderTool; optimize: StandardBoolean = true) {.
    importcpp: "Prepare", header: "StepData_StepReaderTool.hxx".}
proc prepare*(this: var StepDataStepReaderTool;
             reco: Handle[StepDataFileRecognizer];
             optimize: StandardBoolean = true) {.importcpp: "Prepare",
    header: "StepData_StepReaderTool.hxx".}
proc recognize*(this: var StepDataStepReaderTool; num: int;
               ach: var Handle[InterfaceCheck]; ent: var Handle[StandardTransient]): StandardBoolean {.
    importcpp: "Recognize", header: "StepData_StepReaderTool.hxx".}
proc prepareHeader*(this: var StepDataStepReaderTool;
                   reco: Handle[StepDataFileRecognizer]) {.
    importcpp: "PrepareHeader", header: "StepData_StepReaderTool.hxx".}
proc beginRead*(this: var StepDataStepReaderTool;
               amodel: Handle[InterfaceInterfaceModel]) {.importcpp: "BeginRead",
    header: "StepData_StepReaderTool.hxx".}
proc analyseRecord*(this: var StepDataStepReaderTool; num: int;
                   anent: Handle[StandardTransient];
                   acheck: var Handle[InterfaceCheck]): StandardBoolean {.
    importcpp: "AnalyseRecord", header: "StepData_StepReaderTool.hxx".}
proc endRead*(this: var StepDataStepReaderTool;
             amodel: Handle[InterfaceInterfaceModel]) {.importcpp: "EndRead",
    header: "StepData_StepReaderTool.hxx".}