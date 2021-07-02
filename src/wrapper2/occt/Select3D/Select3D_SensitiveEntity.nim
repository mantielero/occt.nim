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

discard "forward decl of SelectMgr_EntityOwner"
type
  Select3D_SensitiveEntity* {.importcpp: "Select3D_SensitiveEntity",
                             header: "Select3D_SensitiveEntity.hxx", bycopy.} = object of StandardTransient ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## pointer
                                                                                                     ## to
                                                                                                     ## owner
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## entity

  Select3D_SensitiveEntitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveEntity::get_type_name(@)",
                            header: "Select3D_SensitiveEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveEntity::get_type_descriptor(@)",
    header: "Select3D_SensitiveEntity.hxx".}
proc dynamicType*(this: Select3D_SensitiveEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveEntity.hxx".}
proc ownerId*(this: Select3D_SensitiveEntity): Handle[SelectMgrEntityOwner] {.
    noSideEffect, importcpp: "OwnerId", header: "Select3D_SensitiveEntity.hxx".}
proc set*(this: var Select3D_SensitiveEntity;
         theOwnerId: Handle[SelectMgrEntityOwner]) {.importcpp: "Set",
    header: "Select3D_SensitiveEntity.hxx".}
proc sensitivityFactor*(this: Select3D_SensitiveEntity): StandardInteger {.
    noSideEffect, importcpp: "SensitivityFactor",
    header: "Select3D_SensitiveEntity.hxx".}
proc setSensitivityFactor*(this: var Select3D_SensitiveEntity;
                          theNewSens: StandardInteger) {.
    importcpp: "SetSensitivityFactor", header: "Select3D_SensitiveEntity.hxx".}
proc getConnected*(this: var Select3D_SensitiveEntity): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveEntity.hxx".}
proc matches*(this: var Select3D_SensitiveEntity;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    importcpp: "Matches", header: "Select3D_SensitiveEntity.hxx".}
proc nbSubElements*(this: Select3D_SensitiveEntity): StandardInteger {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveEntity.hxx".}
proc boundingBox*(this: var Select3D_SensitiveEntity): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveEntity.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveEntity): GpPnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveEntity.hxx".}
proc bvh*(this: var Select3D_SensitiveEntity) {.importcpp: "BVH",
    header: "Select3D_SensitiveEntity.hxx".}
proc toBuildBVH*(this: Select3D_SensitiveEntity): StandardBoolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveEntity.hxx".}
proc clear*(this: var Select3D_SensitiveEntity) {.importcpp: "Clear",
    header: "Select3D_SensitiveEntity.hxx".}
proc hasInitLocation*(this: Select3D_SensitiveEntity): StandardBoolean {.
    noSideEffect, importcpp: "HasInitLocation",
    header: "Select3D_SensitiveEntity.hxx".}
proc invInitLocation*(this: Select3D_SensitiveEntity): GpGTrsf {.noSideEffect,
    importcpp: "InvInitLocation", header: "Select3D_SensitiveEntity.hxx".}
proc dumpJson*(this: Select3D_SensitiveEntity; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveEntity.hxx".}
discard "forward decl of Select3D_SensitiveEntity"
type
  HandleSelect3D_SensitiveEntity* = Handle[Select3D_SensitiveEntity]

##  for porting old code

type
  SelectBasicsSensitiveEntity* = Select3D_SensitiveEntity


