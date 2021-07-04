##  Created on: 2007-01-29
##  Created by: Sergey KOCHETKOV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Bnd/Bnd_Box,
  ../Select3D/Select3D_SensitiveEntity, ../Select3D/Select3D_SensitiveEntity,
  ../Select3D/Select3D_BndBox3d

discard "forward decl of Select3D_SensitiveEntity"
type
  MeshVS_SensitiveMesh* {.importcpp: "MeshVS_SensitiveMesh",
                         header: "MeshVS_SensitiveMesh.hxx", bycopy.} = object of Select3D_SensitiveEntity


proc constructMeshVS_SensitiveMesh*(theOwner: handle[SelectMgr_EntityOwner];
                                   theMode: Standard_Integer = 0): MeshVS_SensitiveMesh {.
    constructor, importcpp: "MeshVS_SensitiveMesh(@)",
    header: "MeshVS_SensitiveMesh.hxx".}
proc GetMode*(this: MeshVS_SensitiveMesh): Standard_Integer {.noSideEffect,
    importcpp: "GetMode", header: "MeshVS_SensitiveMesh.hxx".}
proc GetConnected*(this: var MeshVS_SensitiveMesh): handle[Select3D_SensitiveEntity] {.
    importcpp: "GetConnected", header: "MeshVS_SensitiveMesh.hxx".}
proc Matches*(this: var MeshVS_SensitiveMesh;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "MeshVS_SensitiveMesh.hxx".}
proc NbSubElements*(this: MeshVS_SensitiveMesh): Standard_Integer {.noSideEffect,
    importcpp: "NbSubElements", header: "MeshVS_SensitiveMesh.hxx".}
proc BoundingBox*(this: var MeshVS_SensitiveMesh): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_SensitiveMesh.hxx".}
proc CenterOfGeometry*(this: MeshVS_SensitiveMesh): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_SensitiveMesh.hxx".}
type
  MeshVS_SensitiveMeshbase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "MeshVS_SensitiveMesh::get_type_name(@)",
                              header: "MeshVS_SensitiveMesh.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_SensitiveMesh::get_type_descriptor(@)",
    header: "MeshVS_SensitiveMesh.hxx".}
proc DynamicType*(this: MeshVS_SensitiveMesh): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_SensitiveMesh.hxx".}
discard "forward decl of MeshVS_SensitiveMesh"
type
  Handle_MeshVS_SensitiveMesh* = handle[MeshVS_SensitiveMesh]
