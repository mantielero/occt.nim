##  Created on: 1995-03-13
##  Created by: Robert COUBLANC
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../gp/gp_GTrsf, ../gp/gp_Trsf, ../Standard/Standard_Assert,
  ../Standard/Standard_Transient, Select3D_BndBox3d,
  ../SelectBasics/SelectBasics_SelectingVolumeManager,
  ../SelectBasics/SelectBasics_PickResult,
  ../SelectBasics/SelectBasics_SensitiveEntity,
  ../SelectMgr/SelectMgr_SelectingVolumeManager, ../TopLoc/TopLoc_Location

discard "forward decl of SelectMgr_EntityOwner"
type
  Select3D_SensitiveEntity* {.importcpp: "Select3D_SensitiveEntity",
                             header: "Select3D_SensitiveEntity.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## pointer
                                                                                                      ## to
                                                                                                      ## owner
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## entity

  Select3D_SensitiveEntitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveEntity::get_type_name(@)",
                              header: "Select3D_SensitiveEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveEntity::get_type_descriptor(@)",
    header: "Select3D_SensitiveEntity.hxx".}
proc DynamicType*(this: Select3D_SensitiveEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveEntity.hxx".}
proc OwnerId*(this: Select3D_SensitiveEntity): handle[SelectMgr_EntityOwner] {.
    noSideEffect, importcpp: "OwnerId", header: "Select3D_SensitiveEntity.hxx".}
proc Set*(this: var Select3D_SensitiveEntity;
         theOwnerId: handle[SelectMgr_EntityOwner]) {.importcpp: "Set",
    header: "Select3D_SensitiveEntity.hxx".}
proc SensitivityFactor*(this: Select3D_SensitiveEntity): Standard_Integer {.
    noSideEffect, importcpp: "SensitivityFactor",
    header: "Select3D_SensitiveEntity.hxx".}
proc SetSensitivityFactor*(this: var Select3D_SensitiveEntity;
                          theNewSens: Standard_Integer) {.
    importcpp: "SetSensitivityFactor", header: "Select3D_SensitiveEntity.hxx".}
proc GetConnected*(this: var Select3D_SensitiveEntity): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveEntity.hxx".}
proc Matches*(this: var Select3D_SensitiveEntity;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitiveEntity.hxx".}
proc NbSubElements*(this: Select3D_SensitiveEntity): Standard_Integer {.
    noSideEffect, importcpp: "NbSubElements",
    header: "Select3D_SensitiveEntity.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveEntity): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveEntity.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveEntity): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveEntity.hxx".}
proc BVH*(this: var Select3D_SensitiveEntity) {.importcpp: "BVH",
    header: "Select3D_SensitiveEntity.hxx".}
proc ToBuildBVH*(this: Select3D_SensitiveEntity): Standard_Boolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveEntity.hxx".}
proc Clear*(this: var Select3D_SensitiveEntity) {.importcpp: "Clear",
    header: "Select3D_SensitiveEntity.hxx".}
proc HasInitLocation*(this: Select3D_SensitiveEntity): Standard_Boolean {.
    noSideEffect, importcpp: "HasInitLocation",
    header: "Select3D_SensitiveEntity.hxx".}
proc InvInitLocation*(this: Select3D_SensitiveEntity): gp_GTrsf {.noSideEffect,
    importcpp: "InvInitLocation", header: "Select3D_SensitiveEntity.hxx".}
proc DumpJson*(this: Select3D_SensitiveEntity; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveEntity.hxx".}
discard "forward decl of Select3D_SensitiveEntity"
type
  Handle_Select3D_SensitiveEntity* = handle[Select3D_SensitiveEntity]

##  for porting old code

type
  SelectBasics_SensitiveEntity* = Select3D_SensitiveEntity
