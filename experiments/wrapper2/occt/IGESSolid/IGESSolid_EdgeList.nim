##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_VertexList"
discard "forward decl of IGESSolid_EdgeList"
discard "forward decl of IGESSolid_EdgeList"
type
  HandleIGESSolidEdgeList* = Handle[IGESSolidEdgeList]

## ! defines EdgeList, Type <504> Form <1>
## ! in package IGESSolid
## ! EdgeList is defined as a segment joining two vertices
## ! It contains one or more edge tuples.

type
  IGESSolidEdgeList* {.importcpp: "IGESSolid_EdgeList",
                      header: "IGESSolid_EdgeList.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidEdgeList*(): IGESSolidEdgeList {.constructor,
    importcpp: "IGESSolid_EdgeList(@)", header: "IGESSolid_EdgeList.hxx".}
proc init*(this: var IGESSolidEdgeList; curves: Handle[IGESDataHArray1OfIGESEntity];
          startVertexList: Handle[IGESSolidHArray1OfVertexList];
          startVertexIndex: Handle[TColStdHArray1OfInteger];
          endVertexList: Handle[IGESSolidHArray1OfVertexList];
          endVertexIndex: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESSolid_EdgeList.hxx".}
proc nbEdges*(this: IGESSolidEdgeList): int {.noSideEffect, importcpp: "NbEdges",
    header: "IGESSolid_EdgeList.hxx".}
proc curve*(this: IGESSolidEdgeList; num: int): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Curve", header: "IGESSolid_EdgeList.hxx".}
proc startVertexList*(this: IGESSolidEdgeList; num: int): Handle[IGESSolidVertexList] {.
    noSideEffect, importcpp: "StartVertexList", header: "IGESSolid_EdgeList.hxx".}
proc startVertexIndex*(this: IGESSolidEdgeList; num: int): int {.noSideEffect,
    importcpp: "StartVertexIndex", header: "IGESSolid_EdgeList.hxx".}
proc endVertexList*(this: IGESSolidEdgeList; num: int): Handle[IGESSolidVertexList] {.
    noSideEffect, importcpp: "EndVertexList", header: "IGESSolid_EdgeList.hxx".}
proc endVertexIndex*(this: IGESSolidEdgeList; num: int): int {.noSideEffect,
    importcpp: "EndVertexIndex", header: "IGESSolid_EdgeList.hxx".}
type
  IGESSolidEdgeListbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_EdgeList::get_type_name(@)",
                            header: "IGESSolid_EdgeList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_EdgeList::get_type_descriptor(@)",
    header: "IGESSolid_EdgeList.hxx".}
proc dynamicType*(this: IGESSolidEdgeList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_EdgeList.hxx".}
