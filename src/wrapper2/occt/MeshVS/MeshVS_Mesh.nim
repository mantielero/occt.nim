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

import
  MeshVS_SequenceOfPrsBuilder, MeshVS_DataMapOfIntegerOwner,
  MeshVS_MeshSelectionMethod, ../AIS/AIS_InteractiveObject,
  ../SelectMgr/SelectMgr_SequenceOfOwner, ../Quantity/Quantity_NameOfColor,
  ../Standard/Standard_CString

discard "forward decl of MeshVS_PrsBuilder"
discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of MeshVS_Drawer"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of MeshVS_Mesh"
type
  Handle_MeshVS_Mesh* = handle[MeshVS_Mesh]

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


proc constructMeshVS_Mesh*(theIsAllowOverlapped: Standard_Boolean = Standard_False): MeshVS_Mesh {.
    constructor, importcpp: "MeshVS_Mesh(@)", header: "MeshVS_Mesh.hxx".}
proc AcceptDisplayMode*(this: MeshVS_Mesh; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "MeshVS_Mesh.hxx".}
proc Compute*(this: var MeshVS_Mesh; PM: handle[PrsMgr_PresentationManager3d];
             Prs: handle[Prs3d_Presentation]; DisplayMode: Standard_Integer) {.
    importcpp: "Compute", header: "MeshVS_Mesh.hxx".}
proc ComputeSelection*(this: var MeshVS_Mesh; Sel: handle[SelectMgr_Selection];
                      SelectMode: Standard_Integer) {.
    importcpp: "ComputeSelection", header: "MeshVS_Mesh.hxx".}
proc HilightSelected*(this: var MeshVS_Mesh;
                     PM: handle[PrsMgr_PresentationManager3d];
                     Owners: SelectMgr_SequenceOfOwner) {.
    importcpp: "HilightSelected", header: "MeshVS_Mesh.hxx".}
