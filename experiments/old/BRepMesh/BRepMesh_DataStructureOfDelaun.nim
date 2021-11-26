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
  BRepMeshDataStructureOfDelaun* {.importcpp: "BRepMesh_DataStructureOfDelaun",
                                  header: "BRepMesh_DataStructureOfDelaun.hxx",
                                  bycopy.} = object of StandardTransient ## ! Constructor.
                                                                    ## ! @param theAllocator memory allocator to be used by internal structures.
                                                                    ## ! @param
                                                                    ## theReservedNodeSize presumed number of nodes in this mesh.
                                                                    ## ! @name API for accessing mesh nodes.
                                                                    ## ! Returns number of nodes.
                                                                    ## ! @name API for accessing mesh links.
                                                                    ## ! Returns number of links.
                                                                    ## ! @name API for accessing mesh elements.
                                                                    ## ! Returns number of links.
                                                                    ## ! @name Auxilary API
                                                                    ## ! Dumps information about this structure.
                                                                    ## ! @param theStream stream to be used for dump.
                                                                    ## ! Get list of links attached to the node with the given index.
                                                                    ## ! @param theIndex index of node whose links should be retrieved.
                                                                    ## ! @return list of links attached to the node.


proc constructBRepMeshDataStructureOfDelaun*(
    theAllocator: Handle[NCollectionIncAllocator]; theReservedNodeSize: int = 100): BRepMeshDataStructureOfDelaun {.
    constructor, importcpp: "BRepMesh_DataStructureOfDelaun(@)",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc nbNodes*(this: BRepMeshDataStructureOfDelaun): int {.noSideEffect,
    importcpp: "NbNodes", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc addNode*(this: var BRepMeshDataStructureOfDelaun; theNode: BRepMeshVertex;
             isForceAdd: StandardBoolean = false): int {.importcpp: "AddNode",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc indexOf*(this: var BRepMeshDataStructureOfDelaun; theNode: BRepMeshVertex): int {.
    importcpp: "IndexOf", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc getNode*(this: var BRepMeshDataStructureOfDelaun; theIndex: int): BRepMeshVertex {.
    importcpp: "GetNode", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc `()`*(this: var BRepMeshDataStructureOfDelaun; theIndex: int): BRepMeshVertex {.
    importcpp: "#(@)", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc substituteNode*(this: var BRepMeshDataStructureOfDelaun; theIndex: int;
                    theNewNode: BRepMeshVertex): StandardBoolean {.
    importcpp: "SubstituteNode", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc removeNode*(this: var BRepMeshDataStructureOfDelaun; theIndex: int;
                isForce: StandardBoolean = false) {.importcpp: "RemoveNode",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc linksConnectedTo*(this: BRepMeshDataStructureOfDelaun; theIndex: int): ListOfInteger {.
    noSideEffect, importcpp: "LinksConnectedTo",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc nbLinks*(this: BRepMeshDataStructureOfDelaun): int {.noSideEffect,
    importcpp: "NbLinks", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc addLink*(this: var BRepMeshDataStructureOfDelaun; theLink: BRepMeshEdge): int {.
    importcpp: "AddLink", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc indexOf*(this: BRepMeshDataStructureOfDelaun; theLink: BRepMeshEdge): int {.
    noSideEffect, importcpp: "IndexOf",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc getLink*(this: var BRepMeshDataStructureOfDelaun; theIndex: int): BRepMeshEdge {.
    importcpp: "GetLink", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc linksOfDomain*(this: BRepMeshDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "LinksOfDomain",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc substituteLink*(this: var BRepMeshDataStructureOfDelaun; theIndex: int;
                    theNewLink: BRepMeshEdge): StandardBoolean {.
    importcpp: "SubstituteLink", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc removeLink*(this: var BRepMeshDataStructureOfDelaun; theIndex: int;
                isForce: StandardBoolean = false) {.importcpp: "RemoveLink",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc elementsConnectedTo*(this: BRepMeshDataStructureOfDelaun; theLinkIndex: int): BRepMeshPairOfIndex {.
    noSideEffect, importcpp: "ElementsConnectedTo",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc nbElements*(this: BRepMeshDataStructureOfDelaun): int {.noSideEffect,
    importcpp: "NbElements", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc addElement*(this: var BRepMeshDataStructureOfDelaun;
                theElement: BRepMeshTriangle): int {.importcpp: "AddElement",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc getElement*(this: var BRepMeshDataStructureOfDelaun; theIndex: int): BRepMeshTriangle {.
    importcpp: "GetElement", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc elementsOfDomain*(this: BRepMeshDataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "ElementsOfDomain",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc substituteElement*(this: var BRepMeshDataStructureOfDelaun; theIndex: int;
                       theNewElement: BRepMeshTriangle): StandardBoolean {.
    importcpp: "SubstituteElement", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc removeElement*(this: var BRepMeshDataStructureOfDelaun; theIndex: int) {.
    importcpp: "RemoveElement", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc elementNodes*(this: var BRepMeshDataStructureOfDelaun;
                  theElement: BRepMeshTriangle; theNodes: array[3, int]) {.
    importcpp: "ElementNodes", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc dump*(this: var BRepMeshDataStructureOfDelaun; theFileNameStr: StandardCString) {.
    importcpp: "Dump", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc statistics*(this: BRepMeshDataStructureOfDelaun;
                theStream: var StandardOStream) {.noSideEffect,
    importcpp: "Statistics", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc allocator*(this: BRepMeshDataStructureOfDelaun): Handle[
    NCollectionIncAllocator] {.noSideEffect, importcpp: "Allocator",
                              header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc data*(this: var BRepMeshDataStructureOfDelaun): Handle[BRepMeshVertexTool] {.
    importcpp: "Data", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc clearDomain*(this: var BRepMeshDataStructureOfDelaun) {.
    importcpp: "ClearDomain", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc clearDeleted*(this: var BRepMeshDataStructureOfDelaun) {.
    importcpp: "ClearDeleted", header: "BRepMesh_DataStructureOfDelaun.hxx".}
type
  BRepMeshDataStructureOfDelaunbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_DataStructureOfDelaun::get_type_name(@)",
                            header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_DataStructureOfDelaun::get_type_descriptor(@)",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc dynamicType*(this: BRepMeshDataStructureOfDelaun): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}