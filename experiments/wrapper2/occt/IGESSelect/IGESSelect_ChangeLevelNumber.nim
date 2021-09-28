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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_ChangeLevelNumber"
discard "forward decl of IGESSelect_ChangeLevelNumber"
type
  HandleC1C1* = Handle[IGESSelectChangeLevelNumber]

## ! Changes Level Number (as null or single) to a new single value
## ! Entities attached to a LevelListEntity are ignored
## ! Entities considered can be, either all Entities but those
## ! attached to a LevelListEntity, or Entities attached to a
## ! specific Level Number (0 for not defined).
## !
## ! Remark : this concerns the Directory Part only. The Level List
## ! Entities themselves (their content) are not affected.

type
  IGESSelectChangeLevelNumber* {.importcpp: "IGESSelect_ChangeLevelNumber",
                                header: "IGESSelect_ChangeLevelNumber.hxx", bycopy.} = object of IGESSelectModelModifier ##
                                                                                                                  ## !
                                                                                                                  ## Creates
                                                                                                                  ## a
                                                                                                                  ## ChangeLevelNumber,
                                                                                                                  ## not
                                                                                                                  ## yet
                                                                                                                  ## defined
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## (see
                                                                                                                  ## SetOldNumber
                                                                                                                  ## and
                                                                                                                  ## SetNewNumber)


proc constructIGESSelectChangeLevelNumber*(): IGESSelectChangeLevelNumber {.
    constructor, importcpp: "IGESSelect_ChangeLevelNumber(@)",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc hasOldNumber*(this: IGESSelectChangeLevelNumber): bool {.noSideEffect,
    importcpp: "HasOldNumber", header: "IGESSelect_ChangeLevelNumber.hxx".}
proc oldNumber*(this: IGESSelectChangeLevelNumber): Handle[IFSelectIntParam] {.
    noSideEffect, importcpp: "OldNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc setOldNumber*(this: var IGESSelectChangeLevelNumber;
                  param: Handle[IFSelectIntParam]) {.importcpp: "SetOldNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc newNumber*(this: IGESSelectChangeLevelNumber): Handle[IFSelectIntParam] {.
    noSideEffect, importcpp: "NewNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc setNewNumber*(this: var IGESSelectChangeLevelNumber;
                  param: Handle[IFSelectIntParam]) {.importcpp: "SetNewNumber",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc performing*(this: IGESSelectChangeLevelNumber; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc label*(this: IGESSelectChangeLevelNumber): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_ChangeLevelNumber.hxx".}
type
  IGESSelectChangeLevelNumberbaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_ChangeLevelNumber::get_type_name(@)",
                            header: "IGESSelect_ChangeLevelNumber.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_ChangeLevelNumber::get_type_descriptor(@)",
    header: "IGESSelect_ChangeLevelNumber.hxx".}
proc dynamicType*(this: IGESSelectChangeLevelNumber): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_ChangeLevelNumber.hxx".}

























