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

## !!!Ignored construct:  # _MAT_ListOfBisector_HeaderFile [NewLine] # _MAT_ListOfBisector_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class MAT_TListNodeOfListOfBisector ;
## Error: did not expect <!!!

discard "forward decl of MAT_Bisector"
discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT_ListOfBisector"
type
  HandleMAT_ListOfBisectorMAT_ListOfBisector* = Handle[MAT_ListOfBisector]
  MAT_ListOfBisector* {.importcpp: "MAT_ListOfBisector",
                       header: "MAT_ListOfBisector.hxx", bycopy.} = object of StandardTransient


proc constructMAT_ListOfBisector*(): MAT_ListOfBisector {.constructor,
    importcpp: "MAT_ListOfBisector(@)", header: "MAT_ListOfBisector.hxx".}
proc destroyMAT_ListOfBisector*(this: var MAT_ListOfBisector) {.
    importcpp: "#.~MAT_ListOfBisector()", header: "MAT_ListOfBisector.hxx".}
proc first*(this: var MAT_ListOfBisector) {.importcpp: "First",
                                        header: "MAT_ListOfBisector.hxx".}
proc last*(this: var MAT_ListOfBisector) {.importcpp: "Last",
                                       header: "MAT_ListOfBisector.hxx".}
proc init*(this: var MAT_ListOfBisector; aniten: Handle[MAT_Bisector]) {.
    importcpp: "Init", header: "MAT_ListOfBisector.hxx".}
proc next*(this: var MAT_ListOfBisector) {.importcpp: "Next",
                                       header: "MAT_ListOfBisector.hxx".}
proc previous*(this: var MAT_ListOfBisector) {.importcpp: "Previous",
    header: "MAT_ListOfBisector.hxx".}
proc more*(this: MAT_ListOfBisector): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "MAT_ListOfBisector.hxx".}
proc current*(this: MAT_ListOfBisector): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "Current", header: "MAT_ListOfBisector.hxx".}
proc current*(this: MAT_ListOfBisector; anitem: Handle[MAT_Bisector]) {.noSideEffect,
    importcpp: "Current", header: "MAT_ListOfBisector.hxx".}
proc firstItem*(this: MAT_ListOfBisector): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "FirstItem", header: "MAT_ListOfBisector.hxx".}
proc lastItem*(this: MAT_ListOfBisector): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "LastItem", header: "MAT_ListOfBisector.hxx".}
proc previousItem*(this: MAT_ListOfBisector): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "PreviousItem", header: "MAT_ListOfBisector.hxx".}
proc nextItem*(this: MAT_ListOfBisector): Handle[MAT_Bisector] {.noSideEffect,
    importcpp: "NextItem", header: "MAT_ListOfBisector.hxx".}
proc number*(this: MAT_ListOfBisector): StandardInteger {.noSideEffect,
    importcpp: "Number", header: "MAT_ListOfBisector.hxx".}
proc index*(this: MAT_ListOfBisector): StandardInteger {.noSideEffect,
    importcpp: "Index", header: "MAT_ListOfBisector.hxx".}
proc brackets*(this: var MAT_ListOfBisector; anindex: StandardInteger): Handle[
    MAT_Bisector] {.importcpp: "Brackets", header: "MAT_ListOfBisector.hxx".}
proc `()`*(this: var MAT_ListOfBisector; anindex: StandardInteger): Handle[
    MAT_Bisector] {.importcpp: "#(@)", header: "MAT_ListOfBisector.hxx".}
proc unlink*(this: var MAT_ListOfBisector) {.importcpp: "Unlink",
    header: "MAT_ListOfBisector.hxx".}
proc linkBefore*(this: var MAT_ListOfBisector; anitem: Handle[MAT_Bisector]) {.
    importcpp: "LinkBefore", header: "MAT_ListOfBisector.hxx".}
proc linkAfter*(this: var MAT_ListOfBisector; anitem: Handle[MAT_Bisector]) {.
    importcpp: "LinkAfter", header: "MAT_ListOfBisector.hxx".}
proc frontAdd*(this: var MAT_ListOfBisector; anitem: Handle[MAT_Bisector]) {.
    importcpp: "FrontAdd", header: "MAT_ListOfBisector.hxx".}
proc backAdd*(this: var MAT_ListOfBisector; anitem: Handle[MAT_Bisector]) {.
    importcpp: "BackAdd", header: "MAT_ListOfBisector.hxx".}
proc permute*(this: var MAT_ListOfBisector) {.importcpp: "Permute",
    header: "MAT_ListOfBisector.hxx".}
proc loop*(this: MAT_ListOfBisector) {.noSideEffect, importcpp: "Loop",
                                    header: "MAT_ListOfBisector.hxx".}
proc isEmpty*(this: MAT_ListOfBisector): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "MAT_ListOfBisector.hxx".}
proc dump*(this: var MAT_ListOfBisector; ashift: StandardInteger;
          alevel: StandardInteger) {.importcpp: "Dump",
                                   header: "MAT_ListOfBisector.hxx".}
type
  MAT_ListOfBisectorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_ListOfBisector::get_type_name(@)",
                            header: "MAT_ListOfBisector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_ListOfBisector::get_type_descriptor(@)",
    header: "MAT_ListOfBisector.hxx".}
proc dynamicType*(this: MAT_ListOfBisector): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_ListOfBisector.hxx".}
## !!!Ignored construct:  # Item opencascade :: handle < MAT_Bisector > [end of template] [NewLine] # Item_hxx < MAT_Bisector . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfBisector [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfBisector . hxx > [NewLine] # Handle_MAT_TListNode opencascade :: handle < MAT_TListNodeOfListOfBisector > [end of template] [NewLine] # MAT_TList MAT_ListOfBisector [NewLine] # MAT_TList_hxx < MAT_ListOfBisector . hxx > [NewLine] # Handle_MAT_TList opencascade :: handle < MAT_ListOfBisector > [end of template] [NewLine] # < MAT_TList . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_ListOfBisector_HeaderFile
## Error: did not expect <!!!


