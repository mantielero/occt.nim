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

## !!!Ignored construct:  # _MAT_ListOfEdge_HeaderFile [NewLine] # _MAT_ListOfEdge_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class MAT_TListNodeOfListOfEdge ;
## Error: did not expect <!!!

discard "forward decl of MAT_Edge"
discard "forward decl of MAT_ListOfEdge"
discard "forward decl of MAT_ListOfEdge"
type
  HandleMAT_ListOfEdgeMAT_ListOfEdge* = Handle[MAT_ListOfEdge]
  MAT_ListOfEdge* {.importcpp: "MAT_ListOfEdge", header: "MAT_ListOfEdge.hxx", bycopy.} = object of StandardTransient


proc constructMAT_ListOfEdge*(): MAT_ListOfEdge {.constructor,
    importcpp: "MAT_ListOfEdge(@)", header: "MAT_ListOfEdge.hxx".}
proc destroyMAT_ListOfEdge*(this: var MAT_ListOfEdge) {.
    importcpp: "#.~MAT_ListOfEdge()", header: "MAT_ListOfEdge.hxx".}
proc first*(this: var MAT_ListOfEdge) {.importcpp: "First",
                                    header: "MAT_ListOfEdge.hxx".}
proc last*(this: var MAT_ListOfEdge) {.importcpp: "Last", header: "MAT_ListOfEdge.hxx".}
proc init*(this: var MAT_ListOfEdge; aniten: Handle[MAT_Edge]) {.importcpp: "Init",
    header: "MAT_ListOfEdge.hxx".}
proc next*(this: var MAT_ListOfEdge) {.importcpp: "Next", header: "MAT_ListOfEdge.hxx".}
proc previous*(this: var MAT_ListOfEdge) {.importcpp: "Previous",
                                       header: "MAT_ListOfEdge.hxx".}
proc more*(this: MAT_ListOfEdge): StandardBoolean {.noSideEffect, importcpp: "More",
    header: "MAT_ListOfEdge.hxx".}
proc current*(this: MAT_ListOfEdge): Handle[MAT_Edge] {.noSideEffect,
    importcpp: "Current", header: "MAT_ListOfEdge.hxx".}
proc current*(this: MAT_ListOfEdge; anitem: Handle[MAT_Edge]) {.noSideEffect,
    importcpp: "Current", header: "MAT_ListOfEdge.hxx".}
proc firstItem*(this: MAT_ListOfEdge): Handle[MAT_Edge] {.noSideEffect,
    importcpp: "FirstItem", header: "MAT_ListOfEdge.hxx".}
proc lastItem*(this: MAT_ListOfEdge): Handle[MAT_Edge] {.noSideEffect,
    importcpp: "LastItem", header: "MAT_ListOfEdge.hxx".}
proc previousItem*(this: MAT_ListOfEdge): Handle[MAT_Edge] {.noSideEffect,
    importcpp: "PreviousItem", header: "MAT_ListOfEdge.hxx".}
proc nextItem*(this: MAT_ListOfEdge): Handle[MAT_Edge] {.noSideEffect,
    importcpp: "NextItem", header: "MAT_ListOfEdge.hxx".}
proc number*(this: MAT_ListOfEdge): StandardInteger {.noSideEffect,
    importcpp: "Number", header: "MAT_ListOfEdge.hxx".}
proc index*(this: MAT_ListOfEdge): StandardInteger {.noSideEffect,
    importcpp: "Index", header: "MAT_ListOfEdge.hxx".}
proc brackets*(this: var MAT_ListOfEdge; anindex: StandardInteger): Handle[MAT_Edge] {.
    importcpp: "Brackets", header: "MAT_ListOfEdge.hxx".}
proc `()`*(this: var MAT_ListOfEdge; anindex: StandardInteger): Handle[MAT_Edge] {.
    importcpp: "#(@)", header: "MAT_ListOfEdge.hxx".}
proc unlink*(this: var MAT_ListOfEdge) {.importcpp: "Unlink",
                                     header: "MAT_ListOfEdge.hxx".}
proc linkBefore*(this: var MAT_ListOfEdge; anitem: Handle[MAT_Edge]) {.
    importcpp: "LinkBefore", header: "MAT_ListOfEdge.hxx".}
proc linkAfter*(this: var MAT_ListOfEdge; anitem: Handle[MAT_Edge]) {.
    importcpp: "LinkAfter", header: "MAT_ListOfEdge.hxx".}
proc frontAdd*(this: var MAT_ListOfEdge; anitem: Handle[MAT_Edge]) {.
    importcpp: "FrontAdd", header: "MAT_ListOfEdge.hxx".}
proc backAdd*(this: var MAT_ListOfEdge; anitem: Handle[MAT_Edge]) {.
    importcpp: "BackAdd", header: "MAT_ListOfEdge.hxx".}
proc permute*(this: var MAT_ListOfEdge) {.importcpp: "Permute",
                                      header: "MAT_ListOfEdge.hxx".}
proc loop*(this: MAT_ListOfEdge) {.noSideEffect, importcpp: "Loop",
                                header: "MAT_ListOfEdge.hxx".}
proc isEmpty*(this: MAT_ListOfEdge): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "MAT_ListOfEdge.hxx".}
proc dump*(this: var MAT_ListOfEdge; ashift: StandardInteger; alevel: StandardInteger) {.
    importcpp: "Dump", header: "MAT_ListOfEdge.hxx".}
type
  MAT_ListOfEdgebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_ListOfEdge::get_type_name(@)",
                            header: "MAT_ListOfEdge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_ListOfEdge::get_type_descriptor(@)",
    header: "MAT_ListOfEdge.hxx".}
proc dynamicType*(this: MAT_ListOfEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_ListOfEdge.hxx".}
## !!!Ignored construct:  # Item opencascade :: handle < MAT_Edge > [end of template] [NewLine] # Item_hxx < MAT_Edge . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfEdge [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfEdge . hxx > [NewLine] # Handle_MAT_TListNode opencascade :: handle < MAT_TListNodeOfListOfEdge > [end of template] [NewLine] # MAT_TList MAT_ListOfEdge [NewLine] # MAT_TList_hxx < MAT_ListOfEdge . hxx > [NewLine] # Handle_MAT_TList opencascade :: handle < MAT_ListOfEdge > [end of template] [NewLine] # < MAT_TList . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_ListOfEdge_HeaderFile
## Error: did not expect <!!!


