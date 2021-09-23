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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_HArray1OfIGESEntity, IGESSolid_HArray1OfVertexList,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_VertexList"
discard "forward decl of IGESSolid_EdgeList"
discard "forward decl of IGESSolid_EdgeList"
type
  Handle_IGESSolid_EdgeList* = handle[IGESSolid_EdgeList]

## ! defines EdgeList, Type <504> Form <1>
## ! in package IGESSolid
## ! EdgeList is defined as a segment joining two vertices
## ! It contains one or more edge tuples.

type
  IGESSolid_EdgeList* {.importcpp: "IGESSolid_EdgeList",
                       header: "IGESSolid_EdgeList.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_EdgeList*(): IGESSolid_EdgeList {.constructor,
    importcpp: "IGESSolid_EdgeList(@)", header: "IGESSolid_EdgeList.hxx".}
proc Init*(this: var IGESSolid_EdgeList;
          curves: handle[IGESData_HArray1OfIGESEntity];
          startVertexList: handle[IGESSolid_HArray1OfVertexList];
          startVertexIndex: handle[TColStd_HArray1OfInteger];
          endVertexList: handle[IGESSolid_HArray1OfVertexList];
          endVertexIndex: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESSolid_EdgeList.hxx".}
proc NbEdges*(this: IGESSolid_EdgeList): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "IGESSolid_EdgeList.hxx".}
proc Curve*(this: IGESSolid_EdgeList; num: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Curve",
                          header: "IGESSolid_EdgeList.hxx".}
proc StartVertexList*(this: IGESSolid_EdgeList; num: Standard_Integer): handle[
    IGESSolid_VertexList] {.noSideEffect, importcpp: "StartVertexList",
                           header: "IGESSolid_EdgeList.hxx".}
proc StartVertexIndex*(this: IGESSolid_EdgeList; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "StartVertexIndex", header: "IGESSolid_EdgeList.hxx".}
proc EndVertexList*(this: IGESSolid_EdgeList; num: Standard_Integer): handle[
    IGESSolid_VertexList] {.noSideEffect, importcpp: "EndVertexList",
                           header: "IGESSolid_EdgeList.hxx".}
proc EndVertexIndex*(this: IGESSolid_EdgeList; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "EndVertexIndex", header: "IGESSolid_EdgeList.hxx".}
type
  IGESSolid_EdgeListbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_EdgeList::get_type_name(@)",
                              header: "IGESSolid_EdgeList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_EdgeList::get_type_descriptor(@)",
    header: "IGESSolid_EdgeList.hxx".}
proc DynamicType*(this: IGESSolid_EdgeList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_EdgeList.hxx".}