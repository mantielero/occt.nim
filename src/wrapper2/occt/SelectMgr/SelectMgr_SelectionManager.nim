##  Created on: 1995-02-13
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
  SelectMgr_ViewerSelector, SelectMgr_TypeOfUpdate

discard "forward decl of SelectMgr_SelectableObject"
type
  SelectMgr_SelectionManager* {.importcpp: "SelectMgr_SelectionManager",
                               header: "SelectMgr_SelectionManager.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## selection
                                                                                                          ## manager
                                                                                                          ## object.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Recomputes
                                                                                                          ## given
                                                                                                          ## selection
                                                                                                          ## mode
                                                                                                          ## and
                                                                                                          ## updates
                                                                                                          ## BVHs
                                                                                                          ## in
                                                                                                          ## all
                                                                                                          ## viewer
                                                                                                          ## selectors
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Loads
                                                                                                          ## and
                                                                                                          ## creates
                                                                                                          ## selection
                                                                                                          ## structures
                                                                                                          ## for
                                                                                                          ## object
                                                                                                          ## theObject
                                                                                                          ## with
                                                                                                          ## mode
                                                                                                          ## theMode
                                                                                                          ## in
                                                                                                          ## specified
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## viewer
                                                                                                          ## selector
                                                                                                          ## theSelector.
                                                                                                          ## If
                                                                                                          ## theSelector
                                                                                                          ## is
                                                                                                          ## set
                                                                                                          ## to
                                                                                                          ## default
                                                                                                          ## value
                                                                                                          ## (NULL),
                                                                                                          ## the
                                                                                                          ## selection
                                                                                                          ## mode
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## created
                                                                                                          ## will
                                                                                                          ## be
                                                                                                          ## added
                                                                                                          ## to
                                                                                                          ## all
                                                                                                          ## known
                                                                                                          ## viewer
                                                                                                          ## selectors.

  SelectMgr_SelectionManagerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_SelectionManager::get_type_name(@)",
                              header: "SelectMgr_SelectionManager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_SelectionManager::get_type_descriptor(@)",
    header: "SelectMgr_SelectionManager.hxx".}
proc DynamicType*(this: SelectMgr_SelectionManager): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_SelectionManager.hxx".}
proc constructSelectMgr_SelectionManager*(
    theSelector: handle[SelectMgr_ViewerSelector]): SelectMgr_SelectionManager {.
    constructor, importcpp: "SelectMgr_SelectionManager(@)",
    header: "SelectMgr_SelectionManager.hxx".}
proc Selector*(this: SelectMgr_SelectionManager): handle[SelectMgr_ViewerSelector] {.
    noSideEffect, importcpp: "Selector", header: "SelectMgr_SelectionManager.hxx".}
proc Contains*(this: SelectMgr_SelectionManager;
              theObject: handle[SelectMgr_SelectableObject]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "SelectMgr_SelectionManager.hxx".}
proc Load*(this: var SelectMgr_SelectionManager;
          theObject: handle[SelectMgr_SelectableObject];
          theMode: Standard_Integer = -1) {.importcpp: "Load", header: "SelectMgr_SelectionManager.hxx".}
proc Remove*(this: var SelectMgr_SelectionManager;
            theObject: handle[SelectMgr_SelectableObject]) {.importcpp: "Remove",
    header: "SelectMgr_SelectionManager.hxx".}
proc Activate*(this: var SelectMgr_SelectionManager;
              theObject: handle[SelectMgr_SelectableObject];
              theMode: Standard_Integer = 0) {.importcpp: "Activate",
    header: "SelectMgr_SelectionManager.hxx".}
proc Deactivate*(this: var SelectMgr_SelectionManager;
                theObject: handle[SelectMgr_SelectableObject];
                theMode: Standard_Integer = -1) {.importcpp: "Deactivate",
    header: "SelectMgr_SelectionManager.hxx".}
proc IsActivated*(this: SelectMgr_SelectionManager;
                 theObject: handle[SelectMgr_SelectableObject];
                 theMode: Standard_Integer = -1): Standard_Boolean {.noSideEffect,
    importcpp: "IsActivated", header: "SelectMgr_SelectionManager.hxx".}
proc ClearSelectionStructures*(this: var SelectMgr_SelectionManager;
                              theObj: handle[SelectMgr_SelectableObject];
                              theMode: Standard_Integer = -1) {.
    importcpp: "ClearSelectionStructures",
    header: "SelectMgr_SelectionManager.hxx".}
proc RestoreSelectionStructures*(this: var SelectMgr_SelectionManager;
                                theObj: handle[SelectMgr_SelectableObject];
                                theMode: Standard_Integer = -1) {.
    importcpp: "RestoreSelectionStructures",
    header: "SelectMgr_SelectionManager.hxx".}
proc RecomputeSelection*(this: var SelectMgr_SelectionManager;
                        theObject: handle[SelectMgr_SelectableObject];
                        theIsForce: Standard_Boolean = Standard_False;
                        theMode: Standard_Integer = -1) {.
    importcpp: "RecomputeSelection", header: "SelectMgr_SelectionManager.hxx".}
proc Update*(this: var SelectMgr_SelectionManager;
            theObject: handle[SelectMgr_SelectableObject];
            theIsForce: Standard_Boolean = Standard_True) {.importcpp: "Update",
    header: "SelectMgr_SelectionManager.hxx".}
proc SetUpdateMode*(this: var SelectMgr_SelectionManager;
                   theObject: handle[SelectMgr_SelectableObject];
                   theType: SelectMgr_TypeOfUpdate) {.importcpp: "SetUpdateMode",
    header: "SelectMgr_SelectionManager.hxx".}
proc SetUpdateMode*(this: var SelectMgr_SelectionManager;
                   theObject: handle[SelectMgr_SelectableObject];
                   theMode: Standard_Integer; theType: SelectMgr_TypeOfUpdate) {.
    importcpp: "SetUpdateMode", header: "SelectMgr_SelectionManager.hxx".}
proc SetSelectionSensitivity*(this: var SelectMgr_SelectionManager;
                             theObject: handle[SelectMgr_SelectableObject];
                             theMode: Standard_Integer;
                             theNewSens: Standard_Integer) {.
    importcpp: "SetSelectionSensitivity", header: "SelectMgr_SelectionManager.hxx".}
proc UpdateSelection*(this: var SelectMgr_SelectionManager;
                     theObj: handle[SelectMgr_SelectableObject]) {.
    importcpp: "UpdateSelection", header: "SelectMgr_SelectionManager.hxx".}
discard "forward decl of SelectMgr_SelectionManager"
type
  Handle_SelectMgr_SelectionManager* = handle[SelectMgr_SelectionManager]
