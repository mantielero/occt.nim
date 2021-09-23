##  Created on: 1993-01-25
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
  ../Interface/Interface_ReaderModule, ../Standard/Standard_Integer,
  ../TColStd/TColStd_SequenceOfAsciiString, ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
discard "forward decl of Interface_FileReaderData"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of StepData_StepWriter"
discard "forward decl of StepData_ReadWriteModule"
discard "forward decl of StepData_ReadWriteModule"
type
  Handle_StepData_ReadWriteModule* = handle[StepData_ReadWriteModule]

## ! Defines basic File Access Module (Recognize, Read, Write)
## ! That is : ReaderModule (Recognize & Read) + Write for
## ! StepWriter (for a more centralized description)
## ! Warning : A sub-class of ReadWriteModule, which belongs to a particular
## ! Protocol, must use the same definition for Case Numbers (give
## ! the same Value for a StepType defined as a String from a File
## ! as the Protocol does for the corresponding Entity)

type
  StepData_ReadWriteModule* {.importcpp: "StepData_ReadWriteModule",
                             header: "StepData_ReadWriteModule.hxx", bycopy.} = object of Interface_ReaderModule ##
                                                                                                          ## !
                                                                                                          ## Translate
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
                                                                                                          ## a
                                                                                                          ## StepReaderData,
                                                                                                          ## in
                                                                                                          ## which
                                                                                                          ## the
                                                                                                          ## Type
                                                                                                          ## of
                                                                                                          ## an
                                                                                                          ## Entity
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## is
                                                                                                          ## defined
                                                                                                          ## as
                                                                                                          ## a
                                                                                                          ## String
                                                                                                          ## :
                                                                                                          ## Reads
                                                                                                          ## the
                                                                                                          ## RecordType
                                                                                                          ## <num>
                                                                                                          ## then
                                                                                                          ## calls
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## CaseNum
                                                                                                          ## (this
                                                                                                          ## type)
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Warning
                                                                                                          ## :
                                                                                                          ## The
                                                                                                          ## methods
                                                                                                          ## CaseStep,
                                                                                                          ## StepType
                                                                                                          ## and
                                                                                                          ## Recognize,
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## must
                                                                                                          ## be
                                                                                                          ## in
                                                                                                          ## phase
                                                                                                          ## (triplets
                                                                                                          ## CaseNum-StepType-Type
                                                                                                          ## of
                                                                                                          ## Object)


proc CaseNum*(this: StepData_ReadWriteModule;
             data: handle[Interface_FileReaderData]; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepData_ReadWriteModule.hxx".}
proc CaseStep*(this: StepData_ReadWriteModule; atype: TCollection_AsciiString): Standard_Integer {.
    noSideEffect, importcpp: "CaseStep", header: "StepData_ReadWriteModule.hxx".}
proc CaseStep*(this: StepData_ReadWriteModule; types: TColStd_SequenceOfAsciiString): Standard_Integer {.
    noSideEffect, importcpp: "CaseStep", header: "StepData_ReadWriteModule.hxx".}
proc IsComplex*(this: StepData_ReadWriteModule; CN: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsComplex", header: "StepData_ReadWriteModule.hxx".}
proc StepType*(this: StepData_ReadWriteModule; CN: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "StepType", header: "StepData_ReadWriteModule.hxx".}
proc ShortType*(this: StepData_ReadWriteModule; CN: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "ShortType", header: "StepData_ReadWriteModule.hxx".}
proc ComplexType*(this: StepData_ReadWriteModule; CN: Standard_Integer;
                 types: var TColStd_SequenceOfAsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "ComplexType", header: "StepData_ReadWriteModule.hxx".}
proc Read*(this: StepData_ReadWriteModule; CN: Standard_Integer;
          data: handle[Interface_FileReaderData]; num: Standard_Integer;
          ach: var handle[Interface_Check]; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "Read", header: "StepData_ReadWriteModule.hxx".}
proc ReadStep*(this: StepData_ReadWriteModule; CN: Standard_Integer;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check]; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "ReadStep", header: "StepData_ReadWriteModule.hxx".}
proc WriteStep*(this: StepData_ReadWriteModule; CN: Standard_Integer;
               SW: var StepData_StepWriter; ent: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "WriteStep", header: "StepData_ReadWriteModule.hxx".}
type
  StepData_ReadWriteModulebase_type* = Interface_ReaderModule

proc get_type_name*(): cstring {.importcpp: "StepData_ReadWriteModule::get_type_name(@)",
                              header: "StepData_ReadWriteModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_ReadWriteModule::get_type_descriptor(@)",
    header: "StepData_ReadWriteModule.hxx".}
proc DynamicType*(this: StepData_ReadWriteModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_ReadWriteModule.hxx".}