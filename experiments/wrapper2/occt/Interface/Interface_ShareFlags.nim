##  Created on: 1993-04-05
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_GTool"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  InterfaceShareFlags* {.importcpp: "Interface_ShareFlags",
                        header: "Interface_ShareFlags.hxx", bycopy.} = object ## ! Creates a
                                                                         ## ShareFlags from a Model and builds
                                                                         ## required data
                                                                         ## ! (flags) by calling the General Service Library given as
                                                                         ## !
                                                                         ## argument <lib>
                                                                         ## !
                                                                         ## Computes flags at
                                                                         ## Creation time
                                                                         ## !
                                                                         ## !
                                                                         ## Normally, gtool
                                                                         ## suffices. But if a Graph is created from a
                                                                         ## !
                                                                         ## GeneralLib
                                                                         ## directly, it cannot be used
                                                                         ## ! If <gtool> is
                                                                         ## defined, it has
                                                                         ## priority


proc constructInterfaceShareFlags*(amodel: Handle[InterfaceInterfaceModel];
                                  lib: InterfaceGeneralLib): InterfaceShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc constructInterfaceShareFlags*(amodel: Handle[InterfaceInterfaceModel];
                                  gtool: Handle[InterfaceGTool]): InterfaceShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc constructInterfaceShareFlags*(amodel: Handle[InterfaceInterfaceModel];
                                  protocol: Handle[InterfaceProtocol]): InterfaceShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc constructInterfaceShareFlags*(amodel: Handle[InterfaceInterfaceModel]): InterfaceShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc constructInterfaceShareFlags*(agraph: InterfaceGraph): InterfaceShareFlags {.
    constructor, importcpp: "Interface_ShareFlags(@)",
    header: "Interface_ShareFlags.hxx".}
proc model*(this: InterfaceShareFlags): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_ShareFlags.hxx".}
proc isShared*(this: InterfaceShareFlags; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsShared", header: "Interface_ShareFlags.hxx".}
proc rootEntities*(this: InterfaceShareFlags): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootEntities", header: "Interface_ShareFlags.hxx".}
proc nbRoots*(this: InterfaceShareFlags): int {.noSideEffect, importcpp: "NbRoots",
    header: "Interface_ShareFlags.hxx".}
proc root*(this: InterfaceShareFlags; num: int = 1): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Root", header: "Interface_ShareFlags.hxx".}
