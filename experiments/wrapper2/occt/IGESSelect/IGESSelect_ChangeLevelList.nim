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
discard "forward decl of IGESSelect_ChangeLevelList"
discard "forward decl of IGESSelect_ChangeLevelList"
type
  HandleC1C1* = Handle[IGESSelectChangeLevelList]

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
  IGESSelectChangeLevelList* {.importcpp: "IGESSelect_ChangeLevelList",
                              header: "IGESSelect_ChangeLevelList.hxx", bycopy.} = object of IGESSelectModelModifier ##
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


proc constructIGESSelectChangeLevelList*(): IGESSelectChangeLevelList {.
    constructor, importcpp: "IGESSelect_ChangeLevelList(@)",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc hasOldNumber*(this: IGESSelectChangeLevelList): bool {.noSideEffect,
    importcpp: "HasOldNumber", header: "IGESSelect_ChangeLevelList.hxx".}
proc oldNumber*(this: IGESSelectChangeLevelList): Handle[IFSelectIntParam] {.
    noSideEffect, importcpp: "OldNumber", header: "IGESSelect_ChangeLevelList.hxx".}
proc setOldNumber*(this: var IGESSelectChangeLevelList;
                  param: Handle[IFSelectIntParam]) {.importcpp: "SetOldNumber",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc hasNewNumber*(this: IGESSelectChangeLevelList): bool {.noSideEffect,
    importcpp: "HasNewNumber", header: "IGESSelect_ChangeLevelList.hxx".}
proc newNumber*(this: IGESSelectChangeLevelList): Handle[IFSelectIntParam] {.
    noSideEffect, importcpp: "NewNumber", header: "IGESSelect_ChangeLevelList.hxx".}
proc setNewNumber*(this: var IGESSelectChangeLevelList;
                  param: Handle[IFSelectIntParam]) {.importcpp: "SetNewNumber",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc performing*(this: IGESSelectChangeLevelList; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_ChangeLevelList.hxx".}
proc label*(this: IGESSelectChangeLevelList): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_ChangeLevelList.hxx".}
type
  IGESSelectChangeLevelListbaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_ChangeLevelList::get_type_name(@)",
                            header: "IGESSelect_ChangeLevelList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_ChangeLevelList::get_type_descriptor(@)",
    header: "IGESSelect_ChangeLevelList.hxx".}
proc dynamicType*(this: IGESSelectChangeLevelList): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_ChangeLevelList.hxx".}

























