##  Created on: 1993-02-02
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
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Type

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Protocol"
type
  Handle_Interface_Protocol* = handle[Interface_Protocol]

## ! General description of Interface Protocols. A Protocol defines
## ! a set of Entity types. This class provides also the notion of
## ! Active Protocol, as a working context, defined once then
## ! exploited by various Tools and Libraries.
## !
## ! It also gives control of type definitions. By default, types
## ! are provided by CDL, but specific implementations, or topics
## ! like multi-typing, may involve another way

type
  Interface_Protocol* {.importcpp: "Interface_Protocol",
                       header: "Interface_Protocol.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## the
                                                                                          ## Active
                                                                                          ## Protocol,
                                                                                          ## if
                                                                                          ## defined
                                                                                          ## (else,
                                                                                          ## returns
                                                                                          ## a
                                                                                          ##
                                                                                          ## !
                                                                                          ## Null
                                                                                          ## Handle,
                                                                                          ## which
                                                                                          ## means
                                                                                          ## "no
                                                                                          ## defined
                                                                                          ## active
                                                                                          ## protocol")


proc Active*(): handle[Interface_Protocol] {.
    importcpp: "Interface_Protocol::Active(@)", header: "Interface_Protocol.hxx".}
proc SetActive*(aprotocol: handle[Interface_Protocol]) {.
    importcpp: "Interface_Protocol::SetActive(@)",
    header: "Interface_Protocol.hxx".}
proc ClearActive*() {.importcpp: "Interface_Protocol::ClearActive(@)",
                    header: "Interface_Protocol.hxx".}
proc NbResources*(this: Interface_Protocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "Interface_Protocol.hxx".}
proc Resource*(this: Interface_Protocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "Interface_Protocol.hxx".}
proc CaseNumber*(this: Interface_Protocol; obj: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNumber", header: "Interface_Protocol.hxx".}
proc IsDynamicType*(this: Interface_Protocol; obj: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDynamicType", header: "Interface_Protocol.hxx".}
proc NbTypes*(this: Interface_Protocol; obj: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "NbTypes", header: "Interface_Protocol.hxx".}
proc Type*(this: Interface_Protocol; obj: handle[Standard_Transient];
          nt: Standard_Integer = 1): handle[Standard_Type] {.noSideEffect,
    importcpp: "Type", header: "Interface_Protocol.hxx".}
proc TypeNumber*(this: Interface_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "Interface_Protocol.hxx".}
proc GlobalCheck*(this: Interface_Protocol; G: Interface_Graph;
                 ach: var handle[Interface_Check]): Standard_Boolean {.noSideEffect,
    importcpp: "GlobalCheck", header: "Interface_Protocol.hxx".}
proc NewModel*(this: Interface_Protocol): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "Interface_Protocol.hxx".}
proc IsSuitableModel*(this: Interface_Protocol;
                     model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSuitableModel", header: "Interface_Protocol.hxx".}
proc UnknownEntity*(this: Interface_Protocol): handle[Standard_Transient] {.
    noSideEffect, importcpp: "UnknownEntity", header: "Interface_Protocol.hxx".}
proc IsUnknownEntity*(this: Interface_Protocol; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsUnknownEntity", header: "Interface_Protocol.hxx".}
type
  Interface_Protocolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_Protocol::get_type_name(@)",
                              header: "Interface_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_Protocol::get_type_descriptor(@)",
    header: "Interface_Protocol.hxx".}
proc DynamicType*(this: Interface_Protocol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_Protocol.hxx".}