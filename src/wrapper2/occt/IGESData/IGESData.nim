##  Created on: 1992-04-06
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

discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_LineFontEntity"
discard "forward decl of IGESData_LevelListEntity"
discard "forward decl of IGESData_TransfEntity"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_LabelDisplayEntity"
discard "forward decl of IGESData_ColorEntity"
discard "forward decl of IGESData_NameEntity"
discard "forward decl of IGESData_SingleParentEntity"
discard "forward decl of IGESData_UndefinedEntity"
discard "forward decl of IGESData_FreeFormatEntity"
discard "forward decl of IGESData_GlobalSection"
discard "forward decl of IGESData_DefSwitch"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_IGESReaderTool"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_ParamCursor"
discard "forward decl of IGESData_DirPart"
discard "forward decl of IGESData_IGESType"
discard "forward decl of IGESData_FileRecognizer"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESData_IGESDumper"
discard "forward decl of IGESData_BasicEditor"
discard "forward decl of IGESData_ToolLocation"
discard "forward decl of IGESData_GeneralModule"
discard "forward decl of IGESData_DefaultGeneral"
discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_SpecificModule"
discard "forward decl of IGESData_DefaultSpecific"
discard "forward decl of IGESData_FileProtocol"
discard "forward decl of IGESData_WriterLib"
discard "forward decl of IGESData_SpecificLib"
discard "forward decl of IGESData_GlobalNodeOfWriterLib"
discard "forward decl of IGESData_NodeOfWriterLib"
discard "forward decl of IGESData_GlobalNodeOfSpecificLib"
discard "forward decl of IGESData_NodeOfSpecificLib"
type
  IGESData* {.importcpp: "IGESData", header: "IGESData.hxx", bycopy.} = object ## ! Prepares General dynamic data used for IGESData
                                                                       ## specifically :
                                                                       ## ! Protocol and Modules, which treat
                                                                       ## UndefinedEntity


proc init*() {.importcpp: "IGESData::Init(@)", header: "IGESData.hxx".}
proc protocol*(): Handle[IGESDataProtocol] {.importcpp: "IGESData::Protocol(@)",
    header: "IGESData.hxx".}

