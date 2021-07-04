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
  ../Interface/Interface_ReaderModule, ../Standard/Standard_Integer

discard "forward decl of Standard_DomainError"
discard "forward decl of Interface_FileReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_ReadWriteModule"
type
  Handle_IGESData_ReadWriteModule* = handle[IGESData_ReadWriteModule]

## ! Defines basic File Access Module, under the control of
## ! IGESReaderTool for Reading and IGESWriter for Writing :
## ! Specific actions concern : Read and Write Own Parameters of
## ! an IGESEntity.
## ! The common parts (Directory Entry, Lists of Associativities
## ! and Properties) are processed by IGESReaderTool & IGESWriter
## !
## ! Each sub-class of ReadWriteModule is used in conjunction with
## ! a sub-class of Protocol from IGESData and processes several
## ! types of IGESEntity (typically, them of a package) :
## ! The Protocol gives a unique positive integer Case Number for
## ! each type of IGESEntity it recognizes, the corresponding
## ! ReadWriteModule processes an Entity by using the Case Number
## ! to known what is to do
## ! On Reading, the general service NewVoid is used to create an
## ! IGES Entity the first time
## !
## ! Warning : Works with an IGESReaderData which stores "DE parts" of Items

type
  IGESData_ReadWriteModule* {.importcpp: "IGESData_ReadWriteModule",
                             header: "IGESData_ReadWriteModule.hxx", bycopy.} = object of Interface_ReaderModule ##
                                                                                                          ## !
                                                                                                          ## Translates
                                                                                                          ## the
                                                                                                          ## Type
                                                                                                          ## of
                                                                                                          ## record
                                                                                                          ## <num>
                                                                                                          ## in
                                                                                                          ## <data>
                                                                                                          ## to
                                                                                                          ## a
                                                                                                          ## positive
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Case
                                                                                                          ## Number,
                                                                                                          ## or
                                                                                                          ## 0
                                                                                                          ## if
                                                                                                          ## failed.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Works
                                                                                                          ## with
                                                                                                          ## IGESReaderData
                                                                                                          ## which
                                                                                                          ## provides
                                                                                                          ## Type
                                                                                                          ## &
                                                                                                          ## Form
                                                                                                          ## Numbers,
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## and
                                                                                                          ## calls
                                                                                                          ## CaseIGES
                                                                                                          ## (see
                                                                                                          ## below)


proc CaseNum*(this: IGESData_ReadWriteModule;
             data: handle[Interface_FileReaderData]; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "IGESData_ReadWriteModule.hxx".}
proc CaseIGES*(this: IGESData_ReadWriteModule; typenum: Standard_Integer;
              formnum: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "CaseIGES", header: "IGESData_ReadWriteModule.hxx".}
proc Read*(this: IGESData_ReadWriteModule; CN: Standard_Integer;
          data: handle[Interface_FileReaderData]; num: Standard_Integer;
          ach: var handle[Interface_Check]; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "Read", header: "IGESData_ReadWriteModule.hxx".}
proc ReadOwnParams*(this: IGESData_ReadWriteModule; CN: Standard_Integer;
                   ent: handle[IGESData_IGESEntity];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESData_ReadWriteModule.hxx".}
proc WriteOwnParams*(this: IGESData_ReadWriteModule; CN: Standard_Integer;
                    ent: handle[IGESData_IGESEntity]; IW: var IGESData_IGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESData_ReadWriteModule.hxx".}
type
  IGESData_ReadWriteModulebase_type* = Interface_ReaderModule

proc get_type_name*(): cstring {.importcpp: "IGESData_ReadWriteModule::get_type_name(@)",
                              header: "IGESData_ReadWriteModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_ReadWriteModule::get_type_descriptor(@)",
    header: "IGESData_ReadWriteModule.hxx".}
proc DynamicType*(this: IGESData_ReadWriteModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_ReadWriteModule.hxx".}