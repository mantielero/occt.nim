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
  ../Standard/Standard_Transient, BRepMesh_Triangle, BRepMesh_PairOfIndex,
  ../Standard/Standard_OStream, ../IMeshData/IMeshData_Types, BRepMesh_VertexTool

discard "forward decl of BRepMesh_Vertex"
discard "forward decl of BRepMesh_Edge"
type
  BRepMesh_DataStructureOfDelaun* {.importcpp: "BRepMesh_DataStructureOfDelaun", header: "BRepMesh_DataStructureOfDelaun.hxx",
                                   bycopy.} = object of Standard_Transient ## !
                                                                      ## Constructor.
                                                                      ## ! @param
                                                                      ## theAllocator memory allocator to be used by internal
                                                                      ## structures.
                                                                      ## ! @param
                                                                      ## theReservedNodeSize presumed number of nodes in this mesh.
                                                                      ## ! @name API for accessing mesh nodes.
                                                                      ## ! Returns number of nodes.
                                                                      ## ! @name API for accessing mesh links.
                                                                      ## ! Returns number of links.
                                                                      ## ! @name API for accessing mesh elements.
                                                                      ## ! Returns number of links.
                                                                      ## ! @name Auxilary API
                                                                      ## ! Dumps
                                                                      ## information about this structure.
                                                                      ## ! @param theStream stream to be used for dump.
                                                                      ## ! Get list of links attached to the node with the given index.
                                                                      ## ! @param theIndex index of node whose links should be retrieved.
                                                                      ## ! @return list of links attached to the node.


proc constructBRepMesh_DataStructureOfDelaun*(
    theAllocator: handle[NCollection_IncAllocator];
    theReservedNodeSize: Standard_Integer = 100): BRepMesh_DataStructureOfDelaun {.
    constructor, importcpp: "BRepMesh_DataStructureOfDelaun(@)",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc NbNodes*(this: BRepMesh_DataStructureOfDelaun): Standard_Integer {.
    noSideEffect, importcpp: "NbNodes",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc AddNode*(this: var BRepMesh_DataStructureOfDelaun; theNode: BRepMesh_Vertex;
             isForceAdd: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "AddNode", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc IndexOf*(this: var BRepMesh_DataStructureOfDelaun; theNode: BRepMesh_Vertex): Standard_Integer {.
    importcpp: "IndexOf", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc GetNode*(this: var BRepMesh_DataStructureOfDelaun; theIndex: Standard_Integer): BRepMesh_Vertex {.
    importcpp: "GetNode", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc `()`*(this: var BRepMesh_DataStructureOfDelaun; theIndex: Standard_Integer): BRepMesh_Vertex {.
    importcpp: "#(@)", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc SubstituteNode*(this: var BRepMesh_DataStructureOfDelaun;
                    theIndex: Standard_Integer; theNewNode: BRepMesh_Vertex): Standard_Boolean {.
    importcpp: "SubstituteNode", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc RemoveNode*(this: var BRepMesh_DataStructureOfDelaun;
                theIndex: Standard_Integer;
                isForce: Standard_Boolean = Standard_False) {.
    importcpp: "RemoveNode", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc LinksConnectedTo*(this: BRepMesh_DataStructureOfDelaun;
                      theIndex: Standard_Integer): ListOfInteger {.noSideEffect,
    importcpp: "LinksConnectedTo", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc NbLinks*(this: BRepMesh_DataStructureOfDelaun): Standard_Integer {.
    noSideEffect, importcpp: "NbLinks",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc AddLink*(this: var BRepMesh_DataStructureOfDelaun; theLink: BRepMesh_Edge): Standard_Integer {.
    importcpp: "AddLink", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc IndexOf*(this: BRepMesh_DataStructureOfDelaun; theLink: BRepMesh_Edge): Standard_Integer {.
    noSideEffect, importcpp: "IndexOf",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc GetLink*(this: var BRepMesh_DataStructureOfDelaun; theIndex: Standard_Integer): BRepMesh_Edge {.
    importcpp: "GetLink", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc LinksOfDomain*(this: BRepMesh_DataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "LinksOfDomain",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc SubstituteLink*(this: var BRepMesh_DataStructureOfDelaun;
                    theIndex: Standard_Integer; theNewLink: BRepMesh_Edge): Standard_Boolean {.
    importcpp: "SubstituteLink", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc RemoveLink*(this: var BRepMesh_DataStructureOfDelaun;
                theIndex: Standard_Integer;
                isForce: Standard_Boolean = Standard_False) {.
    importcpp: "RemoveLink", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc ElementsConnectedTo*(this: BRepMesh_DataStructureOfDelaun;
                         theLinkIndex: Standard_Integer): BRepMesh_PairOfIndex {.
    noSideEffect, importcpp: "ElementsConnectedTo",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc NbElements*(this: BRepMesh_DataStructureOfDelaun): Standard_Integer {.
    noSideEffect, importcpp: "NbElements",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc AddElement*(this: var BRepMesh_DataStructureOfDelaun;
                theElement: BRepMesh_Triangle): Standard_Integer {.
    importcpp: "AddElement", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc GetElement*(this: var BRepMesh_DataStructureOfDelaun;
                theIndex: Standard_Integer): BRepMesh_Triangle {.
    importcpp: "GetElement", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc ElementsOfDomain*(this: BRepMesh_DataStructureOfDelaun): MapOfInteger {.
    noSideEffect, importcpp: "ElementsOfDomain",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc SubstituteElement*(this: var BRepMesh_DataStructureOfDelaun;
                       theIndex: Standard_Integer;
                       theNewElement: BRepMesh_Triangle): Standard_Boolean {.
    importcpp: "SubstituteElement", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc RemoveElement*(this: var BRepMesh_DataStructureOfDelaun;
                   theIndex: Standard_Integer) {.importcpp: "RemoveElement",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc ElementNodes*(this: var BRepMesh_DataStructureOfDelaun;
                  theElement: BRepMesh_Triangle;
                  theNodes: array[3, Standard_Integer]) {.
    importcpp: "ElementNodes", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc Dump*(this: var BRepMesh_DataStructureOfDelaun;
          theFileNameStr: Standard_CString) {.importcpp: "Dump",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc Statistics*(this: BRepMesh_DataStructureOfDelaun;
                theStream: var Standard_OStream) {.noSideEffect,
    importcpp: "Statistics", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc Allocator*(this: BRepMesh_DataStructureOfDelaun): handle[
    NCollection_IncAllocator] {.noSideEffect, importcpp: "Allocator",
                               header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc Data*(this: var BRepMesh_DataStructureOfDelaun): handle[BRepMesh_VertexTool] {.
    importcpp: "Data", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc ClearDomain*(this: var BRepMesh_DataStructureOfDelaun) {.
    importcpp: "ClearDomain", header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc ClearDeleted*(this: var BRepMesh_DataStructureOfDelaun) {.
    importcpp: "ClearDeleted", header: "BRepMesh_DataStructureOfDelaun.hxx".}
type
  BRepMesh_DataStructureOfDelaunbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_DataStructureOfDelaun::get_type_name(@)",
                              header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_DataStructureOfDelaun::get_type_descriptor(@)",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}
proc DynamicType*(this: BRepMesh_DataStructureOfDelaun): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_DataStructureOfDelaun.hxx".}