##  Copyright (c) 2013 OPEN CASCADE SAS
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

discard "forward decl of BRepMesh_Vertex"
discard "forward decl of BRepMesh_Edge"
type
  BRepMeshSelectorOfDataStructureOfDelaun* {.
      importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun",
      header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Default
                                                                                              ## constructor.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Collects
                                                                                              ## elements
                                                                                              ## connected
                                                                                              ## to
                                                                                              ## link
                                                                                              ## with
                                                                                              ## the
                                                                                              ## given
                                                                                              ## index.


proc constructBRepMeshSelectorOfDataStructureOfDelaun*(): BRepMeshSelectorOfDataStructureOfDelaun {.
    constructor, importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun(@)",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc constructBRepMeshSelectorOfDataStructureOfDelaun*(
    theMesh: Handle[BRepMeshDataStructureOfDelaun]): BRepMeshSelectorOfDataStructureOfDelaun {.
    constructor, importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun(@)",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc initialize*(this: var BRepMeshSelectorOfDataStructureOfDelaun;
                theMesh: Handle[BRepMeshDataStructureOfDelaun]) {.
    importcpp: "Initialize",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc neighboursOf*(this: var BRepMeshSelectorOfDataStructureOfDelaun;
                  theNode: BRepMeshVertex) {.importcpp: "NeighboursOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc neighboursOfNode*(this: var BRepMeshSelectorOfDataStructureOfDelaun;
                      theNodeIndex: int) {.importcpp: "NeighboursOfNode",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc neighboursOf*(this: var BRepMeshSelectorOfDataStructureOfDelaun;
                  theLink: BRepMeshEdge) {.importcpp: "NeighboursOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc neighboursOfLink*(this: var BRepMeshSelectorOfDataStructureOfDelaun;
                      theLinkIndex: int) {.importcpp: "NeighboursOfLink",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc neighboursOf*(this: var BRepMeshSelectorOfDataStructureOfDelaun;
                  theElement: BRepMeshTriangle) {.importcpp: "NeighboursOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc neighboursOfElement*(this: var BRepMeshSelectorOfDataStructureOfDelaun;
                         theElementIndex: int) {.importcpp: "NeighboursOfElement",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc neighboursByEdgeOf*(this: var BRepMeshSelectorOfDataStructureOfDelaun;
                        theElement: BRepMeshTriangle) {.
    importcpp: "NeighboursByEdgeOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc neighboursOf*(this: var BRepMeshSelectorOfDataStructureOfDelaun; a2: BRepMeshSelectorOfDataStructureOfDelaun) {.
    importcpp: "NeighboursOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
  ## theSelector
proc addNeighbours*(this: var BRepMeshSelectorOfDataStructureOfDelaun) {.
    importcpp: "AddNeighbours",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc nodes*(this: BRepMeshSelectorOfDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "Nodes",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc links*(this: BRepMeshSelectorOfDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "Links",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc elements*(this: BRepMeshSelectorOfDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "Elements",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc frontierLinks*(this: BRepMeshSelectorOfDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "FrontierLinks",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
type
  BRepMeshSelectorOfDataStructureOfDelaunbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun::get_type_name(@)", header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun::get_type_descriptor(@)",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc dynamicType*(this: BRepMeshSelectorOfDataStructureOfDelaun): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
