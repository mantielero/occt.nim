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

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESDimen_ReadWriteModule"
discard "forward decl of IGESDimen_ReadWriteModule"
type
  HandleIGESDimenReadWriteModule* = Handle[IGESDimenReadWriteModule]

## ! Defines Dimen File Access Module for IGESDimen (specific parts)
## ! Specific actions concern : Read and Write Own Parameters of
## ! an IGESEntity

type
  IGESDimenReadWriteModule* {.importcpp: "IGESDimen_ReadWriteModule",
                             header: "IGESDimen_ReadWriteModule.hxx", bycopy.} = object of IGESDataReadWriteModule ##
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


proc constructIGESDimenReadWriteModule*(): IGESDimenReadWriteModule {.constructor,
    importcpp: "IGESDimen_ReadWriteModule(@)",
    header: "IGESDimen_ReadWriteModule.hxx".}
proc caseIGES*(this: IGESDimenReadWriteModule; typenum: StandardInteger;
              formnum: StandardInteger): StandardInteger {.noSideEffect,
    importcpp: "CaseIGES", header: "IGESDimen_ReadWriteModule.hxx".}
proc readOwnParams*(this: IGESDimenReadWriteModule; cn: StandardInteger;
                   ent: Handle[IGESDataIGESEntity];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ReadWriteModule.hxx".}
proc writeOwnParams*(this: IGESDimenReadWriteModule; cn: StandardInteger;
                    ent: Handle[IGESDataIGESEntity]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDimen_ReadWriteModule.hxx".}
type
  IGESDimenReadWriteModulebaseType* = IGESDataReadWriteModule

proc getTypeName*(): cstring {.importcpp: "IGESDimen_ReadWriteModule::get_type_name(@)",
                            header: "IGESDimen_ReadWriteModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_ReadWriteModule::get_type_descriptor(@)",
    header: "IGESDimen_ReadWriteModule.hxx".}
proc dynamicType*(this: IGESDimenReadWriteModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_ReadWriteModule.hxx".}

