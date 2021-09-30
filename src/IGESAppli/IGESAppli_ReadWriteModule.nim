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
discard "forward decl of IGESAppli_ReadWriteModule"
discard "forward decl of IGESAppli_ReadWriteModule"
type
  HandleC1C1* = Handle[IGESAppliReadWriteModule]

## ! Defines basic File Access Module for IGESAppli (specific parts)
## ! Specific actions concern : Read and Write Own Parameters of
## ! an IGESEntity.

type
  IGESAppliReadWriteModule* {.importcpp: "IGESAppli_ReadWriteModule",
                             header: "IGESAppli_ReadWriteModule.hxx", bycopy.} = object of IGESDataReadWriteModule ##
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


proc constructIGESAppliReadWriteModule*(): IGESAppliReadWriteModule {.constructor,
    importcpp: "IGESAppli_ReadWriteModule(@)",
    header: "IGESAppli_ReadWriteModule.hxx".}
proc caseIGES*(this: IGESAppliReadWriteModule; typenum: cint; formnum: cint): cint {.
    noSideEffect, importcpp: "CaseIGES", header: "IGESAppli_ReadWriteModule.hxx".}
proc readOwnParams*(this: IGESAppliReadWriteModule; cn: cint;
                   ent: Handle[IGESDataIGESEntity];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ReadWriteModule.hxx".}
proc writeOwnParams*(this: IGESAppliReadWriteModule; cn: cint;
                    ent: Handle[IGESDataIGESEntity]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESAppli_ReadWriteModule.hxx".}
type
  IGESAppliReadWriteModulebaseType* = IGESDataReadWriteModule

proc getTypeName*(): cstring {.importcpp: "IGESAppli_ReadWriteModule::get_type_name(@)",
                            header: "IGESAppli_ReadWriteModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_ReadWriteModule::get_type_descriptor(@)",
    header: "IGESAppli_ReadWriteModule.hxx".}
proc dynamicType*(this: IGESAppliReadWriteModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_ReadWriteModule.hxx".}

























