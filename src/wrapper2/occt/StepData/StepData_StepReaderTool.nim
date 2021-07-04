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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Interface/Interface_GeneralLib,
  ../Interface/Interface_ReaderLib, ../Interface/Interface_FileReaderTool,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of StepData_FileRecognizer"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of StepData_Protocol"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
type
  StepData_StepReaderTool* {.importcpp: "StepData_StepReaderTool",
                            header: "StepData_StepReaderTool.hxx", bycopy.} = object of Interface_FileReaderTool ##
                                                                                                          ## !
                                                                                                          ## creates
                                                                                                          ## StepReaderTool
                                                                                                          ## to
                                                                                                          ## work
                                                                                                          ## with
                                                                                                          ## a
                                                                                                          ## StepReaderData
                                                                                                          ## according
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## to
                                                                                                          ## a
                                                                                                          ## Step
                                                                                                          ## Protocol.
                                                                                                          ## Defines
                                                                                                          ## the
                                                                                                          ## ReaderLib
                                                                                                          ## at
                                                                                                          ## this
                                                                                                          ## time


proc constructStepData_StepReaderTool*(reader: handle[StepData_StepReaderData];
                                      protocol: handle[StepData_Protocol]): StepData_StepReaderTool {.
    constructor, importcpp: "StepData_StepReaderTool(@)",
    header: "StepData_StepReaderTool.hxx".}
proc Prepare*(this: var StepData_StepReaderTool;
             optimize: Standard_Boolean = Standard_True) {.importcpp: "Prepare",
    header: "StepData_StepReaderTool.hxx".}
proc Prepare*(this: var StepData_StepReaderTool;
             reco: handle[StepData_FileRecognizer];
             optimize: Standard_Boolean = Standard_True) {.importcpp: "Prepare",
    header: "StepData_StepReaderTool.hxx".}
proc Recognize*(this: var StepData_StepReaderTool; num: Standard_Integer;
               ach: var handle[Interface_Check];
               ent: var handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Recognize", header: "StepData_StepReaderTool.hxx".}
proc PrepareHeader*(this: var StepData_StepReaderTool;
                   reco: handle[StepData_FileRecognizer]) {.
    importcpp: "PrepareHeader", header: "StepData_StepReaderTool.hxx".}
proc BeginRead*(this: var StepData_StepReaderTool;
               amodel: handle[Interface_InterfaceModel]) {.importcpp: "BeginRead",
    header: "StepData_StepReaderTool.hxx".}
proc AnalyseRecord*(this: var StepData_StepReaderTool; num: Standard_Integer;
                   anent: handle[Standard_Transient];
                   acheck: var handle[Interface_Check]): Standard_Boolean {.
    importcpp: "AnalyseRecord", header: "StepData_StepReaderTool.hxx".}
proc EndRead*(this: var StepData_StepReaderTool;
             amodel: handle[Interface_InterfaceModel]) {.importcpp: "EndRead",
    header: "StepData_StepReaderTool.hxx".}