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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Protocol"
type
  HandleInterfaceProtocol* = Handle[InterfaceProtocol]

## ! General description of Interface Protocols. A Protocol defines
## ! a set of Entity types. This class provides also the notion of
## ! Active Protocol, as a working context, defined once then
## ! exploited by various Tools and Libraries.
## !
## ! It also gives control of type definitions. By default, types
## ! are provided by CDL, but specific implementations, or topics
## ! like multi-typing, may involve another way

type
  InterfaceProtocol* {.importcpp: "Interface_Protocol",
                      header: "Interface_Protocol.hxx", bycopy.} = object of StandardTransient ##
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


proc active*(): Handle[InterfaceProtocol] {.
    importcpp: "Interface_Protocol::Active(@)", header: "Interface_Protocol.hxx".}
proc setActive*(aprotocol: Handle[InterfaceProtocol]) {.
    importcpp: "Interface_Protocol::SetActive(@)",
    header: "Interface_Protocol.hxx".}
proc clearActive*() {.importcpp: "Interface_Protocol::ClearActive(@)",
                    header: "Interface_Protocol.hxx".}
proc nbResources*(this: InterfaceProtocol): StandardInteger {.noSideEffect,
    importcpp: "NbResources", header: "Interface_Protocol.hxx".}
proc resource*(this: InterfaceProtocol; num: StandardInteger): Handle[
    InterfaceProtocol] {.noSideEffect, importcpp: "Resource",
                        header: "Interface_Protocol.hxx".}
proc caseNumber*(this: InterfaceProtocol; obj: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "CaseNumber", header: "Interface_Protocol.hxx".}
proc isDynamicType*(this: InterfaceProtocol; obj: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "IsDynamicType", header: "Interface_Protocol.hxx".}
proc nbTypes*(this: InterfaceProtocol; obj: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "NbTypes", header: "Interface_Protocol.hxx".}
proc `type`*(this: InterfaceProtocol; obj: Handle[StandardTransient];
            nt: StandardInteger = 1): Handle[StandardType] {.noSideEffect,
    importcpp: "Type", header: "Interface_Protocol.hxx".}
proc typeNumber*(this: InterfaceProtocol; atype: Handle[StandardType]): StandardInteger {.
    noSideEffect, importcpp: "TypeNumber", header: "Interface_Protocol.hxx".}
proc globalCheck*(this: InterfaceProtocol; g: InterfaceGraph;
                 ach: var Handle[InterfaceCheck]): StandardBoolean {.noSideEffect,
    importcpp: "GlobalCheck", header: "Interface_Protocol.hxx".}
proc newModel*(this: InterfaceProtocol): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "Interface_Protocol.hxx".}
proc isSuitableModel*(this: InterfaceProtocol;
                     model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    noSideEffect, importcpp: "IsSuitableModel", header: "Interface_Protocol.hxx".}
proc unknownEntity*(this: InterfaceProtocol): Handle[StandardTransient] {.
    noSideEffect, importcpp: "UnknownEntity", header: "Interface_Protocol.hxx".}
proc isUnknownEntity*(this: InterfaceProtocol; ent: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "IsUnknownEntity", header: "Interface_Protocol.hxx".}
type
  InterfaceProtocolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_Protocol::get_type_name(@)",
                            header: "Interface_Protocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_Protocol::get_type_descriptor(@)",
    header: "Interface_Protocol.hxx".}
proc dynamicType*(this: InterfaceProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_Protocol.hxx".}

