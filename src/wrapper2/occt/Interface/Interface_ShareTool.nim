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
  ../Standard/Standard_Type

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
  Interface_ShareTool* {.importcpp: "Interface_ShareTool",
                        header: "Interface_ShareTool.hxx", bycopy.} = object ## ! Creates a
                                                                        ## ShareTool from a Model and builds all required data,
                                                                        ## ! by calling the General Service Library and Modules
                                                                        ## !
                                                                        ## (GeneralLib given as an
                                                                        ## argument)


proc constructInterface_ShareTool*(amodel: handle[Interface_InterfaceModel];
                                  lib: Interface_GeneralLib): Interface_ShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterface_ShareTool*(amodel: handle[Interface_InterfaceModel];
                                  gtool: handle[Interface_GTool]): Interface_ShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterface_ShareTool*(amodel: handle[Interface_InterfaceModel];
                                  protocol: handle[Interface_Protocol]): Interface_ShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterface_ShareTool*(amodel: handle[Interface_InterfaceModel]): Interface_ShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterface_ShareTool*(agraph: Interface_Graph): Interface_ShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc constructInterface_ShareTool*(ahgraph: handle[Interface_HGraph]): Interface_ShareTool {.
    constructor, importcpp: "Interface_ShareTool(@)",
    header: "Interface_ShareTool.hxx".}
proc Model*(this: Interface_ShareTool): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_ShareTool.hxx".}
proc Graph*(this: Interface_ShareTool): Interface_Graph {.noSideEffect,
    importcpp: "Graph", header: "Interface_ShareTool.hxx".}
proc RootEntities*(this: Interface_ShareTool): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootEntities", header: "Interface_ShareTool.hxx".}
proc IsShared*(this: Interface_ShareTool; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsShared", header: "Interface_ShareTool.hxx".}
proc Shareds*(this: Interface_ShareTool; ent: handle[Standard_Transient]): Interface_EntityIterator {.
    noSideEffect, importcpp: "Shareds", header: "Interface_ShareTool.hxx".}
proc Sharings*(this: Interface_ShareTool; ent: handle[Standard_Transient]): Interface_EntityIterator {.
    noSideEffect, importcpp: "Sharings", header: "Interface_ShareTool.hxx".}
proc NbTypedSharings*(this: Interface_ShareTool; ent: handle[Standard_Transient];
                     atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "NbTypedSharings", header: "Interface_ShareTool.hxx".}
proc TypedSharing*(this: Interface_ShareTool; ent: handle[Standard_Transient];
                  atype: handle[Standard_Type]): handle[Standard_Transient] {.
    noSideEffect, importcpp: "TypedSharing", header: "Interface_ShareTool.hxx".}
proc All*(this: Interface_ShareTool; ent: handle[Standard_Transient];
         rootlast: Standard_Boolean = Standard_True): Interface_EntityIterator {.
    noSideEffect, importcpp: "All", header: "Interface_ShareTool.hxx".}
proc Print*(this: Interface_ShareTool; iter: Interface_EntityIterator;
           S: var Standard_OStream) {.noSideEffect, importcpp: "Print",
                                   header: "Interface_ShareTool.hxx".}