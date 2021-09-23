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

## !!!Ignored construct:  # _MAT_ListOfBisector_HeaderFile [NewLine] # _MAT_ListOfBisector_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Transient.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] class MAT_TListNodeOfListOfBisector ;
## Error: did not expect <!!!

discard "forward decl of MAT_Bisector"
discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT_ListOfBisector"
type
  Handle_MAT_ListOfBisectorMAT_ListOfBisector* = handle[MAT_ListOfBisector]
  MAT_ListOfBisector* {.importcpp: "MAT_ListOfBisector",
                       header: "MAT_ListOfBisector.hxx", bycopy.} = object of Standard_Transient


proc constructMAT_ListOfBisector*(): MAT_ListOfBisector {.constructor,
    importcpp: "MAT_ListOfBisector(@)", header: "MAT_ListOfBisector.hxx".}
proc destroyMAT_ListOfBisector*(this: var MAT_ListOfBisector) {.
    importcpp: "#.~MAT_ListOfBisector()", header: "MAT_ListOfBisector.hxx".}
proc First*(this: var MAT_ListOfBisector) {.importcpp: "First",
                                        header: "MAT_ListOfBisector.hxx".}
proc Last*(this: var MAT_ListOfBisector) {.importcpp: "Last",
                                       header: "MAT_ListOfBisector.hxx".}
proc Init*(this: var MAT_ListOfBisector; aniten: handle[MAT_Bisector]) {.
    importcpp: "Init", header: "MAT_ListOfBisector.hxx".}
proc Next*(this: var MAT_ListOfBisector) {.importcpp: "Next",
                                       header: "MAT_ListOfBisector.hxx".}
proc Previous*(this: var MAT_ListOfBisector) {.importcpp: "Previous",
    header: "MAT_ListOfBisector.hxx".}
proc More*(this: MAT_ListOfBisector): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "MAT_ListOfBisector.hxx".}
proc Current*(this: MAT_ListOfBisector): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "Current", header: "MAT_ListOfBisector.hxx".}
proc Current*(this: MAT_ListOfBisector; anitem: handle[MAT_Bisector]) {.noSideEffect,
    importcpp: "Current", header: "MAT_ListOfBisector.hxx".}
proc FirstItem*(this: MAT_ListOfBisector): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "FirstItem", header: "MAT_ListOfBisector.hxx".}
proc LastItem*(this: MAT_ListOfBisector): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "LastItem", header: "MAT_ListOfBisector.hxx".}
proc PreviousItem*(this: MAT_ListOfBisector): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "PreviousItem", header: "MAT_ListOfBisector.hxx".}
proc NextItem*(this: MAT_ListOfBisector): handle[MAT_Bisector] {.noSideEffect,
    importcpp: "NextItem", header: "MAT_ListOfBisector.hxx".}
proc Number*(this: MAT_ListOfBisector): Standard_Integer {.noSideEffect,
    importcpp: "Number", header: "MAT_ListOfBisector.hxx".}
proc Index*(this: MAT_ListOfBisector): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "MAT_ListOfBisector.hxx".}
proc Brackets*(this: var MAT_ListOfBisector; anindex: Standard_Integer): handle[
    MAT_Bisector] {.importcpp: "Brackets", header: "MAT_ListOfBisector.hxx".}
proc `()`*(this: var MAT_ListOfBisector; anindex: Standard_Integer): handle[
    MAT_Bisector] {.importcpp: "#(@)", header: "MAT_ListOfBisector.hxx".}
proc Unlink*(this: var MAT_ListOfBisector) {.importcpp: "Unlink",
    header: "MAT_ListOfBisector.hxx".}
proc LinkBefore*(this: var MAT_ListOfBisector; anitem: handle[MAT_Bisector]) {.
    importcpp: "LinkBefore", header: "MAT_ListOfBisector.hxx".}
proc LinkAfter*(this: var MAT_ListOfBisector; anitem: handle[MAT_Bisector]) {.
    importcpp: "LinkAfter", header: "MAT_ListOfBisector.hxx".}
proc FrontAdd*(this: var MAT_ListOfBisector; anitem: handle[MAT_Bisector]) {.
    importcpp: "FrontAdd", header: "MAT_ListOfBisector.hxx".}
proc BackAdd*(this: var MAT_ListOfBisector; anitem: handle[MAT_Bisector]) {.
    importcpp: "BackAdd", header: "MAT_ListOfBisector.hxx".}
proc Permute*(this: var MAT_ListOfBisector) {.importcpp: "Permute",
    header: "MAT_ListOfBisector.hxx".}
proc Loop*(this: MAT_ListOfBisector) {.noSideEffect, importcpp: "Loop",
                                    header: "MAT_ListOfBisector.hxx".}
proc IsEmpty*(this: MAT_ListOfBisector): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "MAT_ListOfBisector.hxx".}
proc Dump*(this: var MAT_ListOfBisector; ashift: Standard_Integer;
          alevel: Standard_Integer) {.importcpp: "Dump",
                                    header: "MAT_ListOfBisector.hxx".}
type
  MAT_ListOfBisectorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_ListOfBisector::get_type_name(@)",
                              header: "MAT_ListOfBisector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_ListOfBisector::get_type_descriptor(@)",
    header: "MAT_ListOfBisector.hxx".}
proc DynamicType*(this: MAT_ListOfBisector): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_ListOfBisector.hxx".}
## !!!Ignored construct:  # Item opencascade :: handle < MAT_Bisector > [end of template] [NewLine] # Item_hxx < MAT_Bisector . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfBisector [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfBisector . hxx > [NewLine] # Handle_MAT_TListNode opencascade :: handle < MAT_TListNodeOfListOfBisector > [end of template] [NewLine] # MAT_TList MAT_ListOfBisector [NewLine] # MAT_TList_hxx < MAT_ListOfBisector . hxx > [NewLine] # Handle_MAT_TList opencascade :: handle < MAT_ListOfBisector > [end of template] [NewLine] # < MAT_TList . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_ListOfBisector_HeaderFile [NewLine]
## Error: did not expect <!!!
