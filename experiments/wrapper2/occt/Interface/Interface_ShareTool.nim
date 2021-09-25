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

discard "forward decl of Interface_HGraph"
discard "forward decl of Standard_DomainError"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_GTool"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
type
  InterfaceShareTool* {.importcpp: "Interface_ShareTool",
                       header: "Interface_ShareTool.hxx", bycopy.} = object ## ! Creates a ShareTool from a Model and builds all required data,
                                                                       ## ! by calling the General Service Library and Modules
                                                                       ## !
                                                                       ## (GeneralLib given as an argument)


proc constructInterfaceShareTool*(amodel: Handle[InterfaceInterfaceModel];
                                 lib: InterfaceGeneralLib): InterfaceShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterfaceShareTool*(amodel: Handle[InterfaceInterfaceModel];
                                 gtool: Handle[InterfaceGTool]): InterfaceShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterfaceShareTool*(amodel: Handle[InterfaceInterfaceModel];
                                 protocol: Handle[InterfaceProtocol]): InterfaceShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterfaceShareTool*(amodel: Handle[InterfaceInterfaceModel]): InterfaceShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterfaceShareTool*(agraph: InterfaceGraph): InterfaceShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterfaceShareTool*(ahgraph: Handle[InterfaceHGraph]): InterfaceShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc model*(this: InterfaceShareTool): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_ShareTool.hxx".}
proc graph*(this: InterfaceShareTool): InterfaceGraph {.noSideEffect,
    importcpp: "Graph", header: "Interface_ShareTool.hxx".}
proc rootEntities*(this: InterfaceShareTool): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootEntities", header: "Interface_ShareTool.hxx".}
proc isShared*(this: InterfaceShareTool; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsShared", header: "Interface_ShareTool.hxx".}
proc shareds*(this: InterfaceShareTool; ent: Handle[StandardTransient]): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Shareds", header: "Interface_ShareTool.hxx".}
proc sharings*(this: InterfaceShareTool; ent: Handle[StandardTransient]): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Sharings", header: "Interface_ShareTool.hxx".}
proc nbTypedSharings*(this: InterfaceShareTool; ent: Handle[StandardTransient];
                     atype: Handle[StandardType]): int {.noSideEffect,
    importcpp: "NbTypedSharings", header: "Interface_ShareTool.hxx".}
proc typedSharing*(this: InterfaceShareTool; ent: Handle[StandardTransient];
                  atype: Handle[StandardType]): Handle[StandardTransient] {.
    noSideEffect, importcpp: "TypedSharing", header: "Interface_ShareTool.hxx".}
proc all*(this: InterfaceShareTool; ent: Handle[StandardTransient];
         rootlast: bool = true): InterfaceEntityIterator {.noSideEffect,
    importcpp: "All", header: "Interface_ShareTool.hxx".}
proc print*(this: InterfaceShareTool; iter: InterfaceEntityIterator;
           s: var StandardOStream) {.noSideEffect, importcpp: "Print",
                                  header: "Interface_ShareTool.hxx".}
