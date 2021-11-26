##  Created on: 1993-02-03
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

discard "forward decl of Interface_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of StepData_EDescr"
discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_ECDescr"
discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_Protocol"
type
  HandleC1C1* = Handle[StepDataProtocol]

## ! Description of Basic Protocol for Step
## ! The class Protocol from StepData itself describes a default
## ! Protocol, which recognizes only UnknownEntities.
## ! Sub-classes will redefine CaseNumber and, if necessary,
## ! NbResources and Resources.

type
  StepDataProtocol* {.importcpp: "StepData_Protocol",
                     header: "StepData_Protocol.hxx", bycopy.} = object of InterfaceProtocol


proc constructStepDataProtocol*(): StepDataProtocol {.constructor,
    importcpp: "StepData_Protocol(@)", header: "StepData_Protocol.hxx".}
proc nbResources*(this: StepDataProtocol): int {.noSideEffect,
    importcpp: "NbResources", header: "StepData_Protocol.hxx".}
proc resource*(this: StepDataProtocol; num: int): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Resource", header: "StepData_Protocol.hxx".}
proc caseNumber*(this: StepDataProtocol; obj: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNumber", header: "StepData_Protocol.hxx".}
proc typeNumber*(this: StepDataProtocol; atype: Handle[StandardType]): int {.
    noSideEffect, importcpp: "TypeNumber", header: "StepData_Protocol.hxx".}
proc schemaName*(this: StepDataProtocol): StandardCString {.noSideEffect,
    importcpp: "SchemaName", header: "StepData_Protocol.hxx".}
proc newModel*(this: StepDataProtocol): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "StepData_Protocol.hxx".}
proc isSuitableModel*(this: StepDataProtocol;
                     model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    noSideEffect, importcpp: "IsSuitableModel", header: "StepData_Protocol.hxx".}
proc unknownEntity*(this: StepDataProtocol): Handle[StandardTransient] {.
    noSideEffect, importcpp: "UnknownEntity", header: "StepData_Protocol.hxx".}
proc isUnknownEntity*(this: StepDataProtocol; ent: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "IsUnknownEntity", header: "StepData_Protocol.hxx".}
proc descrNumber*(this: StepDataProtocol; adescr: Handle[StepDataEDescr]): int {.
    noSideEffect, importcpp: "DescrNumber", header: "StepData_Protocol.hxx".}
proc addDescr*(this: var StepDataProtocol; adescr: Handle[StepDataEDescr]; cn: int) {.
    importcpp: "AddDescr", header: "StepData_Protocol.hxx".}
proc hasDescr*(this: StepDataProtocol): StandardBoolean {.noSideEffect,
    importcpp: "HasDescr", header: "StepData_Protocol.hxx".}
proc descr*(this: StepDataProtocol; num: int): Handle[StepDataEDescr] {.noSideEffect,
    importcpp: "Descr", header: "StepData_Protocol.hxx".}
proc descr*(this: StepDataProtocol; name: StandardCString;
           anylevel: StandardBoolean = true): Handle[StepDataEDescr] {.noSideEffect,
    importcpp: "Descr", header: "StepData_Protocol.hxx".}
proc eSDescr*(this: StepDataProtocol; name: StandardCString;
             anylevel: StandardBoolean = true): Handle[StepDataESDescr] {.
    noSideEffect, importcpp: "ESDescr", header: "StepData_Protocol.hxx".}
proc eCDescr*(this: StepDataProtocol; names: TColStdSequenceOfAsciiString;
             anylevel: StandardBoolean = true): Handle[StepDataECDescr] {.
    noSideEffect, importcpp: "ECDescr", header: "StepData_Protocol.hxx".}
proc addPDescr*(this: var StepDataProtocol; pdescr: Handle[StepDataPDescr]) {.
    importcpp: "AddPDescr", header: "StepData_Protocol.hxx".}
proc pDescr*(this: StepDataProtocol; name: StandardCString;
            anylevel: StandardBoolean = true): Handle[StepDataPDescr] {.noSideEffect,
    importcpp: "PDescr", header: "StepData_Protocol.hxx".}
proc addBasicDescr*(this: var StepDataProtocol; esdescr: Handle[StepDataESDescr]) {.
    importcpp: "AddBasicDescr", header: "StepData_Protocol.hxx".}
proc basicDescr*(this: StepDataProtocol; name: StandardCString;
                anylevel: StandardBoolean = true): Handle[StepDataEDescr] {.
    noSideEffect, importcpp: "BasicDescr", header: "StepData_Protocol.hxx".}
type
  StepDataProtocolbaseType* = InterfaceProtocol

proc getTypeName*(): cstring {.importcpp: "StepData_Protocol::get_type_name(@)",
                            header: "StepData_Protocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_Protocol::get_type_descriptor(@)",
    header: "StepData_Protocol.hxx".}
proc dynamicType*(this: StepDataProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_Protocol.hxx".}