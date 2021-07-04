##  Created on: 1993-09-06
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_ReadWriteModule, ../Standard/Standard_Integer

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESDimen_ReadWriteModule"
discard "forward decl of IGESDimen_ReadWriteModule"
type
  Handle_IGESDimen_ReadWriteModule* = handle[IGESDimen_ReadWriteModule]

## ! Defines Dimen File Access Module for IGESDimen (specific parts)
## ! Specific actions concern : Read and Write Own Parameters of
## ! an IGESEntity

type
  IGESDimen_ReadWriteModule* {.importcpp: "IGESDimen_ReadWriteModule",
                              header: "IGESDimen_ReadWriteModule.hxx", bycopy.} = object of IGESData_ReadWriteModule ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## a
                                                                                                              ## ReadWriteModule
                                                                                                              ## &
                                                                                                              ## puts
                                                                                                              ## it
                                                                                                              ## into
                                                                                                              ## ReaderLib
                                                                                                              ## &
                                                                                                              ## WriterLib


proc constructIGESDimen_ReadWriteModule*(): IGESDimen_ReadWriteModule {.
    constructor, importcpp: "IGESDimen_ReadWriteModule(@)",
    header: "IGESDimen_ReadWriteModule.hxx".}
proc CaseIGES*(this: IGESDimen_ReadWriteModule; typenum: Standard_Integer;
              formnum: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "CaseIGES", header: "IGESDimen_ReadWriteModule.hxx".}
proc ReadOwnParams*(this: IGESDimen_ReadWriteModule; CN: Standard_Integer;
                   ent: handle[IGESData_IGESEntity];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESDimen_ReadWriteModule.hxx".}
proc WriteOwnParams*(this: IGESDimen_ReadWriteModule; CN: Standard_Integer;
                    ent: handle[IGESData_IGESEntity]; IW: var IGESData_IGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDimen_ReadWriteModule.hxx".}
type
  IGESDimen_ReadWriteModulebase_type* = IGESData_ReadWriteModule

proc get_type_name*(): cstring {.importcpp: "IGESDimen_ReadWriteModule::get_type_name(@)",
                              header: "IGESDimen_ReadWriteModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_ReadWriteModule::get_type_descriptor(@)",
    header: "IGESDimen_ReadWriteModule.hxx".}
proc DynamicType*(this: IGESDimen_ReadWriteModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_ReadWriteModule.hxx".}