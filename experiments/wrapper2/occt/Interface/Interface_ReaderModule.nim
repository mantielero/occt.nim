##  Created on: 1993-02-04
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
discard "forward decl of Interface_FileReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReaderModule"
discard "forward decl of Interface_ReaderModule"
type
  Handle_Interface_ReaderModule* = handle[Interface_ReaderModule]

## ! Defines unitary operations required to read an Entity from a
## ! File (see FileReaderData, FileReaderTool), under control of
## ! a FileReaderTool. The initial creation is performed by a
## ! GeneralModule (set in GeneralLib). Then, which remains is
## ! Loading data from the FileReaderData to the Entity
## !
## ! To work, a GeneralModule has formerly recognized the Type read
## ! from FileReaderData as a positive Case Number, then the
## ! ReaderModule reads it according to this Case Number

type
  Interface_ReaderModule* {.importcpp: "Interface_ReaderModule",
                           header: "Interface_ReaderModule.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Translates
                                                                                                  ## the
                                                                                                  ## type
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
                                                                                                  ## Number.
                                                                                                  ## If
                                                                                                  ## Recognition
                                                                                                  ## fails,
                                                                                                  ## must
                                                                                                  ## return
                                                                                                  ## 0


proc CaseNum*(this: Interface_ReaderModule; data: handle[Interface_FileReaderData];
             num: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "Interface_ReaderModule.hxx".}
proc Read*(this: Interface_ReaderModule; casenum: Standard_Integer;
          data: handle[Interface_FileReaderData]; num: Standard_Integer;
          ach: var handle[Interface_Check]; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "Read", header: "Interface_ReaderModule.hxx".}
proc NewRead*(this: Interface_ReaderModule; casenum: Standard_Integer;
             data: handle[Interface_FileReaderData]; num: Standard_Integer;
             ach: var handle[Interface_Check]; ent: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "NewRead", header: "Interface_ReaderModule.hxx".}
type
  Interface_ReaderModulebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_ReaderModule::get_type_name(@)",
                              header: "Interface_ReaderModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_ReaderModule::get_type_descriptor(@)",
    header: "Interface_ReaderModule.hxx".}
proc DynamicType*(this: Interface_ReaderModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_ReaderModule.hxx".}