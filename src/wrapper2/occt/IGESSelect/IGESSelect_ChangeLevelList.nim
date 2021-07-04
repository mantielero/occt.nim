##  Created on: 1994-08-25
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESSelect_ModelModifier,
  ../Standard/Standard_Boolean

discard "forward decl of IFSelect_IntParam"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_ChangeLevelList"
discard "forward decl of IGESSelect_ChangeLevelList"
type
  Handle_IGESSelect_ChangeLevelList* = handle[IGESSelect_ChangeLevelList]

## ! Changes Level List (in directory part) to a new single value
## ! Only entities attached to a LevelListEntity are considered
## ! If OldNumber is defined, only entities whose LevelList
## ! contains its Value are processed. Else all LevelLists are.
## !
## ! Remark : this concerns the Directory Part only. The Level List
## ! Entities themselves (their content) are not affected.
## !
## ! If NewNumber is defined (positive or zero), it gives the new
## ! value for Level Number. Else, the first value of the LevelList
## ! is set as new LevelNumber

type
  IGESSelect_ChangeLevelList* {.importcpp: "IGESSelect_ChangeLevelList",
                               header: "IGESSelect_ChangeLevelList.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## ChangeLevelList,
                                                                                                                ## not
                                                                                                                ## yet
                                                                                                                ## defined
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## (see
                                                                                                                ## SetOldNumber
                                                                                                                ## and
                                                                                                                ## SetNewNumber)


proc constructIGESSelect_ChangeLevelList*(): IGESSelect_ChangeLevelList {.
    constructor, importcpp: "IGESSelect_ChangeLevelList(@)",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc HasOldNumber*(this: IGESSelect_ChangeLevelList): Standard_Boolean {.
    noSideEffect, importcpp: "HasOldNumber",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc OldNumber*(this: IGESSelect_ChangeLevelList): handle[IFSelect_IntParam] {.
    noSideEffect, importcpp: "OldNumber", header: "IGESSelect_ChangeLevelList.hxx".}
proc SetOldNumber*(this: var IGESSelect_ChangeLevelList;
                  param: handle[IFSelect_IntParam]) {.importcpp: "SetOldNumber",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc HasNewNumber*(this: IGESSelect_ChangeLevelList): Standard_Boolean {.
    noSideEffect, importcpp: "HasNewNumber",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc NewNumber*(this: IGESSelect_ChangeLevelList): handle[IFSelect_IntParam] {.
    noSideEffect, importcpp: "NewNumber", header: "IGESSelect_ChangeLevelList.hxx".}
proc SetNewNumber*(this: var IGESSelect_ChangeLevelList;
                  param: handle[IFSelect_IntParam]) {.importcpp: "SetNewNumber",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc Performing*(this: IGESSelect_ChangeLevelList; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_ChangeLevelList.hxx".}
proc Label*(this: IGESSelect_ChangeLevelList): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_ChangeLevelList.hxx".}
type
  IGESSelect_ChangeLevelListbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_ChangeLevelList::get_type_name(@)",
                              header: "IGESSelect_ChangeLevelList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_ChangeLevelList::get_type_descriptor(@)",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc DynamicType*(this: IGESSelect_ChangeLevelList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_ChangeLevelList.hxx".}