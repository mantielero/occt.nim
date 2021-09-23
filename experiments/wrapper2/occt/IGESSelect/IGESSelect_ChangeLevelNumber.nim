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
discard "forward decl of IGESSelect_ChangeLevelNumber"
discard "forward decl of IGESSelect_ChangeLevelNumber"
type
  Handle_IGESSelect_ChangeLevelNumber* = handle[IGESSelect_ChangeLevelNumber]

## ! Changes Level Number (as null or single) to a new single value
## ! Entities attached to a LevelListEntity are ignored
## ! Entities considered can be, either all Entities but those
## ! attached to a LevelListEntity, or Entities attached to a
## ! specific Level Number (0 for not defined).
## !
## ! Remark : this concerns the Directory Part only. The Level List
## ! Entities themselves (their content) are not affected.

type
  IGESSelect_ChangeLevelNumber* {.importcpp: "IGESSelect_ChangeLevelNumber",
                                 header: "IGESSelect_ChangeLevelNumber.hxx",
                                 bycopy.} = object of IGESSelect_ModelModifier ## !
                                                                          ## Creates a
                                                                          ## ChangeLevelNumber, not yet
                                                                          ## defined
                                                                          ## ! (see
                                                                          ## SetOldNumber and
                                                                          ## SetNewNumber)


proc constructIGESSelect_ChangeLevelNumber*(): IGESSelect_ChangeLevelNumber {.
    constructor, importcpp: "IGESSelect_ChangeLevelNumber(@)",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc HasOldNumber*(this: IGESSelect_ChangeLevelNumber): Standard_Boolean {.
    noSideEffect, importcpp: "HasOldNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc OldNumber*(this: IGESSelect_ChangeLevelNumber): handle[IFSelect_IntParam] {.
    noSideEffect, importcpp: "OldNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc SetOldNumber*(this: var IGESSelect_ChangeLevelNumber;
                  param: handle[IFSelect_IntParam]) {.importcpp: "SetOldNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc NewNumber*(this: IGESSelect_ChangeLevelNumber): handle[IFSelect_IntParam] {.
    noSideEffect, importcpp: "NewNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc SetNewNumber*(this: var IGESSelect_ChangeLevelNumber;
                  param: handle[IFSelect_IntParam]) {.importcpp: "SetNewNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc Performing*(this: IGESSelect_ChangeLevelNumber;
                ctx: var IFSelect_ContextModif; target: handle[IGESData_IGESModel];
                TC: var Interface_CopyTool) {.noSideEffect, importcpp: "Performing",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc Label*(this: IGESSelect_ChangeLevelNumber): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_ChangeLevelNumber.hxx".}
type
  IGESSelect_ChangeLevelNumberbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_ChangeLevelNumber::get_type_name(@)",
                              header: "IGESSelect_ChangeLevelNumber.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_ChangeLevelNumber::get_type_descriptor(@)",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc DynamicType*(this: IGESSelect_ChangeLevelNumber): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_ChangeLevelNumber.hxx".}