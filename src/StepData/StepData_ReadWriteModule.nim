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
  HandleC1C1* = Handle[StepDataReadWriteModule]

## ! Defines basic File Access Module (Recognize, Read, Write)
## ! That is : ReaderModule (Recognize & Read) + Write for
## ! StepWriter (for a more centralized description)
## ! Warning : A sub-class of ReadWriteModule, which belongs to a particular
## ! Protocol, must use the same definition for Case Numbers (give
## ! the same Value for a StepType defined as a String from a File
## ! as the Protocol does for the corresponding Entity)

type
  StepDataReadWriteModule* {.importcpp: "StepData_ReadWriteModule",
                            header: "StepData_ReadWriteModule.hxx", bycopy.} = object of InterfaceReaderModule ##
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


proc caseNum*(this: StepDataReadWriteModule; data: Handle[InterfaceFileReaderData];
             num: cint): cint {.noSideEffect, importcpp: "CaseNum",
                             header: "StepData_ReadWriteModule.hxx".}
proc caseStep*(this: StepDataReadWriteModule; atype: TCollectionAsciiString): cint {.
    noSideEffect, importcpp: "CaseStep", header: "StepData_ReadWriteModule.hxx".}
proc caseStep*(this: StepDataReadWriteModule; types: TColStdSequenceOfAsciiString): cint {.
    noSideEffect, importcpp: "CaseStep", header: "StepData_ReadWriteModule.hxx".}
proc isComplex*(this: StepDataReadWriteModule; cn: cint): bool {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_ReadWriteModule.hxx".}
proc stepType*(this: StepDataReadWriteModule; cn: cint): TCollectionAsciiString {.
    noSideEffect, importcpp: "StepType", header: "StepData_ReadWriteModule.hxx".}
proc shortType*(this: StepDataReadWriteModule; cn: cint): TCollectionAsciiString {.
    noSideEffect, importcpp: "ShortType", header: "StepData_ReadWriteModule.hxx".}
proc complexType*(this: StepDataReadWriteModule; cn: cint;
                 types: var TColStdSequenceOfAsciiString): bool {.noSideEffect,
    importcpp: "ComplexType", header: "StepData_ReadWriteModule.hxx".}
proc read*(this: StepDataReadWriteModule; cn: cint;
          data: Handle[InterfaceFileReaderData]; num: cint;
          ach: var Handle[InterfaceCheck]; ent: Handle[StandardTransient]) {.
    noSideEffect, importcpp: "Read", header: "StepData_ReadWriteModule.hxx".}
proc readStep*(this: StepDataReadWriteModule; cn: cint;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck]; ent: Handle[StandardTransient]) {.
    noSideEffect, importcpp: "ReadStep", header: "StepData_ReadWriteModule.hxx".}
proc writeStep*(this: StepDataReadWriteModule; cn: cint; sw: var StepDataStepWriter;
               ent: Handle[StandardTransient]) {.noSideEffect,
    importcpp: "WriteStep", header: "StepData_ReadWriteModule.hxx".}
type
  StepDataReadWriteModulebaseType* = InterfaceReaderModule

proc getTypeName*(): cstring {.importcpp: "StepData_ReadWriteModule::get_type_name(@)",
                            header: "StepData_ReadWriteModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_ReadWriteModule::get_type_descriptor(@)",
    header: "StepData_ReadWriteModule.hxx".}
proc dynamicType*(this: StepDataReadWriteModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_ReadWriteModule.hxx".}

























