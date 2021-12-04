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


proc newSelectMgrSelectionManager*(theSelector: Handle[SelectMgrViewerSelector]): SelectMgrSelectionManager {.
    cdecl, constructor, importcpp: "SelectMgr_SelectionManager(@)", header: "SelectMgr_SelectionManager.hxx".}
proc selector*(this: SelectMgrSelectionManager): Handle[SelectMgrViewerSelector] {.
    noSideEffect, cdecl, importcpp: "Selector", header: "SelectMgr_SelectionManager.hxx".}
proc contains*(this: SelectMgrSelectionManager;
              theObject: Handle[SelectMgrSelectableObject]): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "SelectMgr_SelectionManager.hxx".}
proc load*(this: var SelectMgrSelectionManager;
          theObject: Handle[SelectMgrSelectableObject]; theMode: cint = -1) {.cdecl,
    importcpp: "Load", header: "SelectMgr_SelectionManager.hxx".}
proc remove*(this: var SelectMgrSelectionManager;
            theObject: Handle[SelectMgrSelectableObject]) {.cdecl,
    importcpp: "Remove", header: "SelectMgr_SelectionManager.hxx".}
proc activate*(this: var SelectMgrSelectionManager;
              theObject: Handle[SelectMgrSelectableObject]; theMode: cint = 0) {.
    cdecl, importcpp: "Activate", header: "SelectMgr_SelectionManager.hxx".}
proc deactivate*(this: var SelectMgrSelectionManager;
                theObject: Handle[SelectMgrSelectableObject]; theMode: cint = -1) {.
    cdecl, importcpp: "Deactivate", header: "SelectMgr_SelectionManager.hxx".}
proc isActivated*(this: SelectMgrSelectionManager;
                 theObject: Handle[SelectMgrSelectableObject]; theMode: cint = -1): bool {.
    noSideEffect, cdecl, importcpp: "IsActivated", header: "SelectMgr_SelectionManager.hxx".}
proc clearSelectionStructures*(this: var SelectMgrSelectionManager;
                              theObj: Handle[SelectMgrSelectableObject];
                              theMode: cint = -1) {.cdecl,
    importcpp: "ClearSelectionStructures", header: "SelectMgr_SelectionManager.hxx".}
proc restoreSelectionStructures*(this: var SelectMgrSelectionManager;
                                theObj: Handle[SelectMgrSelectableObject];
                                theMode: cint = -1) {.cdecl,
    importcpp: "RestoreSelectionStructures", header: "SelectMgr_SelectionManager.hxx".}
proc recomputeSelection*(this: var SelectMgrSelectionManager;
                        theObject: Handle[SelectMgrSelectableObject];
                        theIsForce: bool = false; theMode: cint = -1) {.cdecl,
    importcpp: "RecomputeSelection", header: "SelectMgr_SelectionManager.hxx".}
proc update*(this: var SelectMgrSelectionManager;
            theObject: Handle[SelectMgrSelectableObject]; theIsForce: bool = true) {.
    cdecl, importcpp: "Update", header: "SelectMgr_SelectionManager.hxx".}
proc setUpdateMode*(this: var SelectMgrSelectionManager;
                   theObject: Handle[SelectMgrSelectableObject];
                   theType: SelectMgrTypeOfUpdate) {.cdecl,
    importcpp: "SetUpdateMode", header: "SelectMgr_SelectionManager.hxx".}
proc setUpdateMode*(this: var SelectMgrSelectionManager;
                   theObject: Handle[SelectMgrSelectableObject]; theMode: cint;
                   theType: SelectMgrTypeOfUpdate) {.cdecl,
    importcpp: "SetUpdateMode", header: "SelectMgr_SelectionManager.hxx".}
proc setSelectionSensitivity*(this: var SelectMgrSelectionManager;
                             theObject: Handle[SelectMgrSelectableObject];
                             theMode: cint; theNewSens: cint) {.cdecl,
    importcpp: "SetSelectionSensitivity", header: "SelectMgr_SelectionManager.hxx".}
proc updateSelection*(this: var SelectMgrSelectionManager;
                     theObj: Handle[SelectMgrSelectableObject]) {.cdecl,
    importcpp: "UpdateSelection", header: "SelectMgr_SelectionManager.hxx".}
type
  HandleSelectMgrSelectionManager* = Handle[SelectMgrSelectionManager]
