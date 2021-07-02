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

discard "forward decl of MeshVS_DataSource"
discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of MeshVS_MeshOwner"
discard "forward decl of MeshVS_MeshOwner"
type
  HandleMeshVS_MeshOwner* = Handle[MeshVS_MeshOwner]

## ! The custom mesh owner used for advanced mesh selection. This class provides methods to store information:
## ! 1) IDs of hilighted mesh nodes and elements
## ! 2) IDs of mesh nodes and elements selected on the mesh

type
  MeshVS_MeshOwner* {.importcpp: "MeshVS_MeshOwner",
                     header: "MeshVS_MeshOwner.hxx", bycopy.} = object of SelectMgrEntityOwner


proc constructMeshVS_MeshOwner*(theSelObj: ptr SelectMgrSelectableObject;
                               theDS: Handle[MeshVS_DataSource];
                               thePriority: StandardInteger = 0): MeshVS_MeshOwner {.
    constructor, importcpp: "MeshVS_MeshOwner(@)", header: "MeshVS_MeshOwner.hxx".}
proc getDataSource*(this: MeshVS_MeshOwner): Handle[MeshVS_DataSource] {.
    noSideEffect, importcpp: "GetDataSource", header: "MeshVS_MeshOwner.hxx".}
proc getSelectedNodes*(this: MeshVS_MeshOwner): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetSelectedNodes", header: "MeshVS_MeshOwner.hxx".}
proc getSelectedElements*(this: MeshVS_MeshOwner): Handle[
    TColStdHPackedMapOfInteger] {.noSideEffect, importcpp: "GetSelectedElements",
                                 header: "MeshVS_MeshOwner.hxx".}
proc addSelectedEntities*(this: var MeshVS_MeshOwner;
                         nodes: Handle[TColStdHPackedMapOfInteger];
                         elems: Handle[TColStdHPackedMapOfInteger]) {.
    importcpp: "AddSelectedEntities", header: "MeshVS_MeshOwner.hxx".}
proc clearSelectedEntities*(this: var MeshVS_MeshOwner) {.
    importcpp: "ClearSelectedEntities", header: "MeshVS_MeshOwner.hxx".}
proc getDetectedNodes*(this: MeshVS_MeshOwner): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetDetectedNodes", header: "MeshVS_MeshOwner.hxx".}
proc getDetectedElements*(this: MeshVS_MeshOwner): Handle[
    TColStdHPackedMapOfInteger] {.noSideEffect, importcpp: "GetDetectedElements",
                                 header: "MeshVS_MeshOwner.hxx".}
proc setDetectedEntities*(this: var MeshVS_MeshOwner;
                         nodes: Handle[TColStdHPackedMapOfInteger];
                         elems: Handle[TColStdHPackedMapOfInteger]) {.
    importcpp: "SetDetectedEntities", header: "MeshVS_MeshOwner.hxx".}
proc hilightWithColor*(this: var MeshVS_MeshOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theColor: Handle[Prs3dDrawer]; theMode: StandardInteger = 0) {.
    importcpp: "HilightWithColor", header: "MeshVS_MeshOwner.hxx".}
proc unhilight*(this: var MeshVS_MeshOwner; pm: Handle[PrsMgrPresentationManager];
               mode: StandardInteger = 0) {.importcpp: "Unhilight",
                                        header: "MeshVS_MeshOwner.hxx".}
proc isForcedHilight*(this: MeshVS_MeshOwner): StandardBoolean {.noSideEffect,
    importcpp: "IsForcedHilight", header: "MeshVS_MeshOwner.hxx".}
type
  MeshVS_MeshOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "MeshVS_MeshOwner::get_type_name(@)",
                            header: "MeshVS_MeshOwner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_MeshOwner::get_type_descriptor(@)",
    header: "MeshVS_MeshOwner.hxx".}
proc dynamicType*(this: MeshVS_MeshOwner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_MeshOwner.hxx".}