proc HilightOwnerWithColor*(this: var MeshVS_Mesh;
                           thePM: handle[PrsMgr_PresentationManager3d];
                           theColor: handle[Prs3d_Drawer];
                           theOwner: handle[SelectMgr_EntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "MeshVS_Mesh.hxx".}
proc ClearSelected*(this: var MeshVS_Mesh) {.importcpp: "ClearSelected",
    header: "MeshVS_Mesh.hxx".}
proc GetBuildersCount*(this: MeshVS_Mesh): Standard_Integer {.noSideEffect,
    importcpp: "GetBuildersCount", header: "MeshVS_Mesh.hxx".}
proc GetBuilder*(this: MeshVS_Mesh; Index: Standard_Integer): handle[
    MeshVS_PrsBuilder] {.noSideEffect, importcpp: "GetBuilder",
                        header: "MeshVS_Mesh.hxx".}
proc GetBuilderById*(this: MeshVS_Mesh; Id: Standard_Integer): handle[
    MeshVS_PrsBuilder] {.noSideEffect, importcpp: "GetBuilderById",
                        header: "MeshVS_Mesh.hxx".}
proc GetFreeId*(this: MeshVS_Mesh): Standard_Integer {.noSideEffect,
    importcpp: "GetFreeId", header: "MeshVS_Mesh.hxx".}
proc AddBuilder*(this: var MeshVS_Mesh; Builder: handle[MeshVS_PrsBuilder];
                TreatAsHilighter: Standard_Boolean = Standard_False) {.
    importcpp: "AddBuilder", header: "MeshVS_Mesh.hxx".}
proc SetHilighter*(this: var MeshVS_Mesh; Builder: handle[MeshVS_PrsBuilder]) {.
    importcpp: "SetHilighter", header: "MeshVS_Mesh.hxx".}
proc SetHilighter*(this: var MeshVS_Mesh; Index: Standard_Integer): Standard_Boolean {.
    importcpp: "SetHilighter", header: "MeshVS_Mesh.hxx".}
proc SetHilighterById*(this: var MeshVS_Mesh; Id: Standard_Integer): Standard_Boolean {.
    importcpp: "SetHilighterById", header: "MeshVS_Mesh.hxx".}
proc GetHilighter*(this: MeshVS_Mesh): handle[MeshVS_PrsBuilder] {.noSideEffect,
    importcpp: "GetHilighter", header: "MeshVS_Mesh.hxx".}
proc RemoveBuilder*(this: var MeshVS_Mesh; Index: Standard_Integer) {.
    importcpp: "RemoveBuilder", header: "MeshVS_Mesh.hxx".}
proc RemoveBuilderById*(this: var MeshVS_Mesh; Id: Standard_Integer) {.
    importcpp: "RemoveBuilderById", header: "MeshVS_Mesh.hxx".}
proc FindBuilder*(this: MeshVS_Mesh; TypeString: Standard_CString): handle[
    MeshVS_PrsBuilder] {.noSideEffect, importcpp: "FindBuilder",
                        header: "MeshVS_Mesh.hxx".}
proc GetOwnerMaps*(this: var MeshVS_Mesh; IsElement: Standard_Boolean): MeshVS_DataMapOfIntegerOwner {.
    importcpp: "GetOwnerMaps", header: "MeshVS_Mesh.hxx".}
proc GetDataSource*(this: MeshVS_Mesh): handle[MeshVS_DataSource] {.noSideEffect,
    importcpp: "GetDataSource", header: "MeshVS_Mesh.hxx".}
proc SetDataSource*(this: var MeshVS_Mesh; aDataSource: handle[MeshVS_DataSource]) {.
    importcpp: "SetDataSource", header: "MeshVS_Mesh.hxx".}
proc GetDrawer*(this: MeshVS_Mesh): handle[MeshVS_Drawer] {.noSideEffect,
    importcpp: "GetDrawer", header: "MeshVS_Mesh.hxx".}
proc SetDrawer*(this: var MeshVS_Mesh; aDrawer: handle[MeshVS_Drawer]) {.
    importcpp: "SetDrawer", header: "MeshVS_Mesh.hxx".}
proc IsHiddenElem*(this: MeshVS_Mesh; ID: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsHiddenElem", header: "MeshVS_Mesh.hxx".}
proc IsHiddenNode*(this: MeshVS_Mesh; ID: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsHiddenNode", header: "MeshVS_Mesh.hxx".}
proc IsSelectableElem*(this: MeshVS_Mesh; ID: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsSelectableElem", header: "MeshVS_Mesh.hxx".}
proc IsSelectableNode*(this: MeshVS_Mesh; ID: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsSelectableNode", header: "MeshVS_Mesh.hxx".}
proc GetHiddenNodes*(this: MeshVS_Mesh): handle[TColStd_HPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetHiddenNodes", header: "MeshVS_Mesh.hxx".}
proc SetHiddenNodes*(this: var MeshVS_Mesh; Ids: handle[TColStd_HPackedMapOfInteger]) {.
    importcpp: "SetHiddenNodes", header: "MeshVS_Mesh.hxx".}
proc GetHiddenElems*(this: MeshVS_Mesh): handle[TColStd_HPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetHiddenElems", header: "MeshVS_Mesh.hxx".}
proc SetHiddenElems*(this: var MeshVS_Mesh; Ids: handle[TColStd_HPackedMapOfInteger]) {.
    importcpp: "SetHiddenElems", header: "MeshVS_Mesh.hxx".}
proc GetSelectableNodes*(this: MeshVS_Mesh): handle[TColStd_HPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetSelectableNodes", header: "MeshVS_Mesh.hxx".}
proc SetSelectableNodes*(this: var MeshVS_Mesh;
                        Ids: handle[TColStd_HPackedMapOfInteger]) {.
    importcpp: "SetSelectableNodes", header: "MeshVS_Mesh.hxx".}
proc UpdateSelectableNodes*(this: var MeshVS_Mesh) {.
    importcpp: "UpdateSelectableNodes", header: "MeshVS_Mesh.hxx".}
proc GetMeshSelMethod*(this: MeshVS_Mesh): MeshVS_MeshSelectionMethod {.
    noSideEffect, importcpp: "GetMeshSelMethod", header: "MeshVS_Mesh.hxx".}
proc SetMeshSelMethod*(this: var MeshVS_Mesh; M: MeshVS_MeshSelectionMethod) {.
    importcpp: "SetMeshSelMethod", header: "MeshVS_Mesh.hxx".}
proc IsWholeMeshOwner*(this: MeshVS_Mesh; theOwner: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsWholeMeshOwner", header: "MeshVS_Mesh.hxx".}
type
  MeshVS_Meshbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "MeshVS_Mesh::get_type_name(@)",
                              header: "MeshVS_Mesh.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_Mesh::get_type_descriptor(@)", header: "MeshVS_Mesh.hxx".}
proc DynamicType*(this: MeshVS_Mesh): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_Mesh.hxx".}