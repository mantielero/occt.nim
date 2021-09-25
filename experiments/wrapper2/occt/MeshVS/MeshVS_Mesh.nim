##  Created on: 2003-10-10
##  Created by: Alexander SOLOVYOV
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

discard "forward decl of MeshVS_PrsBuilder"
discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of MeshVS_Drawer"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of MeshVS_Mesh"
type
  HandleMeshVS_Mesh* = Handle[MeshVS_Mesh]

## ! the main class provides interface to create mesh presentation as a whole

type
  MeshVS_Mesh* {.importcpp: "MeshVS_Mesh", header: "MeshVS_Mesh.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                       ## !
                                                                                                       ## Constructor.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## theIsAllowOverlapped
                                                                                                       ## is
                                                                                                       ## Standard_True,
                                                                                                       ## if
                                                                                                       ## it
                                                                                                       ## is
                                                                                                       ## allowed
                                                                                                       ## to
                                                                                                       ## draw
                                                                                                       ## edges
                                                                                                       ## overlapped
                                                                                                       ## with
                                                                                                       ## beams
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Its
                                                                                                       ## value
                                                                                                       ## is
                                                                                                       ## stored
                                                                                                       ## in
                                                                                                       ## drawer
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Stores
                                                                                                       ## all
                                                                                                       ## vertices
                                                                                                       ## that
                                                                                                       ## belong
                                                                                                       ## to
                                                                                                       ## one
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## faces
                                                                                                       ## to
                                                                                                       ## the
                                                                                                       ## given
                                                                                                       ## map
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## theAllElements
                                                                                                       ## [in]
                                                                                                       ## the
                                                                                                       ## map
                                                                                                       ## of
                                                                                                       ## all
                                                                                                       ## mesh
                                                                                                       ## elements
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## theNbMaxFaceNodes
                                                                                                       ## [in]
                                                                                                       ## the
                                                                                                       ## maximum
                                                                                                       ## amount
                                                                                                       ## of
                                                                                                       ## nodes
                                                                                                       ## per
                                                                                                       ## face,
                                                                                                       ## retrieved
                                                                                                       ## from
                                                                                                       ## drawer
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## theSharedNodes
                                                                                                       ## [out]
                                                                                                       ## the
                                                                                                       ## result
                                                                                                       ## map
                                                                                                       ## of
                                                                                                       ## all
                                                                                                       ## vertices
                                                                                                       ## that
                                                                                                       ## belong
                                                                                                       ## to
                                                                                                       ## one
                                                                                                       ## face
                                                                                                       ## at
                                                                                                       ## least


proc constructMeshVS_Mesh*(theIsAllowOverlapped: bool = false): MeshVS_Mesh {.
    constructor, importcpp: "MeshVS_Mesh(@)", header: "MeshVS_Mesh.hxx".}
proc acceptDisplayMode*(this: MeshVS_Mesh; theMode: int): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "MeshVS_Mesh.hxx".}
proc compute*(this: var MeshVS_Mesh; pm: Handle[PrsMgrPresentationManager3d];
             prs: Handle[Prs3dPresentation]; displayMode: int) {.
    importcpp: "Compute", header: "MeshVS_Mesh.hxx".}
proc computeSelection*(this: var MeshVS_Mesh; sel: Handle[SelectMgrSelection];
                      selectMode: int) {.importcpp: "ComputeSelection",
                                       header: "MeshVS_Mesh.hxx".}
proc hilightSelected*(this: var MeshVS_Mesh;
                     pm: Handle[PrsMgrPresentationManager3d];
                     owners: SelectMgrSequenceOfOwner) {.
    importcpp: "HilightSelected", header: "MeshVS_Mesh.hxx".}
