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

## !!!Ignored construct:  # _MAT_TListNodeOfListOfBisector_HeaderFile [NewLine] # _MAT_TListNodeOfListOfBisector_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ../Standard/Standard_Transient.hxx [NewLine] class MAT_Bisector ;
## Error: did not expect <!!!

discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT_TListNodeOfListOfBisector"
discard "forward decl of MAT_TListNodeOfListOfBisector"
type
  Handle_MAT_TListNodeOfListOfBisectorMAT_TListNodeOfListOfBisector* = handle[
      MAT_TListNodeOfListOfBisector]
  MAT_TListNodeOfListOfBisector* {.importcpp: "MAT_TListNodeOfListOfBisector",
                                  header: "MAT_TListNodeOfListOfBisector.hxx",
                                  bycopy.} = object of Standard_Transient


proc constructMAT_TListNodeOfListOfBisector*(): MAT_TListNodeOfListOfBisector {.
    constructor, importcpp: "MAT_TListNodeOfListOfBisector(@)",
    header: "MAT_TListNodeOfListOfBisector.hxx".}
proc constructMAT_TListNodeOfListOfBisector*(anitem: handle[MAT_Bisector]): MAT_TListNodeOfListOfBisector {.
    constructor, importcpp: "MAT_TListNodeOfListOfBisector(@)",
    header: "MAT_TListNodeOfListOfBisector.hxx".}
proc GetItem*(this: MAT_TListNodeOfListOfBisector): handle[MAT_Bisector] {.
    noSideEffect, importcpp: "GetItem", header: "MAT_TListNodeOfListOfBisector.hxx".}
proc Next*(this: MAT_TListNodeOfListOfBisector): handle[
    MAT_TListNodeOfListOfBisector] {.noSideEffect, importcpp: "Next",
                                    header: "MAT_TListNodeOfListOfBisector.hxx".}
proc Previous*(this: MAT_TListNodeOfListOfBisector): handle[
    MAT_TListNodeOfListOfBisector] {.noSideEffect, importcpp: "Previous",
                                    header: "MAT_TListNodeOfListOfBisector.hxx".}
proc SetItem*(this: var MAT_TListNodeOfListOfBisector; anitem: handle[MAT_Bisector]) {.
    importcpp: "SetItem", header: "MAT_TListNodeOfListOfBisector.hxx".}
proc Next*(this: var MAT_TListNodeOfListOfBisector;
          atlistnode: handle[MAT_TListNodeOfListOfBisector]) {.importcpp: "Next",
    header: "MAT_TListNodeOfListOfBisector.hxx".}
proc Previous*(this: var MAT_TListNodeOfListOfBisector;
              atlistnode: handle[MAT_TListNodeOfListOfBisector]) {.
    importcpp: "Previous", header: "MAT_TListNodeOfListOfBisector.hxx".}
proc Dummy*(this: MAT_TListNodeOfListOfBisector) {.noSideEffect, importcpp: "Dummy",
    header: "MAT_TListNodeOfListOfBisector.hxx".}
type
  MAT_TListNodeOfListOfBisectorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_TListNodeOfListOfBisector::get_type_name(@)",
                              header: "MAT_TListNodeOfListOfBisector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_TListNodeOfListOfBisector::get_type_descriptor(@)",
    header: "MAT_TListNodeOfListOfBisector.hxx".}
proc DynamicType*(this: MAT_TListNodeOfListOfBisector): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MAT_TListNodeOfListOfBisector.hxx".}
## !!!Ignored construct:  # Item opencascade :: handle < MAT_Bisector > [end of template] [NewLine] # Item_hxx < MAT_Bisector . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfBisector [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfBisector . hxx > [NewLine] # Handle_MAT_TListNode opencascade :: handle < MAT_TListNodeOfListOfBisector > [end of template] [NewLine] # MAT_TList MAT_ListOfBisector [NewLine] # MAT_TList_hxx < MAT_ListOfBisector . hxx > [NewLine] # Handle_MAT_TList opencascade :: handle < MAT_ListOfBisector > [end of template] [NewLine] # < MAT_TListNode . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_TListNodeOfListOfBisector_HeaderFile [NewLine]
## Error: did not expect <!!!
