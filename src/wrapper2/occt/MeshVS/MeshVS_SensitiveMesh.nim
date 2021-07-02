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

discard "forward decl of Select3D_SensitiveEntity"
type
  MeshVS_SensitiveMesh* {.importcpp: "MeshVS_SensitiveMesh",
                         header: "MeshVS_SensitiveMesh.hxx", bycopy.} = object of Select3D_SensitiveEntity


proc constructMeshVS_SensitiveMesh*(theOwner: Handle[SelectMgrEntityOwner];
                                   theMode: StandardInteger = 0): MeshVS_SensitiveMesh {.
    constructor, importcpp: "MeshVS_SensitiveMesh(@)",
    header: "MeshVS_SensitiveMesh.hxx".}
proc getMode*(this: MeshVS_SensitiveMesh): StandardInteger {.noSideEffect,
    importcpp: "GetMode", header: "MeshVS_SensitiveMesh.hxx".}
proc getConnected*(this: var MeshVS_SensitiveMesh): Handle[Select3D_SensitiveEntity] {.
    importcpp: "GetConnected", header: "MeshVS_SensitiveMesh.hxx".}
proc matches*(this: var MeshVS_SensitiveMesh;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    importcpp: "Matches", header: "MeshVS_SensitiveMesh.hxx".}
proc nbSubElements*(this: MeshVS_SensitiveMesh): StandardInteger {.noSideEffect,
    importcpp: "NbSubElements", header: "MeshVS_SensitiveMesh.hxx".}
proc boundingBox*(this: var MeshVS_SensitiveMesh): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_SensitiveMesh.hxx".}
proc centerOfGeometry*(this: MeshVS_SensitiveMesh): GpPnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_SensitiveMesh.hxx".}
type
  MeshVS_SensitiveMeshbaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "MeshVS_SensitiveMesh::get_type_name(@)",
                            header: "MeshVS_SensitiveMesh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_SensitiveMesh::get_type_descriptor(@)",
    header: "MeshVS_SensitiveMesh.hxx".}
proc dynamicType*(this: MeshVS_SensitiveMesh): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_SensitiveMesh.hxx".}
discard "forward decl of MeshVS_SensitiveMesh"
type
  HandleMeshVS_SensitiveMesh* = Handle[MeshVS_SensitiveMesh]


