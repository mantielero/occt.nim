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

discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_StepModel"
discard "forward decl of StepData_UndefinedEntity"
discard "forward decl of StepData_SelectType"
discard "forward decl of StepData_Field"
discard "forward decl of StepData_SelectMember"
discard "forward decl of StepData_SelectInt"
discard "forward decl of StepData_SelectReal"
discard "forward decl of StepData_SelectNamed"
discard "forward decl of StepData_SelectArrReal"
discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_FieldList"
discard "forward decl of StepData_FieldList1"
discard "forward decl of StepData_FieldListN"
discard "forward decl of StepData_FieldListD"
discard "forward decl of StepData_EDescr"
discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_ECDescr"
discard "forward decl of StepData_Described"
discard "forward decl of StepData_Simple"
discard "forward decl of StepData_Plex"
discard "forward decl of StepData_FreeFormEntity"
discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_GeneralModule"
discard "forward decl of StepData_FileRecognizer"
discard "forward decl of StepData_FileProtocol"
discard "forward decl of StepData_HeaderTool"
discard "forward decl of StepData_EnumTool"
discard "forward decl of StepData_DescrProtocol"
discard "forward decl of StepData_DescrGeneral"
discard "forward decl of StepData_DescrReadWrite"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of StepData_StepReaderTool"
discard "forward decl of StepData_ReadWriteModule"
discard "forward decl of StepData_StepWriter"
discard "forward decl of StepData_StepDumper"
discard "forward decl of StepData_WriterLib"
discard "forward decl of StepData_DefaultGeneral"
discard "forward decl of StepData_GlobalNodeOfWriterLib"
discard "forward decl of StepData_NodeOfWriterLib"
type
  StepData* {.importcpp: "StepData", header: "StepData.hxx", bycopy.} = object ## ! Returns the recorded
                                                                       ## HeaderProtocol, which can be :
                                                                       ## ! - a Null Handle if no Header Protocol was yet defined
                                                                       ## ! - a simple Protocol if only one was defined
                                                                       ## ! - a
                                                                       ## FileProtocol if more than one Protocol was yet defined


proc headerProtocol*(): Handle[StepDataProtocol] {.
    importcpp: "StepData::HeaderProtocol(@)", header: "StepData.hxx".}
proc addHeaderProtocol*(headerproto: Handle[StepDataProtocol]) {.
    importcpp: "StepData::AddHeaderProtocol(@)", header: "StepData.hxx".}
proc init*() {.importcpp: "StepData::Init(@)", header: "StepData.hxx".}
proc protocol*(): Handle[StepDataProtocol] {.importcpp: "StepData::Protocol(@)",
    header: "StepData.hxx".}

























