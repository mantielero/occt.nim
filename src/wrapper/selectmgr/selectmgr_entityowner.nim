import ../toploc/toploc_types
import ../aspect/aspect_types
import ../standard/standard_types
import ../prs3d/prs3d_types
import ../prsmgr/prsmgr_types
import ../v3d/v3d_types
import ../graphic3d/graphic3d_types
import selectmgr_types





##  Created on: 1995-05-23
##  Created by: Robert COUBLANC
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



proc newSelectMgrEntityOwner*(aPriority: cint = 0): SelectMgrEntityOwner {.cdecl,
    constructor, importcpp: "SelectMgr_EntityOwner(@)", header: "SelectMgr_EntityOwner.hxx".}
proc newSelectMgrEntityOwner*(aSO: Handle[SelectMgrSelectableObject];
                             aPriority: cint = 0): SelectMgrEntityOwner {.cdecl,
    constructor, importcpp: "SelectMgr_EntityOwner(@)", header: "SelectMgr_EntityOwner.hxx".}
proc newSelectMgrEntityOwner*(theOwner: Handle[SelectMgrEntityOwner];
                             aPriority: cint = 0): SelectMgrEntityOwner {.cdecl,
    constructor, importcpp: "SelectMgr_EntityOwner(@)", header: "SelectMgr_EntityOwner.hxx".}
proc priority*(this: SelectMgrEntityOwner): cint {.noSideEffect, cdecl,
    importcpp: "Priority", header: "SelectMgr_EntityOwner.hxx".}
proc setPriority*(this: var SelectMgrEntityOwner; thePriority: cint) {.cdecl,
    importcpp: "SetPriority", header: "SelectMgr_EntityOwner.hxx".}
proc hasSelectable*(this: SelectMgrEntityOwner): bool {.noSideEffect, cdecl,
    importcpp: "HasSelectable", header: "SelectMgr_EntityOwner.hxx".}
proc selectable*(this: SelectMgrEntityOwner): Handle[SelectMgrSelectableObject] {.
    noSideEffect, cdecl, importcpp: "Selectable", header: "SelectMgr_EntityOwner.hxx".}
proc setSelectable*(this: var SelectMgrEntityOwner;
                   theSelObj: Handle[SelectMgrSelectableObject]) {.cdecl,
    importcpp: "SetSelectable", header: "SelectMgr_EntityOwner.hxx".}
proc handleMouseClick*(this: var SelectMgrEntityOwner; thePoint: Graphic3dVec2i;
                      theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                      theIsDoubleClick: bool): bool {.cdecl,
    importcpp: "HandleMouseClick", header: "SelectMgr_EntityOwner.hxx".}
proc isHilighted*(this: SelectMgrEntityOwner;
                 thePrsMgr: Handle[PrsMgrPresentationManager]; theMode: cint = 0): bool {.
    noSideEffect, cdecl, importcpp: "IsHilighted", header: "SelectMgr_EntityOwner.hxx".}
proc hilightWithColor*(this: var SelectMgrEntityOwner;
                      thePrsMgr: Handle[PrsMgrPresentationManager];
                      theStyle: Handle[Prs3dDrawer]; theMode: cint = 0) {.cdecl,
    importcpp: "HilightWithColor", header: "SelectMgr_EntityOwner.hxx".}
proc unhilight*(this: var SelectMgrEntityOwner;
               thePrsMgr: Handle[PrsMgrPresentationManager]; theMode: cint = 0) {.
    cdecl, importcpp: "Unhilight", header: "SelectMgr_EntityOwner.hxx".}
proc clear*(this: var SelectMgrEntityOwner;
           thePrsMgr: Handle[PrsMgrPresentationManager]; theMode: cint = 0) {.cdecl,
    importcpp: "Clear", header: "SelectMgr_EntityOwner.hxx".}
  ## / TODO
proc hasLocation*(this: SelectMgrEntityOwner): bool {.noSideEffect, cdecl,
    importcpp: "HasLocation", header: "SelectMgr_EntityOwner.hxx".}
proc location*(this: SelectMgrEntityOwner): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Location", header: "SelectMgr_EntityOwner.hxx".}
proc setLocation*(this: var SelectMgrEntityOwner; theLocation: TopLocLocation) {.
    cdecl, importcpp: "SetLocation", header: "SelectMgr_EntityOwner.hxx".}
proc isSelected*(this: SelectMgrEntityOwner): bool {.noSideEffect, cdecl,
    importcpp: "IsSelected", header: "SelectMgr_EntityOwner.hxx".}
proc setSelected*(this: var SelectMgrEntityOwner; theIsSelected: bool) {.cdecl,
    importcpp: "SetSelected", header: "SelectMgr_EntityOwner.hxx".}
proc state*(this: SelectMgrEntityOwner): cint {.noSideEffect, cdecl,
    importcpp: "State", header: "SelectMgr_EntityOwner.hxx".}
proc state*(this: var SelectMgrEntityOwner; theStatus: cint) {.cdecl,
    importcpp: "State", header: "SelectMgr_EntityOwner.hxx".}
proc isAutoHilight*(this: SelectMgrEntityOwner): bool {.noSideEffect, cdecl,
    importcpp: "IsAutoHilight", header: "SelectMgr_EntityOwner.hxx".}
proc isForcedHilight*(this: SelectMgrEntityOwner): bool {.noSideEffect, cdecl,
    importcpp: "IsForcedHilight", header: "SelectMgr_EntityOwner.hxx".}
proc setZLayer*(this: var SelectMgrEntityOwner; theLayerId: Graphic3dZLayerId) {.
    cdecl, importcpp: "SetZLayer", header: "SelectMgr_EntityOwner.hxx".}
proc updateHighlightTrsf*(this: var SelectMgrEntityOwner;
                         theViewer: Handle[V3dViewer];
                         theManager: Handle[PrsMgrPresentationManager];
                         theDispMode: cint) {.cdecl,
    importcpp: "UpdateHighlightTrsf", header: "SelectMgr_EntityOwner.hxx".}
proc isSameSelectable*(this: SelectMgrEntityOwner;
                      theOther: Handle[SelectMgrSelectableObject]): bool {.
    noSideEffect, cdecl, importcpp: "IsSameSelectable", header: "SelectMgr_EntityOwner.hxx".}
proc comesFromDecomposition*(this: SelectMgrEntityOwner): bool {.noSideEffect, cdecl,
    importcpp: "ComesFromDecomposition", header: "SelectMgr_EntityOwner.hxx".}
proc setComesFromDecomposition*(this: var SelectMgrEntityOwner;
                               theIsFromDecomposition: bool) {.cdecl,
    importcpp: "SetComesFromDecomposition", header: "SelectMgr_EntityOwner.hxx".}
proc dumpJson*(this: SelectMgrEntityOwner; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_EntityOwner.hxx".}
proc set*(this: var SelectMgrEntityOwner;
         theSelObj: Handle[SelectMgrSelectableObject]) {.cdecl, importcpp: "Set",
    header: "SelectMgr_EntityOwner.hxx".}
proc set*(this: var SelectMgrEntityOwner; thePriority: cint) {.cdecl, importcpp: "Set",
    header: "SelectMgr_EntityOwner.hxx".}





