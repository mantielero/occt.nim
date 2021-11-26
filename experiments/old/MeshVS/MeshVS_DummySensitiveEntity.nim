##  Created on: 2003-09-29
##  Created by: Alexander SOLOVYOV and Sergey LITONIN
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

## ! This class allows to create owners to all elements or nodes,
## ! both hidden and shown, but these owners user cannot select "by hands"
## ! in viewer. They means for internal application tasks, for example, receiving
## ! all owners, both for hidden and shown entities.

type
  MeshVS_DummySensitiveEntity* {.importcpp: "MeshVS_DummySensitiveEntity",
                                header: "MeshVS_DummySensitiveEntity.hxx", bycopy.} = object of Select3D_SensitiveEntity


proc constructMeshVS_DummySensitiveEntity*(
    theOwnerId: Handle[SelectMgrEntityOwner]): MeshVS_DummySensitiveEntity {.
    constructor, importcpp: "MeshVS_DummySensitiveEntity(@)",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc matches*(this: var MeshVS_DummySensitiveEntity;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): bool {.
    importcpp: "Matches", header: "MeshVS_DummySensitiveEntity.hxx".}
proc nbSubElements*(this: MeshVS_DummySensitiveEntity): cint {.noSideEffect,
    importcpp: "NbSubElements", header: "MeshVS_DummySensitiveEntity.hxx".}
proc boundingBox*(this: var MeshVS_DummySensitiveEntity): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_DummySensitiveEntity.hxx".}
proc bvh*(this: var MeshVS_DummySensitiveEntity) {.importcpp: "BVH",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc toBuildBVH*(this: MeshVS_DummySensitiveEntity): bool {.noSideEffect,
    importcpp: "ToBuildBVH", header: "MeshVS_DummySensitiveEntity.hxx".}
proc clear*(this: var MeshVS_DummySensitiveEntity) {.importcpp: "Clear",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc hasInitLocation*(this: MeshVS_DummySensitiveEntity): bool {.noSideEffect,
    importcpp: "HasInitLocation", header: "MeshVS_DummySensitiveEntity.hxx".}
proc invInitLocation*(this: MeshVS_DummySensitiveEntity): GTrsf {.noSideEffect,
    importcpp: "InvInitLocation", header: "MeshVS_DummySensitiveEntity.hxx".}
proc centerOfGeometry*(this: MeshVS_DummySensitiveEntity): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_DummySensitiveEntity.hxx".}
type
  MeshVS_DummySensitiveEntitybaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "MeshVS_DummySensitiveEntity::get_type_name(@)",
                            header: "MeshVS_DummySensitiveEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_DummySensitiveEntity::get_type_descriptor(@)",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc dynamicType*(this: MeshVS_DummySensitiveEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_DummySensitiveEntity.hxx".}
discard "forward decl of MeshVS_DummySensitiveEntity"
type
  HandleC1C1* = Handle[MeshVS_DummySensitiveEntity]


























