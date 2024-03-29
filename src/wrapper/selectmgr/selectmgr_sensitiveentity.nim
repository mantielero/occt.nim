import ../standard/standard_types
import selectmgr_types





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

## ! The purpose of this class is to mark sensitive entities selectable or not
## ! depending on current active selection of parent object for proper BVH traverse



proc newSelectMgrSensitiveEntity*(theEntity: Handle[Select3D_SensitiveEntity]): SelectMgrSensitiveEntity {.
    cdecl, constructor, importcpp: "SelectMgr_SensitiveEntity(@)", header: "SelectMgr_SensitiveEntity.hxx".}
proc destroySelectMgrSensitiveEntity*(this: var SelectMgrSensitiveEntity) {.cdecl,
    importcpp: "#.~SelectMgr_SensitiveEntity()", header: "SelectMgr_SensitiveEntity.hxx".}
proc clear*(this: var SelectMgrSensitiveEntity) {.cdecl, importcpp: "Clear",
    header: "SelectMgr_SensitiveEntity.hxx".}
proc baseSensitive*(this: SelectMgrSensitiveEntity): Handle[
    Select3D_SensitiveEntity] {.noSideEffect, cdecl, importcpp: "BaseSensitive",
                               header: "SelectMgr_SensitiveEntity.hxx".}
proc isActiveForSelection*(this: SelectMgrSensitiveEntity): bool {.noSideEffect,
    cdecl, importcpp: "IsActiveForSelection", header: "SelectMgr_SensitiveEntity.hxx".}
proc resetSelectionActiveStatus*(this: SelectMgrSensitiveEntity) {.noSideEffect,
    cdecl, importcpp: "ResetSelectionActiveStatus", header: "SelectMgr_SensitiveEntity.hxx".}
proc setActiveForSelection*(this: SelectMgrSensitiveEntity) {.noSideEffect, cdecl,
    importcpp: "SetActiveForSelection", header: "SelectMgr_SensitiveEntity.hxx".}
proc dumpJson*(this: SelectMgrSensitiveEntity; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_SensitiveEntity.hxx".}



