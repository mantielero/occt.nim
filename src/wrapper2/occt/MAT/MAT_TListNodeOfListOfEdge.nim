##  Created on: 1992-09-22
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _MAT_TListNodeOfListOfEdge_HeaderFile [NewLine] # _MAT_TListNodeOfListOfEdge_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ../Standard/Standard_Transient.hxx [NewLine] class MAT_Edge ;
## Error: did not expect <!!!

discard "forward decl of MAT_ListOfEdge"
discard "forward decl of MAT_TListNodeOfListOfEdge"
discard "forward decl of MAT_TListNodeOfListOfEdge"
type
  Handle_MAT_TListNodeOfListOfEdgeMAT_TListNodeOfListOfEdge* = handle[
      MAT_TListNodeOfListOfEdge]
  MAT_TListNodeOfListOfEdge* {.importcpp: "MAT_TListNodeOfListOfEdge",
                              header: "MAT_TListNodeOfListOfEdge.hxx", bycopy.} = object of Standard_Transient


proc constructMAT_TListNodeOfListOfEdge*(): MAT_TListNodeOfListOfEdge {.
    constructor, importcpp: "MAT_TListNodeOfListOfEdge(@)",
    header: "MAT_TListNodeOfListOfEdge.hxx".}
proc constructMAT_TListNodeOfListOfEdge*(anitem: handle[MAT_Edge]): MAT_TListNodeOfListOfEdge {.
    constructor, importcpp: "MAT_TListNodeOfListOfEdge(@)",
    header: "MAT_TListNodeOfListOfEdge.hxx".}
proc GetItem*(this: MAT_TListNodeOfListOfEdge): handle[MAT_Edge] {.noSideEffect,
    importcpp: "GetItem", header: "MAT_TListNodeOfListOfEdge.hxx".}
proc Next*(this: MAT_TListNodeOfListOfEdge): handle[MAT_TListNodeOfListOfEdge] {.
    noSideEffect, importcpp: "Next", header: "MAT_TListNodeOfListOfEdge.hxx".}
proc Previous*(this: MAT_TListNodeOfListOfEdge): handle[MAT_TListNodeOfListOfEdge] {.
    noSideEffect, importcpp: "Previous", header: "MAT_TListNodeOfListOfEdge.hxx".}
proc SetItem*(this: var MAT_TListNodeOfListOfEdge; anitem: handle[MAT_Edge]) {.
    importcpp: "SetItem", header: "MAT_TListNodeOfListOfEdge.hxx".}
proc Next*(this: var MAT_TListNodeOfListOfEdge;
          atlistnode: handle[MAT_TListNodeOfListOfEdge]) {.importcpp: "Next",
    header: "MAT_TListNodeOfListOfEdge.hxx".}
proc Previous*(this: var MAT_TListNodeOfListOfEdge;
              atlistnode: handle[MAT_TListNodeOfListOfEdge]) {.
    importcpp: "Previous", header: "MAT_TListNodeOfListOfEdge.hxx".}
proc Dummy*(this: MAT_TListNodeOfListOfEdge) {.noSideEffect, importcpp: "Dummy",
    header: "MAT_TListNodeOfListOfEdge.hxx".}
type
  MAT_TListNodeOfListOfEdgebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_TListNodeOfListOfEdge::get_type_name(@)",
                              header: "MAT_TListNodeOfListOfEdge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_TListNodeOfListOfEdge::get_type_descriptor(@)",
    header: "MAT_TListNodeOfListOfEdge.hxx".}
proc DynamicType*(this: MAT_TListNodeOfListOfEdge): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "MAT_TListNodeOfListOfEdge.hxx".}
## !!!Ignored construct:  # Item opencascade :: handle < MAT_Edge > [end of template] [NewLine] # Item_hxx < MAT_Edge . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfEdge [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfEdge . hxx > [NewLine] # Handle_MAT_TListNode opencascade :: handle < MAT_TListNodeOfListOfEdge > [end of template] [NewLine] # MAT_TList MAT_ListOfEdge [NewLine] # MAT_TList_hxx < MAT_ListOfEdge . hxx > [NewLine] # Handle_MAT_TList opencascade :: handle < MAT_ListOfEdge > [end of template] [NewLine] # < MAT_TListNode . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_TListNodeOfListOfEdge_HeaderFile [NewLine]
## Error: did not expect <!!!