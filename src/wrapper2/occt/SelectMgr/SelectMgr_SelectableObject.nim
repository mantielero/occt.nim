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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of SelectMgr_SelectionManager"
type
  SelectMgrSelectableObject* {.importcpp: "SelectMgr_SelectableObject",
                              header: "SelectMgr_SelectableObject.hxx", bycopy.} = object of PrsMgrPresentableObject ##
                                                                                                              ## !
                                                                                                              ## Clears
                                                                                                              ## all
                                                                                                              ## selections
                                                                                                              ## of
                                                                                                              ## the
                                                                                                              ## object
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Protected
                                                                                                              ## empty
                                                                                                              ## constructor.
    ## !< list of selections
    ## !< optional presentation for highlighting selected object
    ## !< optional presentation for highlighting detected object
    ## !< global selection mode
    ## !< auto-highlighting flag defining

  SelectMgrSelectableObjectbaseType* = PrsMgrPresentableObject

proc getTypeName*(): cstring {.importcpp: "SelectMgr_SelectableObject::get_type_name(@)",
                            header: "SelectMgr_SelectableObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_SelectableObject::get_type_descriptor(@)",
    header: "SelectMgr_SelectableObject.hxx".}
proc dynamicType*(this: SelectMgrSelectableObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_SelectableObject.hxx".}
proc destroySelectMgrSelectableObject*(this: var SelectMgrSelectableObject) {.
    importcpp: "#.~SelectMgr_SelectableObject()",
    header: "SelectMgr_SelectableObject.hxx".}
proc computeSelection*(this: var SelectMgrSelectableObject;
                      theSelection: Handle[SelectMgrSelection];
                      theMode: StandardInteger) {.importcpp: "ComputeSelection",
    header: "SelectMgr_SelectableObject.hxx".}
proc acceptShapeDecomposition*(this: SelectMgrSelectableObject): StandardBoolean {.
    noSideEffect, importcpp: "AcceptShapeDecomposition",
    header: "SelectMgr_SelectableObject.hxx".}
proc recomputePrimitives*(this: var SelectMgrSelectableObject) {.
    importcpp: "RecomputePrimitives", header: "SelectMgr_SelectableObject.hxx".}
proc recomputePrimitives*(this: var SelectMgrSelectableObject;
                         theMode: StandardInteger) {.
    importcpp: "RecomputePrimitives", header: "SelectMgr_SelectableObject.hxx".}
proc addSelection*(this: var SelectMgrSelectableObject;
                  aSelection: Handle[SelectMgrSelection]; aMode: StandardInteger) {.
    importcpp: "AddSelection", header: "SelectMgr_SelectableObject.hxx".}
proc clearSelections*(this: var SelectMgrSelectableObject;
                     update: StandardBoolean = standardFalse) {.
    importcpp: "ClearSelections", header: "SelectMgr_SelectableObject.hxx".}
proc selection*(this: SelectMgrSelectableObject; theMode: StandardInteger): Handle[
    SelectMgrSelection] {.noSideEffect, importcpp: "Selection",
                         header: "SelectMgr_SelectableObject.hxx".}
proc hasSelection*(this: SelectMgrSelectableObject; theMode: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "HasSelection",
    header: "SelectMgr_SelectableObject.hxx".}
proc selections*(this: SelectMgrSelectableObject): SelectMgrSequenceOfSelection {.
    noSideEffect, importcpp: "Selections", header: "SelectMgr_SelectableObject.hxx".}
proc resetTransformation*(this: var SelectMgrSelectableObject) {.
    importcpp: "ResetTransformation", header: "SelectMgr_SelectableObject.hxx".}
proc updateTransformation*(this: var SelectMgrSelectableObject) {.
    importcpp: "UpdateTransformation", header: "SelectMgr_SelectableObject.hxx".}
proc updateTransformations*(this: var SelectMgrSelectableObject;
                           aSelection: Handle[SelectMgrSelection]) {.
    importcpp: "UpdateTransformations", header: "SelectMgr_SelectableObject.hxx".}
proc hilightSelected*(this: var SelectMgrSelectableObject;
                     thePrsMgr: Handle[PrsMgrPresentationManager];
                     theSeq: SelectMgrSequenceOfOwner) {.
    importcpp: "HilightSelected", header: "SelectMgr_SelectableObject.hxx".}
proc clearSelected*(this: var SelectMgrSelectableObject) {.
    importcpp: "ClearSelected", header: "SelectMgr_SelectableObject.hxx".}
proc clearDynamicHighlight*(this: var SelectMgrSelectableObject;
                           theMgr: Handle[PrsMgrPresentationManager]) {.
    importcpp: "ClearDynamicHighlight", header: "SelectMgr_SelectableObject.hxx".}
proc hilightOwnerWithColor*(this: var SelectMgrSelectableObject;
                           thePM: Handle[PrsMgrPresentationManager];
                           theStyle: Handle[Prs3dDrawer];
                           theOwner: Handle[SelectMgrEntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "SelectMgr_SelectableObject.hxx".}
proc isAutoHilight*(this: SelectMgrSelectableObject): StandardBoolean {.
    noSideEffect, importcpp: "IsAutoHilight",
    header: "SelectMgr_SelectableObject.hxx".}
proc setAutoHilight*(this: var SelectMgrSelectableObject;
                    theAutoHilight: StandardBoolean) {.
    importcpp: "SetAutoHilight", header: "SelectMgr_SelectableObject.hxx".}
proc getHilightPresentation*(this: var SelectMgrSelectableObject;
                            thePrsMgr: Handle[PrsMgrPresentationManager]): Handle[
    Prs3dPresentation] {.importcpp: "GetHilightPresentation",
                        header: "SelectMgr_SelectableObject.hxx".}
proc getSelectPresentation*(this: var SelectMgrSelectableObject;
                           thePrsMgr: Handle[PrsMgrPresentationManager]): Handle[
    Prs3dPresentation] {.importcpp: "GetSelectPresentation",
                        header: "SelectMgr_SelectableObject.hxx".}
proc erasePresentations*(this: var SelectMgrSelectableObject;
                        theToRemove: StandardBoolean) {.
    importcpp: "ErasePresentations", header: "SelectMgr_SelectableObject.hxx".}
proc setZLayer*(this: var SelectMgrSelectableObject; theLayerId: Graphic3dZLayerId) {.
    importcpp: "SetZLayer", header: "SelectMgr_SelectableObject.hxx".}
proc updateSelection*(this: var SelectMgrSelectableObject;
                     theMode: StandardInteger = -1) {.importcpp: "UpdateSelection",
    header: "SelectMgr_SelectableObject.hxx".}
proc setAssemblyOwner*(this: var SelectMgrSelectableObject;
                      theOwner: Handle[SelectMgrEntityOwner];
                      theMode: StandardInteger = -1) {.
    importcpp: "SetAssemblyOwner", header: "SelectMgr_SelectableObject.hxx".}
proc bndBoxOfSelected*(this: var SelectMgrSelectableObject;
                      theOwners: Handle[SelectMgrIndexedMapOfOwner]): BndBox {.
    importcpp: "BndBoxOfSelected", header: "SelectMgr_SelectableObject.hxx".}
proc globalSelectionMode*(this: SelectMgrSelectableObject): StandardInteger {.
    noSideEffect, importcpp: "GlobalSelectionMode",
    header: "SelectMgr_SelectableObject.hxx".}
proc globalSelOwner*(this: SelectMgrSelectableObject): Handle[SelectMgrEntityOwner] {.
    noSideEffect, importcpp: "GlobalSelOwner",
    header: "SelectMgr_SelectableObject.hxx".}
proc getAssemblyOwner*(this: SelectMgrSelectableObject): Handle[
    SelectMgrEntityOwner] {.noSideEffect, importcpp: "GetAssemblyOwner",
                           header: "SelectMgr_SelectableObject.hxx".}
proc dumpJson*(this: SelectMgrSelectableObject; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_SelectableObject.hxx".}
discard "forward decl of SelectMgr_SelectableObject"
type
  HandleSelectMgrSelectableObject* = Handle[SelectMgrSelectableObject]


