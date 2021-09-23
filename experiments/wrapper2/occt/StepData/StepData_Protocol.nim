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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Interface/Interface_DataMapOfTransientInteger,
  ../Interface/Interface_Protocol, ../Standard/Standard_Integer,
  ../Standard/Standard_Type, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_SequenceOfAsciiString

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
  Handle_StepData_Protocol* = handle[StepData_Protocol]

## ! Description of Basic Protocol for Step
## ! The class Protocol from StepData itself describes a default
## ! Protocol, which recognizes only UnknownEntities.
## ! Sub-classes will redefine CaseNumber and, if necessary,
## ! NbResources and Resources.

type
  StepData_Protocol* {.importcpp: "StepData_Protocol",
                      header: "StepData_Protocol.hxx", bycopy.} = object of Interface_Protocol


proc constructStepData_Protocol*(): StepData_Protocol {.constructor,
    importcpp: "StepData_Protocol(@)", header: "StepData_Protocol.hxx".}
proc NbResources*(this: StepData_Protocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "StepData_Protocol.hxx".}
proc Resource*(this: StepData_Protocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "StepData_Protocol.hxx".}
proc CaseNumber*(this: StepData_Protocol; obj: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNumber", header: "StepData_Protocol.hxx".}
proc TypeNumber*(this: StepData_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "StepData_Protocol.hxx".}
proc SchemaName*(this: StepData_Protocol): Standard_CString {.noSideEffect,
    importcpp: "SchemaName", header: "StepData_Protocol.hxx".}
proc NewModel*(this: StepData_Protocol): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "StepData_Protocol.hxx".}
proc IsSuitableModel*(this: StepData_Protocol;
                     model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSuitableModel", header: "StepData_Protocol.hxx".}
proc UnknownEntity*(this: StepData_Protocol): handle[Standard_Transient] {.
    noSideEffect, importcpp: "UnknownEntity", header: "StepData_Protocol.hxx".}
proc IsUnknownEntity*(this: StepData_Protocol; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsUnknownEntity", header: "StepData_Protocol.hxx".}
proc DescrNumber*(this: StepData_Protocol; adescr: handle[StepData_EDescr]): Standard_Integer {.
    noSideEffect, importcpp: "DescrNumber", header: "StepData_Protocol.hxx".}
proc AddDescr*(this: var StepData_Protocol; adescr: handle[StepData_EDescr];
              CN: Standard_Integer) {.importcpp: "AddDescr",
                                    header: "StepData_Protocol.hxx".}
proc HasDescr*(this: StepData_Protocol): Standard_Boolean {.noSideEffect,
    importcpp: "HasDescr", header: "StepData_Protocol.hxx".}
proc Descr*(this: StepData_Protocol; num: Standard_Integer): handle[StepData_EDescr] {.
    noSideEffect, importcpp: "Descr", header: "StepData_Protocol.hxx".}
proc Descr*(this: StepData_Protocol; name: Standard_CString;
           anylevel: Standard_Boolean = Standard_True): handle[StepData_EDescr] {.
    noSideEffect, importcpp: "Descr", header: "StepData_Protocol.hxx".}
proc ESDescr*(this: StepData_Protocol; name: Standard_CString;
             anylevel: Standard_Boolean = Standard_True): handle[StepData_ESDescr] {.
    noSideEffect, importcpp: "ESDescr", header: "StepData_Protocol.hxx".}
proc ECDescr*(this: StepData_Protocol; names: TColStd_SequenceOfAsciiString;
             anylevel: Standard_Boolean = Standard_True): handle[StepData_ECDescr] {.
    noSideEffect, importcpp: "ECDescr", header: "StepData_Protocol.hxx".}
proc AddPDescr*(this: var StepData_Protocol; pdescr: handle[StepData_PDescr]) {.
    importcpp: "AddPDescr", header: "StepData_Protocol.hxx".}
proc PDescr*(this: StepData_Protocol; name: Standard_CString;
            anylevel: Standard_Boolean = Standard_True): handle[StepData_PDescr] {.
    noSideEffect, importcpp: "PDescr", header: "StepData_Protocol.hxx".}
proc AddBasicDescr*(this: var StepData_Protocol; esdescr: handle[StepData_ESDescr]) {.
    importcpp: "AddBasicDescr", header: "StepData_Protocol.hxx".}
proc BasicDescr*(this: StepData_Protocol; name: Standard_CString;
                anylevel: Standard_Boolean = Standard_True): handle[StepData_EDescr] {.
    noSideEffect, importcpp: "BasicDescr", header: "StepData_Protocol.hxx".}
type
  StepData_Protocolbase_type* = Interface_Protocol

proc get_type_name*(): cstring {.importcpp: "StepData_Protocol::get_type_name(@)",
                              header: "StepData_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_Protocol::get_type_descriptor(@)",
    header: "StepData_Protocol.hxx".}
proc DynamicType*(this: StepData_Protocol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_Protocol.hxx".}