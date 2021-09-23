##  Created on: 2016-02-18
##  Created by: Varvara POSKONINA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  MeshVS_DataSource, MeshVS_Mesh, MeshVS_MeshSelectionMethod,
  ../Select3D/Select3D_SensitiveSet

## ! Sensitive entity covering entire mesh for global selection.

type
  MeshVS_CommonSensitiveEntity* {.importcpp: "MeshVS_CommonSensitiveEntity",
                                 header: "MeshVS_CommonSensitiveEntity.hxx",
                                 bycopy.} = object of Select3D_SensitiveSet ## ! Default
                                                                       ## constructor.
                                                                       ## ! Checks whether the entity with index theIdx overlaps the current selecting volume
                                                                       ## ! Return point for specified index.
    ## !< mesh data source
    ## !< indices for BVH tree reordering
    ## !< selection mode
    ## !< maximum nodes within the element in mesh
    ## !< center of gravity
    ## !< bounding box

  MeshVS_CommonSensitiveEntitybase_type* = Select3D_SensitiveSet

proc get_type_name*(): cstring {.importcpp: "MeshVS_CommonSensitiveEntity::get_type_name(@)",
                              header: "MeshVS_CommonSensitiveEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_CommonSensitiveEntity::get_type_descriptor(@)",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc DynamicType*(this: MeshVS_CommonSensitiveEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc constructMeshVS_CommonSensitiveEntity*(
    theOwner: handle[SelectMgr_EntityOwner]; theParentMesh: handle[MeshVS_Mesh];
    theSelMethod: MeshVS_MeshSelectionMethod): MeshVS_CommonSensitiveEntity {.
    constructor, importcpp: "MeshVS_CommonSensitiveEntity(@)",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc destroyMeshVS_CommonSensitiveEntity*(this: var MeshVS_CommonSensitiveEntity) {.
    importcpp: "#.~MeshVS_CommonSensitiveEntity()",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc NbSubElements*(this: MeshVS_CommonSensitiveEntity): Standard_Integer {.
    noSideEffect, importcpp: "NbSubElements",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc Size*(this: MeshVS_CommonSensitiveEntity): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc Box*(this: MeshVS_CommonSensitiveEntity; theIdx: Standard_Integer): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc Center*(this: MeshVS_CommonSensitiveEntity; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc Swap*(this: var MeshVS_CommonSensitiveEntity; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap",
                                     header: "MeshVS_CommonSensitiveEntity.hxx".}
proc BoundingBox*(this: var MeshVS_CommonSensitiveEntity): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc CenterOfGeometry*(this: MeshVS_CommonSensitiveEntity): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc GetConnected*(this: var MeshVS_CommonSensitiveEntity): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "MeshVS_CommonSensitiveEntity.hxx".}
discard "forward decl of MeshVS_CommonSensitiveEntity"
type
  Handle_MeshVS_CommonSensitiveEntity* = handle[MeshVS_CommonSensitiveEntity]
