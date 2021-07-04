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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Select3D/Select3D_BndBox3d,
  ../Select3D/Select3D_SensitiveEntity,
  ../SelectBasics/SelectBasics_SelectingVolumeManager

## ! This class allows to create owners to all elements or nodes,
## ! both hidden and shown, but these owners user cannot select "by hands"
## ! in viewer. They means for internal application tasks, for example, receiving
## ! all owners, both for hidden and shown entities.

type
  MeshVS_DummySensitiveEntity* {.importcpp: "MeshVS_DummySensitiveEntity",
                                header: "MeshVS_DummySensitiveEntity.hxx", bycopy.} = object of Select3D_SensitiveEntity


proc constructMeshVS_DummySensitiveEntity*(
    theOwnerId: handle[SelectMgr_EntityOwner]): MeshVS_DummySensitiveEntity {.
    constructor, importcpp: "MeshVS_DummySensitiveEntity(@)",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc Matches*(this: var MeshVS_DummySensitiveEntity;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "MeshVS_DummySensitiveEntity.hxx".}
proc NbSubElements*(this: MeshVS_DummySensitiveEntity): Standard_Integer {.
    noSideEffect, importcpp: "NbSubElements",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc BoundingBox*(this: var MeshVS_DummySensitiveEntity): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_DummySensitiveEntity.hxx".}
proc BVH*(this: var MeshVS_DummySensitiveEntity) {.importcpp: "BVH",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc ToBuildBVH*(this: MeshVS_DummySensitiveEntity): Standard_Boolean {.
    noSideEffect, importcpp: "ToBuildBVH",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc Clear*(this: var MeshVS_DummySensitiveEntity) {.importcpp: "Clear",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc HasInitLocation*(this: MeshVS_DummySensitiveEntity): Standard_Boolean {.
    noSideEffect, importcpp: "HasInitLocation",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc InvInitLocation*(this: MeshVS_DummySensitiveEntity): gp_GTrsf {.noSideEffect,
    importcpp: "InvInitLocation", header: "MeshVS_DummySensitiveEntity.hxx".}
proc CenterOfGeometry*(this: MeshVS_DummySensitiveEntity): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_DummySensitiveEntity.hxx".}
type
  MeshVS_DummySensitiveEntitybase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "MeshVS_DummySensitiveEntity::get_type_name(@)",
                              header: "MeshVS_DummySensitiveEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_DummySensitiveEntity::get_type_descriptor(@)",
    header: "MeshVS_DummySensitiveEntity.hxx".}
proc DynamicType*(this: MeshVS_DummySensitiveEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_DummySensitiveEntity.hxx".}
discard "forward decl of MeshVS_DummySensitiveEntity"
type
  Handle_MeshVS_DummySensitiveEntity* = handle[MeshVS_DummySensitiveEntity]
