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

## !!!Ignored construct:  # _MAT_ListOfEdge_HeaderFile [NewLine] # _MAT_ListOfEdge_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Transient.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] class MAT_TListNodeOfListOfEdge ;
## Error: did not expect <!!!

discard "forward decl of MAT_Edge"
discard "forward decl of MAT_ListOfEdge"
discard "forward decl of MAT_ListOfEdge"
type
  Handle_MAT_ListOfEdgeMAT_ListOfEdge* = handle[MAT_ListOfEdge]
  MAT_ListOfEdge* {.importcpp: "MAT_ListOfEdge", header: "MAT_ListOfEdge.hxx", bycopy.} = object of Standard_Transient


proc constructMAT_ListOfEdge*(): MAT_ListOfEdge {.constructor,
    importcpp: "MAT_ListOfEdge(@)", header: "MAT_ListOfEdge.hxx".}
proc destroyMAT_ListOfEdge*(this: var MAT_ListOfEdge) {.
    importcpp: "#.~MAT_ListOfEdge()", header: "MAT_ListOfEdge.hxx".}
proc First*(this: var MAT_ListOfEdge) {.importcpp: "First",
                                    header: "MAT_ListOfEdge.hxx".}
proc Last*(this: var MAT_ListOfEdge) {.importcpp: "Last", header: "MAT_ListOfEdge.hxx".}
proc Init*(this: var MAT_ListOfEdge; aniten: handle[MAT_Edge]) {.importcpp: "Init",
    header: "MAT_ListOfEdge.hxx".}
proc Next*(this: var MAT_ListOfEdge) {.importcpp: "Next", header: "MAT_ListOfEdge.hxx".}
proc Previous*(this: var MAT_ListOfEdge) {.importcpp: "Previous",
                                       header: "MAT_ListOfEdge.hxx".}
proc More*(this: MAT_ListOfEdge): Standard_Boolean {.noSideEffect, importcpp: "More",
    header: "MAT_ListOfEdge.hxx".}
proc Current*(this: MAT_ListOfEdge): handle[MAT_Edge] {.noSideEffect,
    importcpp: "Current", header: "MAT_ListOfEdge.hxx".}
proc Current*(this: MAT_ListOfEdge; anitem: handle[MAT_Edge]) {.noSideEffect,
    importcpp: "Current", header: "MAT_ListOfEdge.hxx".}
proc FirstItem*(this: MAT_ListOfEdge): handle[MAT_Edge] {.noSideEffect,
    importcpp: "FirstItem", header: "MAT_ListOfEdge.hxx".}
proc LastItem*(this: MAT_ListOfEdge): handle[MAT_Edge] {.noSideEffect,
    importcpp: "LastItem", header: "MAT_ListOfEdge.hxx".}
proc PreviousItem*(this: MAT_ListOfEdge): handle[MAT_Edge] {.noSideEffect,
    importcpp: "PreviousItem", header: "MAT_ListOfEdge.hxx".}
proc NextItem*(this: MAT_ListOfEdge): handle[MAT_Edge] {.noSideEffect,
    importcpp: "NextItem", header: "MAT_ListOfEdge.hxx".}
proc Number*(this: MAT_ListOfEdge): Standard_Integer {.noSideEffect,
    importcpp: "Number", header: "MAT_ListOfEdge.hxx".}
proc Index*(this: MAT_ListOfEdge): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "MAT_ListOfEdge.hxx".}
proc Brackets*(this: var MAT_ListOfEdge; anindex: Standard_Integer): handle[MAT_Edge] {.
    importcpp: "Brackets", header: "MAT_ListOfEdge.hxx".}
proc `()`*(this: var MAT_ListOfEdge; anindex: Standard_Integer): handle[MAT_Edge] {.
    importcpp: "#(@)", header: "MAT_ListOfEdge.hxx".}
proc Unlink*(this: var MAT_ListOfEdge) {.importcpp: "Unlink",
                                     header: "MAT_ListOfEdge.hxx".}
proc LinkBefore*(this: var MAT_ListOfEdge; anitem: handle[MAT_Edge]) {.
    importcpp: "LinkBefore", header: "MAT_ListOfEdge.hxx".}
proc LinkAfter*(this: var MAT_ListOfEdge; anitem: handle[MAT_Edge]) {.
    importcpp: "LinkAfter", header: "MAT_ListOfEdge.hxx".}
proc FrontAdd*(this: var MAT_ListOfEdge; anitem: handle[MAT_Edge]) {.
    importcpp: "FrontAdd", header: "MAT_ListOfEdge.hxx".}
proc BackAdd*(this: var MAT_ListOfEdge; anitem: handle[MAT_Edge]) {.
    importcpp: "BackAdd", header: "MAT_ListOfEdge.hxx".}
proc Permute*(this: var MAT_ListOfEdge) {.importcpp: "Permute",
                                      header: "MAT_ListOfEdge.hxx".}
proc Loop*(this: MAT_ListOfEdge) {.noSideEffect, importcpp: "Loop",
                                header: "MAT_ListOfEdge.hxx".}
proc IsEmpty*(this: MAT_ListOfEdge): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "MAT_ListOfEdge.hxx".}
proc Dump*(this: var MAT_ListOfEdge; ashift: Standard_Integer;
          alevel: Standard_Integer) {.importcpp: "Dump",
                                    header: "MAT_ListOfEdge.hxx".}
type
  MAT_ListOfEdgebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_ListOfEdge::get_type_name(@)",
                              header: "MAT_ListOfEdge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_ListOfEdge::get_type_descriptor(@)",
    header: "MAT_ListOfEdge.hxx".}
proc DynamicType*(this: MAT_ListOfEdge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_ListOfEdge.hxx".}
## !!!Ignored construct:  # Item opencascade :: handle < MAT_Edge > [end of template] [NewLine] # Item_hxx < MAT_Edge . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfEdge [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfEdge . hxx > [NewLine] # Handle_MAT_TListNode opencascade :: handle < MAT_TListNodeOfListOfEdge > [end of template] [NewLine] # MAT_TList MAT_ListOfEdge [NewLine] # MAT_TList_hxx < MAT_ListOfEdge . hxx > [NewLine] # Handle_MAT_TList opencascade :: handle < MAT_ListOfEdge > [end of template] [NewLine] # < MAT_TList . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_ListOfEdge_HeaderFile [NewLine]
## Error: did not expect <!!!
