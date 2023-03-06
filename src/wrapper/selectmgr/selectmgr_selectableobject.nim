import ../standard/standard_types
import ../prs3d/prs3d_types
import ../prsmgr/prsmgr_types
import ../graphic3d/graphic3d_types
import ../bnd/bnd_types
import selectmgr_types





##  Created on: 1995-02-20
##  Created by: Mister rmi
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



proc destroySelectMgrSelectableObject*(this: var SelectMgrSelectableObject) {.cdecl,
    importcpp: "#.~SelectMgr_SelectableObject()", header: "SelectMgr_SelectableObject.hxx".}
proc computeSelection*(this: var SelectMgrSelectableObject;
                      theSelection: Handle[SelectMgrSelection]; theMode: cint) {.
    cdecl, importcpp: "ComputeSelection", header: "SelectMgr_SelectableObject.hxx".}
proc acceptShapeDecomposition*(this: SelectMgrSelectableObject): bool {.
    noSideEffect, cdecl, importcpp: "AcceptShapeDecomposition", header: "SelectMgr_SelectableObject.hxx".}
proc recomputePrimitives*(this: var SelectMgrSelectableObject) {.cdecl,
    importcpp: "RecomputePrimitives", header: "SelectMgr_SelectableObject.hxx".}
proc recomputePrimitives*(this: var SelectMgrSelectableObject; theMode: cint) {.cdecl,
    importcpp: "RecomputePrimitives", header: "SelectMgr_SelectableObject.hxx".}
proc addSelection*(this: var SelectMgrSelectableObject;
                  aSelection: Handle[SelectMgrSelection]; aMode: cint) {.cdecl,
    importcpp: "AddSelection", header: "SelectMgr_SelectableObject.hxx".}
proc clearSelections*(this: var SelectMgrSelectableObject; update: bool = false) {.
    cdecl, importcpp: "ClearSelections", header: "SelectMgr_SelectableObject.hxx".}
proc selection*(this: SelectMgrSelectableObject; theMode: cint): Handle[
    SelectMgrSelection] {.noSideEffect, cdecl, importcpp: "Selection", header: "SelectMgr_SelectableObject.hxx".}
proc hasSelection*(this: SelectMgrSelectableObject; theMode: cint): bool {.
    noSideEffect, cdecl, importcpp: "HasSelection", header: "SelectMgr_SelectableObject.hxx".}
proc selections*(this: SelectMgrSelectableObject): SelectMgrSequenceOfSelection {.
    noSideEffect, cdecl, importcpp: "Selections", header: "SelectMgr_SelectableObject.hxx".}
proc resetTransformation*(this: var SelectMgrSelectableObject) {.cdecl,
    importcpp: "ResetTransformation", header: "SelectMgr_SelectableObject.hxx".}
proc updateTransformation*(this: var SelectMgrSelectableObject) {.cdecl,
    importcpp: "UpdateTransformation", header: "SelectMgr_SelectableObject.hxx".}
proc updateTransformations*(this: var SelectMgrSelectableObject;
                           aSelection: Handle[SelectMgrSelection]) {.cdecl,
    importcpp: "UpdateTransformations", header: "SelectMgr_SelectableObject.hxx".}
proc hilightSelected*(this: var SelectMgrSelectableObject;
                     thePrsMgr: Handle[PrsMgrPresentationManager];
                     theSeq: SelectMgrSequenceOfOwner) {.cdecl,
    importcpp: "HilightSelected", header: "SelectMgr_SelectableObject.hxx".}
proc clearSelected*(this: var SelectMgrSelectableObject) {.cdecl,
    importcpp: "ClearSelected", header: "SelectMgr_SelectableObject.hxx".}
proc clearDynamicHighlight*(this: var SelectMgrSelectableObject;
                           theMgr: Handle[PrsMgrPresentationManager]) {.cdecl,
    importcpp: "ClearDynamicHighlight", header: "SelectMgr_SelectableObject.hxx".}
proc hilightOwnerWithColor*(this: var SelectMgrSelectableObject;
                           thePM: Handle[PrsMgrPresentationManager];
                           theStyle: Handle[Prs3dDrawer];
                           theOwner: Handle[SelectMgrEntityOwner]) {.cdecl,
    importcpp: "HilightOwnerWithColor", header: "SelectMgr_SelectableObject.hxx".}
proc isAutoHilight*(this: SelectMgrSelectableObject): bool {.noSideEffect, cdecl,
    importcpp: "IsAutoHilight", header: "SelectMgr_SelectableObject.hxx".}
proc setAutoHilight*(this: var SelectMgrSelectableObject; theAutoHilight: bool) {.
    cdecl, importcpp: "SetAutoHilight", header: "SelectMgr_SelectableObject.hxx".}
proc getHilightPresentation*(this: var SelectMgrSelectableObject;
                            thePrsMgr: Handle[PrsMgrPresentationManager]): Handle[
    Prs3dPresentation] {.cdecl, importcpp: "GetHilightPresentation", header: "SelectMgr_SelectableObject.hxx".}
proc getSelectPresentation*(this: var SelectMgrSelectableObject;
                           thePrsMgr: Handle[PrsMgrPresentationManager]): Handle[
    Prs3dPresentation] {.cdecl, importcpp: "GetSelectPresentation", header: "SelectMgr_SelectableObject.hxx".}
proc erasePresentations*(this: var SelectMgrSelectableObject; theToRemove: bool) {.
    cdecl, importcpp: "ErasePresentations", header: "SelectMgr_SelectableObject.hxx".}
proc setZLayer*(this: var SelectMgrSelectableObject; theLayerId: Graphic3dZLayerId) {.
    cdecl, importcpp: "SetZLayer", header: "SelectMgr_SelectableObject.hxx".}
proc updateSelection*(this: var SelectMgrSelectableObject; theMode: cint = -1) {.cdecl,
    importcpp: "UpdateSelection", header: "SelectMgr_SelectableObject.hxx".}
proc setAssemblyOwner*(this: var SelectMgrSelectableObject;
                      theOwner: Handle[SelectMgrEntityOwner]; theMode: cint = -1) {.
    cdecl, importcpp: "SetAssemblyOwner", header: "SelectMgr_SelectableObject.hxx".}
proc bndBoxOfSelected*(this: var SelectMgrSelectableObject;
                      theOwners: Handle[SelectMgrIndexedMapOfOwner]): BndBox {.
    cdecl, importcpp: "BndBoxOfSelected", header: "SelectMgr_SelectableObject.hxx".}
proc globalSelectionMode*(this: SelectMgrSelectableObject): cint {.noSideEffect,
    cdecl, importcpp: "GlobalSelectionMode", header: "SelectMgr_SelectableObject.hxx".}
proc globalSelOwner*(this: SelectMgrSelectableObject): Handle[SelectMgrEntityOwner] {.
    noSideEffect, cdecl, importcpp: "GlobalSelOwner", header: "SelectMgr_SelectableObject.hxx".}
proc getAssemblyOwner*(this: SelectMgrSelectableObject): Handle[
    SelectMgrEntityOwner] {.noSideEffect, cdecl, importcpp: "GetAssemblyOwner",
                           header: "SelectMgr_SelectableObject.hxx".}
proc dumpJson*(this: SelectMgrSelectableObject; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_SelectableObject.hxx".}



