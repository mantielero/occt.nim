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

import
  ../PrsMgr/PrsMgr_PresentableObject, SelectMgr_IndexedMapOfOwner,
  SelectMgr_SequenceOfSelection, SelectMgr_Selection, SelectMgr_SequenceOfOwner

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of SelectMgr_SelectionManager"
type
  SelectMgr_SelectableObject* {.importcpp: "SelectMgr_SelectableObject",
                               header: "SelectMgr_SelectableObject.hxx", bycopy.} = object of PrsMgr_PresentableObject ##
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

  SelectMgr_SelectableObjectbase_type* = PrsMgr_PresentableObject

proc get_type_name*(): cstring {.importcpp: "SelectMgr_SelectableObject::get_type_name(@)",
                              header: "SelectMgr_SelectableObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_SelectableObject::get_type_descriptor(@)",
    header: "SelectMgr_SelectableObject.hxx".}
proc DynamicType*(this: SelectMgr_SelectableObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_SelectableObject.hxx".}
proc destroySelectMgr_SelectableObject*(this: var SelectMgr_SelectableObject) {.
    importcpp: "#.~SelectMgr_SelectableObject()",
    header: "SelectMgr_SelectableObject.hxx".}
proc ComputeSelection*(this: var SelectMgr_SelectableObject;
                      theSelection: handle[SelectMgr_Selection];
                      theMode: Standard_Integer) {.importcpp: "ComputeSelection",
    header: "SelectMgr_SelectableObject.hxx".}
proc AcceptShapeDecomposition*(this: SelectMgr_SelectableObject): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptShapeDecomposition",
    header: "SelectMgr_SelectableObject.hxx".}
proc RecomputePrimitives*(this: var SelectMgr_SelectableObject) {.
    importcpp: "RecomputePrimitives", header: "SelectMgr_SelectableObject.hxx".}
proc RecomputePrimitives*(this: var SelectMgr_SelectableObject;
                         theMode: Standard_Integer) {.
    importcpp: "RecomputePrimitives", header: "SelectMgr_SelectableObject.hxx".}
proc AddSelection*(this: var SelectMgr_SelectableObject;
                  aSelection: handle[SelectMgr_Selection]; aMode: Standard_Integer) {.
    importcpp: "AddSelection", header: "SelectMgr_SelectableObject.hxx".}
proc ClearSelections*(this: var SelectMgr_SelectableObject;
                     update: Standard_Boolean = Standard_False) {.
    importcpp: "ClearSelections", header: "SelectMgr_SelectableObject.hxx".}
proc Selection*(this: SelectMgr_SelectableObject; theMode: Standard_Integer): handle[
    SelectMgr_Selection] {.noSideEffect, importcpp: "Selection",
                          header: "SelectMgr_SelectableObject.hxx".}
proc HasSelection*(this: SelectMgr_SelectableObject; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasSelection",
    header: "SelectMgr_SelectableObject.hxx".}
proc Selections*(this: SelectMgr_SelectableObject): SelectMgr_SequenceOfSelection {.
    noSideEffect, importcpp: "Selections", header: "SelectMgr_SelectableObject.hxx".}
proc ResetTransformation*(this: var SelectMgr_SelectableObject) {.
    importcpp: "ResetTransformation", header: "SelectMgr_SelectableObject.hxx".}
proc UpdateTransformation*(this: var SelectMgr_SelectableObject) {.
    importcpp: "UpdateTransformation", header: "SelectMgr_SelectableObject.hxx".}
proc UpdateTransformations*(this: var SelectMgr_SelectableObject;
                           aSelection: handle[SelectMgr_Selection]) {.
    importcpp: "UpdateTransformations", header: "SelectMgr_SelectableObject.hxx".}
proc HilightSelected*(this: var SelectMgr_SelectableObject;
                     thePrsMgr: handle[PrsMgr_PresentationManager];
                     theSeq: SelectMgr_SequenceOfOwner) {.
    importcpp: "HilightSelected", header: "SelectMgr_SelectableObject.hxx".}
