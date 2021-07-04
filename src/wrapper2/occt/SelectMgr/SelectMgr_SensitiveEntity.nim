##  Created on: 2014-08-15
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../SelectBasics/SelectBasics_SensitiveEntity, ../Standard/Standard,
  ../Standard/Standard_Type

## ! The purpose of this class is to mark sensitive entities selectable or not
## ! depending on current active selection of parent object for proper BVH traverse

type
  SelectMgr_SensitiveEntity* {.importcpp: "SelectMgr_SensitiveEntity",
                              header: "SelectMgr_SensitiveEntity.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## new
                                                                                                        ## inactive
                                                                                                        ## for
                                                                                                        ## selection
                                                                                                        ## object
                                                                                                        ## with
                                                                                                        ## base
                                                                                                        ## entity
                                                                                                        ## theEntity
    ## !< Related SelectBasics entity
    ## !< Selection activity status


proc constructSelectMgr_SensitiveEntity*(theEntity: handle[
    Select3D_SensitiveEntity]): SelectMgr_SensitiveEntity {.constructor,
    importcpp: "SelectMgr_SensitiveEntity(@)",
    header: "SelectMgr_SensitiveEntity.hxx".}
proc destroySelectMgr_SensitiveEntity*(this: var SelectMgr_SensitiveEntity) {.
    importcpp: "#.~SelectMgr_SensitiveEntity()",
    header: "SelectMgr_SensitiveEntity.hxx".}
proc Clear*(this: var SelectMgr_SensitiveEntity) {.importcpp: "Clear",
    header: "SelectMgr_SensitiveEntity.hxx".}
proc BaseSensitive*(this: SelectMgr_SensitiveEntity): handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "BaseSensitive",
                               header: "SelectMgr_SensitiveEntity.hxx".}
proc IsActiveForSelection*(this: SelectMgr_SensitiveEntity): Standard_Boolean {.
    noSideEffect, importcpp: "IsActiveForSelection",
    header: "SelectMgr_SensitiveEntity.hxx".}
proc ResetSelectionActiveStatus*(this: SelectMgr_SensitiveEntity) {.noSideEffect,
    importcpp: "ResetSelectionActiveStatus",
    header: "SelectMgr_SensitiveEntity.hxx".}
proc SetActiveForSelection*(this: SelectMgr_SensitiveEntity) {.noSideEffect,
    importcpp: "SetActiveForSelection", header: "SelectMgr_SensitiveEntity.hxx".}
proc DumpJson*(this: SelectMgr_SensitiveEntity; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_SensitiveEntity.hxx".}
type
  SelectMgr_SensitiveEntitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_SensitiveEntity::get_type_name(@)",
                              header: "SelectMgr_SensitiveEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_SensitiveEntity::get_type_descriptor(@)",
    header: "SelectMgr_SensitiveEntity.hxx".}
proc DynamicType*(this: SelectMgr_SensitiveEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_SensitiveEntity.hxx".}
discard "forward decl of SelectMgr_SensitiveEntity"
type
  Handle_SelectMgr_SensitiveEntity* = handle[SelectMgr_SensitiveEntity]
