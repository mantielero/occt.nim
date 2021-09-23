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

import
  ../Standard/Standard_Transient, BRepMesh_DataStructureOfDelaun,
  BRepMesh_Triangle, ../IMeshData/IMeshData_Types

discard "forward decl of BRepMesh_Vertex"
discard "forward decl of BRepMesh_Edge"
type
  BRepMesh_SelectorOfDataStructureOfDelaun* {.
      importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun",
      header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructBRepMesh_SelectorOfDataStructureOfDelaun*(): BRepMesh_SelectorOfDataStructureOfDelaun {.
    constructor, importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun(@)",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc constructBRepMesh_SelectorOfDataStructureOfDelaun*(
    theMesh: handle[BRepMesh_DataStructureOfDelaun]): BRepMesh_SelectorOfDataStructureOfDelaun {.
    constructor, importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun(@)",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc Initialize*(this: var BRepMesh_SelectorOfDataStructureOfDelaun;
                theMesh: handle[BRepMesh_DataStructureOfDelaun]) {.
    importcpp: "Initialize",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc NeighboursOf*(this: var BRepMesh_SelectorOfDataStructureOfDelaun;
                  theNode: BRepMesh_Vertex) {.importcpp: "NeighboursOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc NeighboursOfNode*(this: var BRepMesh_SelectorOfDataStructureOfDelaun;
                      theNodeIndex: Standard_Integer) {.
    importcpp: "NeighboursOfNode",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc NeighboursOf*(this: var BRepMesh_SelectorOfDataStructureOfDelaun;
                  theLink: BRepMesh_Edge) {.importcpp: "NeighboursOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc NeighboursOfLink*(this: var BRepMesh_SelectorOfDataStructureOfDelaun;
                      theLinkIndex: Standard_Integer) {.
    importcpp: "NeighboursOfLink",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc NeighboursOf*(this: var BRepMesh_SelectorOfDataStructureOfDelaun;
                  theElement: BRepMesh_Triangle) {.importcpp: "NeighboursOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc NeighboursOfElement*(this: var BRepMesh_SelectorOfDataStructureOfDelaun;
                         theElementIndex: Standard_Integer) {.
    importcpp: "NeighboursOfElement",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc NeighboursByEdgeOf*(this: var BRepMesh_SelectorOfDataStructureOfDelaun;
                        theElement: BRepMesh_Triangle) {.
    importcpp: "NeighboursByEdgeOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc NeighboursOf*(this: var BRepMesh_SelectorOfDataStructureOfDelaun; a2: BRepMesh_SelectorOfDataStructureOfDelaun) {.
    importcpp: "NeighboursOf",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
  ## theSelector
proc AddNeighbours*(this: var BRepMesh_SelectorOfDataStructureOfDelaun) {.
    importcpp: "AddNeighbours",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc Nodes*(this: BRepMesh_SelectorOfDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "Nodes",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc Links*(this: BRepMesh_SelectorOfDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "Links",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc Elements*(this: BRepMesh_SelectorOfDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "Elements",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc FrontierLinks*(this: BRepMesh_SelectorOfDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "FrontierLinks",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
type
  BRepMesh_SelectorOfDataStructureOfDelaunbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun::get_type_name(@)", header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "BRepMesh_SelectorOfDataStructureOfDelaun::get_type_descriptor(@)",
    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}
proc DynamicType*(this: BRepMesh_SelectorOfDataStructureOfDelaun): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "BRepMesh_SelectorOfDataStructureOfDelaun.hxx".}