proc hilightOwnerWithColor*(this: var MeshVS_Mesh;
                           thePM: Handle[PrsMgrPresentationManager3d];
                           theColor: Handle[Prs3dDrawer];
                           theOwner: Handle[SelectMgrEntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "MeshVS_Mesh.hxx".}
proc clearSelected*(this: var MeshVS_Mesh) {.importcpp: "ClearSelected",
    header: "MeshVS_Mesh.hxx".}
proc getBuildersCount*(this: MeshVS_Mesh): int {.noSideEffect,
    importcpp: "GetBuildersCount", header: "MeshVS_Mesh.hxx".}
proc getBuilder*(this: MeshVS_Mesh; index: int): Handle[MeshVS_PrsBuilder] {.
    noSideEffect, importcpp: "GetBuilder", header: "MeshVS_Mesh.hxx".}
proc getBuilderById*(this: MeshVS_Mesh; id: int): Handle[MeshVS_PrsBuilder] {.
    noSideEffect, importcpp: "GetBuilderById", header: "MeshVS_Mesh.hxx".}
proc getFreeId*(this: MeshVS_Mesh): int {.noSideEffect, importcpp: "GetFreeId",
                                      header: "MeshVS_Mesh.hxx".}
proc addBuilder*(this: var MeshVS_Mesh; builder: Handle[MeshVS_PrsBuilder];
                treatAsHilighter: bool = false) {.importcpp: "AddBuilder",
    header: "MeshVS_Mesh.hxx".}
proc setHilighter*(this: var MeshVS_Mesh; builder: Handle[MeshVS_PrsBuilder]) {.
    importcpp: "SetHilighter", header: "MeshVS_Mesh.hxx".}
proc setHilighter*(this: var MeshVS_Mesh; index: int): bool {.
    importcpp: "SetHilighter", header: "MeshVS_Mesh.hxx".}
proc setHilighterById*(this: var MeshVS_Mesh; id: int): bool {.
    importcpp: "SetHilighterById", header: "MeshVS_Mesh.hxx".}
proc getHilighter*(this: MeshVS_Mesh): Handle[MeshVS_PrsBuilder] {.noSideEffect,
    importcpp: "GetHilighter", header: "MeshVS_Mesh.hxx".}
proc removeBuilder*(this: var MeshVS_Mesh; index: int) {.importcpp: "RemoveBuilder",
    header: "MeshVS_Mesh.hxx".}
proc removeBuilderById*(this: var MeshVS_Mesh; id: int) {.
    importcpp: "RemoveBuilderById", header: "MeshVS_Mesh.hxx".}
proc findBuilder*(this: MeshVS_Mesh; typeString: StandardCString): Handle[
    MeshVS_PrsBuilder] {.noSideEffect, importcpp: "FindBuilder",
                        header: "MeshVS_Mesh.hxx".}
proc getOwnerMaps*(this: var MeshVS_Mesh; isElement: bool): MeshVS_DataMapOfIntegerOwner {.
    importcpp: "GetOwnerMaps", header: "MeshVS_Mesh.hxx".}
proc getDataSource*(this: MeshVS_Mesh): Handle[MeshVS_DataSource] {.noSideEffect,
    importcpp: "GetDataSource", header: "MeshVS_Mesh.hxx".}
proc setDataSource*(this: var MeshVS_Mesh; aDataSource: Handle[MeshVS_DataSource]) {.
    importcpp: "SetDataSource", header: "MeshVS_Mesh.hxx".}
proc getDrawer*(this: MeshVS_Mesh): Handle[MeshVS_Drawer] {.noSideEffect,
    importcpp: "GetDrawer", header: "MeshVS_Mesh.hxx".}
proc setDrawer*(this: var MeshVS_Mesh; aDrawer: Handle[MeshVS_Drawer]) {.
    importcpp: "SetDrawer", header: "MeshVS_Mesh.hxx".}
proc isHiddenElem*(this: MeshVS_Mesh; id: int): bool {.noSideEffect,
    importcpp: "IsHiddenElem", header: "MeshVS_Mesh.hxx".}
proc isHiddenNode*(this: MeshVS_Mesh; id: int): bool {.noSideEffect,
    importcpp: "IsHiddenNode", header: "MeshVS_Mesh.hxx".}
proc isSelectableElem*(this: MeshVS_Mesh; id: int): bool {.noSideEffect,
    importcpp: "IsSelectableElem", header: "MeshVS_Mesh.hxx".}
proc isSelectableNode*(this: MeshVS_Mesh; id: int): bool {.noSideEffect,
    importcpp: "IsSelectableNode", header: "MeshVS_Mesh.hxx".}
proc getHiddenNodes*(this: MeshVS_Mesh): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetHiddenNodes", header: "MeshVS_Mesh.hxx".}
proc setHiddenNodes*(this: var MeshVS_Mesh; ids: Handle[TColStdHPackedMapOfInteger]) {.
    importcpp: "SetHiddenNodes", header: "MeshVS_Mesh.hxx".}
proc getHiddenElems*(this: MeshVS_Mesh): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetHiddenElems", header: "MeshVS_Mesh.hxx".}
proc setHiddenElems*(this: var MeshVS_Mesh; ids: Handle[TColStdHPackedMapOfInteger]) {.
    importcpp: "SetHiddenElems", header: "MeshVS_Mesh.hxx".}
proc getSelectableNodes*(this: MeshVS_Mesh): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetSelectableNodes", header: "MeshVS_Mesh.hxx".}
proc setSelectableNodes*(this: var MeshVS_Mesh;
                        ids: Handle[TColStdHPackedMapOfInteger]) {.
    importcpp: "SetSelectableNodes", header: "MeshVS_Mesh.hxx".}
proc updateSelectableNodes*(this: var MeshVS_Mesh) {.
    importcpp: "UpdateSelectableNodes", header: "MeshVS_Mesh.hxx".}
proc getMeshSelMethod*(this: MeshVS_Mesh): MeshVS_MeshSelectionMethod {.
    noSideEffect, importcpp: "GetMeshSelMethod", header: "MeshVS_Mesh.hxx".}
proc setMeshSelMethod*(this: var MeshVS_Mesh; m: MeshVS_MeshSelectionMethod) {.
    importcpp: "SetMeshSelMethod", header: "MeshVS_Mesh.hxx".}
proc isWholeMeshOwner*(this: MeshVS_Mesh; theOwner: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsWholeMeshOwner", header: "MeshVS_Mesh.hxx".}
type
  MeshVS_MeshbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "MeshVS_Mesh::get_type_name(@)",
                            header: "MeshVS_Mesh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_Mesh::get_type_descriptor(@)", header: "MeshVS_Mesh.hxx".}
proc dynamicType*(this: MeshVS_Mesh): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_Mesh.hxx".}
