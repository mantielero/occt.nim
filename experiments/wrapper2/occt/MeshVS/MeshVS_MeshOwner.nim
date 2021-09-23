##  Created on: 2007-01-24
##  Created by: Sergey  Kochetkov
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
  ../SelectMgr/SelectMgr_EntityOwner, ../PrsMgr/PrsMgr_PresentationManager3d,
  ../Quantity/Quantity_NameOfColor

discard "forward decl of MeshVS_DataSource"
discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of MeshVS_MeshOwner"
discard "forward decl of MeshVS_MeshOwner"
type
  Handle_MeshVS_MeshOwner* = handle[MeshVS_MeshOwner]

## ! The custom mesh owner used for advanced mesh selection. This class provides methods to store information:
## ! 1) IDs of hilighted mesh nodes and elements
## ! 2) IDs of mesh nodes and elements selected on the mesh

type
  MeshVS_MeshOwner* {.importcpp: "MeshVS_MeshOwner",
                     header: "MeshVS_MeshOwner.hxx", bycopy.} = object of SelectMgr_EntityOwner


proc constructMeshVS_MeshOwner*(theSelObj: ptr SelectMgr_SelectableObject;
                               theDS: handle[MeshVS_DataSource];
                               thePriority: Standard_Integer = 0): MeshVS_MeshOwner {.
    constructor, importcpp: "MeshVS_MeshOwner(@)", header: "MeshVS_MeshOwner.hxx".}
proc GetDataSource*(this: MeshVS_MeshOwner): handle[MeshVS_DataSource] {.
    noSideEffect, importcpp: "GetDataSource", header: "MeshVS_MeshOwner.hxx".}
proc GetSelectedNodes*(this: MeshVS_MeshOwner): handle[TColStd_HPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetSelectedNodes", header: "MeshVS_MeshOwner.hxx".}
proc GetSelectedElements*(this: MeshVS_MeshOwner): handle[
    TColStd_HPackedMapOfInteger] {.noSideEffect, importcpp: "GetSelectedElements",
                                  header: "MeshVS_MeshOwner.hxx".}
proc AddSelectedEntities*(this: var MeshVS_MeshOwner;
                         Nodes: handle[TColStd_HPackedMapOfInteger];
                         Elems: handle[TColStd_HPackedMapOfInteger]) {.
    importcpp: "AddSelectedEntities", header: "MeshVS_MeshOwner.hxx".}
proc ClearSelectedEntities*(this: var MeshVS_MeshOwner) {.
    importcpp: "ClearSelectedEntities", header: "MeshVS_MeshOwner.hxx".}
proc GetDetectedNodes*(this: MeshVS_MeshOwner): handle[TColStd_HPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetDetectedNodes", header: "MeshVS_MeshOwner.hxx".}
proc GetDetectedElements*(this: MeshVS_MeshOwner): handle[
    TColStd_HPackedMapOfInteger] {.noSideEffect, importcpp: "GetDetectedElements",
                                  header: "MeshVS_MeshOwner.hxx".}
proc SetDetectedEntities*(this: var MeshVS_MeshOwner;
                         Nodes: handle[TColStd_HPackedMapOfInteger];
                         Elems: handle[TColStd_HPackedMapOfInteger]) {.
    importcpp: "SetDetectedEntities", header: "MeshVS_MeshOwner.hxx".}
proc HilightWithColor*(this: var MeshVS_MeshOwner;
                      thePM: handle[PrsMgr_PresentationManager3d];
                      theColor: handle[Prs3d_Drawer];
                      theMode: Standard_Integer = 0) {.
    importcpp: "HilightWithColor", header: "MeshVS_MeshOwner.hxx".}
proc Unhilight*(this: var MeshVS_MeshOwner; PM: handle[PrsMgr_PresentationManager];
               Mode: Standard_Integer = 0) {.importcpp: "Unhilight",
    header: "MeshVS_MeshOwner.hxx".}
proc IsForcedHilight*(this: MeshVS_MeshOwner): Standard_Boolean {.noSideEffect,
    importcpp: "IsForcedHilight", header: "MeshVS_MeshOwner.hxx".}
type
  MeshVS_MeshOwnerbase_type* = SelectMgr_EntityOwner

proc get_type_name*(): cstring {.importcpp: "MeshVS_MeshOwner::get_type_name(@)",
                              header: "MeshVS_MeshOwner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_MeshOwner::get_type_descriptor(@)",
    header: "MeshVS_MeshOwner.hxx".}
proc DynamicType*(this: MeshVS_MeshOwner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_MeshOwner.hxx".}