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

discard "forward decl of SelectMgr_SelectableObject"
type
  SelectMgrSelectionManager* {.importcpp: "SelectMgr_SelectionManager",
                              header: "SelectMgr_SelectionManager.hxx", bycopy.} = object of StandardTransient ##
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

  SelectMgrSelectionManagerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "SelectMgr_SelectionManager::get_type_name(@)",
                            header: "SelectMgr_SelectionManager.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_SelectionManager::get_type_descriptor(@)",
    header: "SelectMgr_SelectionManager.hxx".}
proc dynamicType*(this: SelectMgrSelectionManager): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_SelectionManager.hxx".}
proc constructSelectMgrSelectionManager*(theSelector: Handle[
    SelectMgrViewerSelector]): SelectMgrSelectionManager {.constructor,
    importcpp: "SelectMgr_SelectionManager(@)",
    header: "SelectMgr_SelectionManager.hxx".}
proc selector*(this: SelectMgrSelectionManager): Handle[SelectMgrViewerSelector] {.
    noSideEffect, importcpp: "Selector", header: "SelectMgr_SelectionManager.hxx".}
proc contains*(this: SelectMgrSelectionManager;
              theObject: Handle[SelectMgrSelectableObject]): bool {.noSideEffect,
    importcpp: "Contains", header: "SelectMgr_SelectionManager.hxx".}
proc load*(this: var SelectMgrSelectionManager;
          theObject: Handle[SelectMgrSelectableObject]; theMode: cint = -1) {.
    importcpp: "Load", header: "SelectMgr_SelectionManager.hxx".}
proc remove*(this: var SelectMgrSelectionManager;
            theObject: Handle[SelectMgrSelectableObject]) {.importcpp: "Remove",
    header: "SelectMgr_SelectionManager.hxx".}
proc activate*(this: var SelectMgrSelectionManager;
              theObject: Handle[SelectMgrSelectableObject]; theMode: cint = 0) {.
    importcpp: "Activate", header: "SelectMgr_SelectionManager.hxx".}
proc deactivate*(this: var SelectMgrSelectionManager;
                theObject: Handle[SelectMgrSelectableObject]; theMode: cint = -1) {.
    importcpp: "Deactivate", header: "SelectMgr_SelectionManager.hxx".}
proc isActivated*(this: SelectMgrSelectionManager;
                 theObject: Handle[SelectMgrSelectableObject]; theMode: cint = -1): bool {.
    noSideEffect, importcpp: "IsActivated",
    header: "SelectMgr_SelectionManager.hxx".}
proc clearSelectionStructures*(this: var SelectMgrSelectionManager;
                              theObj: Handle[SelectMgrSelectableObject];
                              theMode: cint = -1) {.
    importcpp: "ClearSelectionStructures",
    header: "SelectMgr_SelectionManager.hxx".}
proc restoreSelectionStructures*(this: var SelectMgrSelectionManager;
                                theObj: Handle[SelectMgrSelectableObject];
                                theMode: cint = -1) {.
    importcpp: "RestoreSelectionStructures",
    header: "SelectMgr_SelectionManager.hxx".}
proc recomputeSelection*(this: var SelectMgrSelectionManager;
                        theObject: Handle[SelectMgrSelectableObject];
                        theIsForce: bool = false; theMode: cint = -1) {.
    importcpp: "RecomputeSelection", header: "SelectMgr_SelectionManager.hxx".}
proc update*(this: var SelectMgrSelectionManager;
            theObject: Handle[SelectMgrSelectableObject]; theIsForce: bool = true) {.
    importcpp: "Update", header: "SelectMgr_SelectionManager.hxx".}
proc setUpdateMode*(this: var SelectMgrSelectionManager;
                   theObject: Handle[SelectMgrSelectableObject];
                   theType: SelectMgrTypeOfUpdate) {.importcpp: "SetUpdateMode",
    header: "SelectMgr_SelectionManager.hxx".}
proc setUpdateMode*(this: var SelectMgrSelectionManager;
                   theObject: Handle[SelectMgrSelectableObject]; theMode: cint;
                   theType: SelectMgrTypeOfUpdate) {.importcpp: "SetUpdateMode",
    header: "SelectMgr_SelectionManager.hxx".}
proc setSelectionSensitivity*(this: var SelectMgrSelectionManager;
                             theObject: Handle[SelectMgrSelectableObject];
                             theMode: cint; theNewSens: cint) {.
    importcpp: "SetSelectionSensitivity", header: "SelectMgr_SelectionManager.hxx".}
proc updateSelection*(this: var SelectMgrSelectionManager;
                     theObj: Handle[SelectMgrSelectableObject]) {.
    importcpp: "UpdateSelection", header: "SelectMgr_SelectionManager.hxx".}
discard "forward decl of SelectMgr_SelectionManager"
type
  HandleC1C1* = Handle[SelectMgrSelectionManager]


