proc ClearSelected*(this: var SelectMgr_SelectableObject) {.
    importcpp: "ClearSelected", header: "SelectMgr_SelectableObject.hxx".}
proc ClearDynamicHighlight*(this: var SelectMgr_SelectableObject;
                           theMgr: handle[PrsMgr_PresentationManager]) {.
    importcpp: "ClearDynamicHighlight", header: "SelectMgr_SelectableObject.hxx".}
proc HilightOwnerWithColor*(this: var SelectMgr_SelectableObject;
                           thePM: handle[PrsMgr_PresentationManager];
                           theStyle: handle[Prs3d_Drawer];
                           theOwner: handle[SelectMgr_EntityOwner]) {.
    importcpp: "HilightOwnerWithColor", header: "SelectMgr_SelectableObject.hxx".}
proc IsAutoHilight*(this: SelectMgr_SelectableObject): Standard_Boolean {.
    noSideEffect, importcpp: "IsAutoHilight",
    header: "SelectMgr_SelectableObject.hxx".}
proc SetAutoHilight*(this: var SelectMgr_SelectableObject;
                    theAutoHilight: Standard_Boolean) {.
    importcpp: "SetAutoHilight", header: "SelectMgr_SelectableObject.hxx".}
proc GetHilightPresentation*(this: var SelectMgr_SelectableObject;
                            thePrsMgr: handle[PrsMgr_PresentationManager]): handle[
    Prs3d_Presentation] {.importcpp: "GetHilightPresentation",
                         header: "SelectMgr_SelectableObject.hxx".}
proc GetSelectPresentation*(this: var SelectMgr_SelectableObject;
                           thePrsMgr: handle[PrsMgr_PresentationManager]): handle[
    Prs3d_Presentation] {.importcpp: "GetSelectPresentation",
                         header: "SelectMgr_SelectableObject.hxx".}
proc ErasePresentations*(this: var SelectMgr_SelectableObject;
                        theToRemove: Standard_Boolean) {.
    importcpp: "ErasePresentations", header: "SelectMgr_SelectableObject.hxx".}
proc SetZLayer*(this: var SelectMgr_SelectableObject; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "SetZLayer", header: "SelectMgr_SelectableObject.hxx".}
proc UpdateSelection*(this: var SelectMgr_SelectableObject;
                     theMode: Standard_Integer = -1) {.importcpp: "UpdateSelection",
    header: "SelectMgr_SelectableObject.hxx".}
proc SetAssemblyOwner*(this: var SelectMgr_SelectableObject;
                      theOwner: handle[SelectMgr_EntityOwner];
                      theMode: Standard_Integer = -1) {.
    importcpp: "SetAssemblyOwner", header: "SelectMgr_SelectableObject.hxx".}
proc BndBoxOfSelected*(this: var SelectMgr_SelectableObject;
                      theOwners: handle[SelectMgr_IndexedMapOfOwner]): Bnd_Box {.
    importcpp: "BndBoxOfSelected", header: "SelectMgr_SelectableObject.hxx".}
proc GlobalSelectionMode*(this: SelectMgr_SelectableObject): Standard_Integer {.
    noSideEffect, importcpp: "GlobalSelectionMode",
    header: "SelectMgr_SelectableObject.hxx".}
proc GlobalSelOwner*(this: SelectMgr_SelectableObject): handle[
    SelectMgr_EntityOwner] {.noSideEffect, importcpp: "GlobalSelOwner",
                            header: "SelectMgr_SelectableObject.hxx".}
proc GetAssemblyOwner*(this: SelectMgr_SelectableObject): handle[
    SelectMgr_EntityOwner] {.noSideEffect, importcpp: "GetAssemblyOwner",
                            header: "SelectMgr_SelectableObject.hxx".}
proc DumpJson*(this: SelectMgr_SelectableObject; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_SelectableObject.hxx".}
discard "forward decl of SelectMgr_SelectableObject"
type
  Handle_SelectMgr_SelectableObject* = handle[SelectMgr_SelectableObject]
