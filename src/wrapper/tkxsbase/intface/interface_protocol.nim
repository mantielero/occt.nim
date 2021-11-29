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


proc active*(): Handle[InterfaceProtocol] {.cdecl,
    importcpp: "Interface_Protocol::Active(@)", header: "Interface_Protocol.hxx".}
proc setActive*(aprotocol: Handle[InterfaceProtocol]) {.cdecl,
    importcpp: "Interface_Protocol::SetActive(@)", header: "Interface_Protocol.hxx".}
proc clearActive*() {.cdecl, importcpp: "Interface_Protocol::ClearActive(@)",
                    header: "Interface_Protocol.hxx".}
proc nbResources*(this: InterfaceProtocol): cint {.noSideEffect, cdecl,
    importcpp: "NbResources", header: "Interface_Protocol.hxx".}
proc resource*(this: InterfaceProtocol; num: cint): Handle[InterfaceProtocol] {.
    noSideEffect, cdecl, importcpp: "Resource", header: "Interface_Protocol.hxx".}
proc caseNumber*(this: InterfaceProtocol; obj: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "CaseNumber", header: "Interface_Protocol.hxx".}
proc isDynamicType*(this: InterfaceProtocol; obj: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsDynamicType", header: "Interface_Protocol.hxx".}
proc nbTypes*(this: InterfaceProtocol; obj: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "NbTypes", header: "Interface_Protocol.hxx".}
proc `type`*(this: InterfaceProtocol; obj: Handle[StandardTransient]; nt: cint = 1): Handle[
    StandardType] {.noSideEffect, cdecl, importcpp: "Type", header: "Interface_Protocol.hxx".}
proc typeNumber*(this: InterfaceProtocol; atype: Handle[StandardType]): cint {.
    noSideEffect, cdecl, importcpp: "TypeNumber", header: "Interface_Protocol.hxx".}
proc globalCheck*(this: InterfaceProtocol; g: InterfaceGraph;
                 ach: var Handle[InterfaceCheck]): bool {.noSideEffect, cdecl,
    importcpp: "GlobalCheck", header: "Interface_Protocol.hxx".}
proc newModel*(this: InterfaceProtocol): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "NewModel", header: "Interface_Protocol.hxx".}
proc isSuitableModel*(this: InterfaceProtocol;
                     model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect,
    cdecl, importcpp: "IsSuitableModel", header: "Interface_Protocol.hxx".}
proc unknownEntity*(this: InterfaceProtocol): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "UnknownEntity", header: "Interface_Protocol.hxx".}
proc isUnknownEntity*(this: InterfaceProtocol; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsUnknownEntity", header: "Interface_Protocol.hxx".}