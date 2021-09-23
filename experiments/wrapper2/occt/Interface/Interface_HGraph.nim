##  Created on: 1993-04-22
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
  ../Standard/Standard, ../Standard/Standard_Type, Interface_Graph,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_GTool"
discard "forward decl of Interface_HGraph"
discard "forward decl of Interface_HGraph"
type
  Handle_Interface_HGraph* = handle[Interface_HGraph]

## ! This class allows to store a redefinable Graph, via a Handle
## ! (usefull for an Object which can work on several successive
## ! Models, with the same general conditions)

type
  Interface_HGraph* {.importcpp: "Interface_HGraph",
                     header: "Interface_HGraph.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## HGraph
                                                                                      ## directly
                                                                                      ## from
                                                                                      ## a
                                                                                      ## Graph.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Remark
                                                                                      ## that
                                                                                      ## the
                                                                                      ## starting
                                                                                      ## Graph
                                                                                      ## is
                                                                                      ## duplicated


proc constructInterface_HGraph*(agraph: Interface_Graph): Interface_HGraph {.
    constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc constructInterface_HGraph*(amodel: handle[Interface_InterfaceModel];
                               lib: Interface_GeneralLib;
                               theModeStats: Standard_Boolean = Standard_True): Interface_HGraph {.
    constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc constructInterface_HGraph*(amodel: handle[Interface_InterfaceModel];
                               protocol: handle[Interface_Protocol];
                               theModeStats: Standard_Boolean = Standard_True): Interface_HGraph {.
    constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc constructInterface_HGraph*(amodel: handle[Interface_InterfaceModel];
                               gtool: handle[Interface_GTool];
                               theModeStats: Standard_Boolean = Standard_True): Interface_HGraph {.
    constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc constructInterface_HGraph*(amodel: handle[Interface_InterfaceModel];
                               theModeStats: Standard_Boolean = Standard_True): Interface_HGraph {.
    constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc Graph*(this: Interface_HGraph): Interface_Graph {.noSideEffect,
    importcpp: "Graph", header: "Interface_HGraph.hxx".}
proc CGraph*(this: var Interface_HGraph): var Interface_Graph {.importcpp: "CGraph",
    header: "Interface_HGraph.hxx".}
type
  Interface_HGraphbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_HGraph::get_type_name(@)",
                              header: "Interface_HGraph.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_HGraph::get_type_descriptor(@)",
    header: "Interface_HGraph.hxx".}
proc DynamicType*(this: Interface_HGraph): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_HGraph.hxx".}