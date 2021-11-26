##  Created on: 1997-01-24
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of AIS_GlobalStatus"
type
  HandleC1C1* = Handle[AIS_GlobalStatus]

## ! Stores  information  about objects in graphic context:
## ! - Status Of Display : in the main viewer
## ! hidden in the main viewer
## ! - Displayed Modes
## ! - Active Selection Modes
## ! - is the Interactive Object Current ?
## ! - Layer Index

type
  AIS_GlobalStatus* {.importcpp: "AIS_GlobalStatus",
                     header: "AIS_GlobalStatus.hxx", bycopy.} = object of StandardTransient

  AIS_GlobalStatusbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "AIS_GlobalStatus::get_type_name(@)",
                            header: "AIS_GlobalStatus.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_GlobalStatus::get_type_descriptor(@)",
    header: "AIS_GlobalStatus.hxx".}
proc dynamicType*(this: AIS_GlobalStatus): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_GlobalStatus.hxx".}
proc constructAIS_GlobalStatus*(): AIS_GlobalStatus {.constructor,
    importcpp: "AIS_GlobalStatus(@)", header: "AIS_GlobalStatus.hxx".}
proc constructAIS_GlobalStatus*(aStat: AIS_DisplayStatus; aDispMode: cint;
                               aSelMode: cint; ishilighted: bool = false;
                               aLayerIndex: cint = 0): AIS_GlobalStatus {.
    constructor, importcpp: "AIS_GlobalStatus(@)", header: "AIS_GlobalStatus.hxx".}
proc setGraphicStatus*(this: var AIS_GlobalStatus; theStatus: AIS_DisplayStatus) {.
    importcpp: "SetGraphicStatus", header: "AIS_GlobalStatus.hxx".}
proc addSelectionMode*(this: var AIS_GlobalStatus; theMode: cint) {.
    importcpp: "AddSelectionMode", header: "AIS_GlobalStatus.hxx".}
proc setDisplayMode*(this: var AIS_GlobalStatus; theMode: cint) {.
    importcpp: "SetDisplayMode", header: "AIS_GlobalStatus.hxx".}
proc displayMode*(this: AIS_GlobalStatus): cint {.noSideEffect,
    importcpp: "DisplayMode", header: "AIS_GlobalStatus.hxx".}
proc setLayerIndex*(this: var AIS_GlobalStatus; theIndex: cint) {.
    importcpp: "SetLayerIndex", header: "AIS_GlobalStatus.hxx".}
proc setHilightStatus*(this: var AIS_GlobalStatus; theStatus: bool) {.
    importcpp: "SetHilightStatus", header: "AIS_GlobalStatus.hxx".}
proc setHilightStyle*(this: var AIS_GlobalStatus; theStyle: Handle[Prs3dDrawer]) {.
    importcpp: "SetHilightStyle", header: "AIS_GlobalStatus.hxx".}
proc hilightStyle*(this: AIS_GlobalStatus): Handle[Prs3dDrawer] {.noSideEffect,
    importcpp: "HilightStyle", header: "AIS_GlobalStatus.hxx".}
proc isSubIntensityOn*(this: AIS_GlobalStatus): bool {.noSideEffect,
    importcpp: "IsSubIntensityOn", header: "AIS_GlobalStatus.hxx".}
proc subIntensityOn*(this: var AIS_GlobalStatus) {.importcpp: "SubIntensityOn",
    header: "AIS_GlobalStatus.hxx".}
proc subIntensityOff*(this: var AIS_GlobalStatus) {.importcpp: "SubIntensityOff",
    header: "AIS_GlobalStatus.hxx".}
proc removeSelectionMode*(this: var AIS_GlobalStatus; aMode: cint) {.
    importcpp: "RemoveSelectionMode", header: "AIS_GlobalStatus.hxx".}
proc clearSelectionModes*(this: var AIS_GlobalStatus) {.
    importcpp: "ClearSelectionModes", header: "AIS_GlobalStatus.hxx".}
proc graphicStatus*(this: AIS_GlobalStatus): AIS_DisplayStatus {.noSideEffect,
    importcpp: "GraphicStatus", header: "AIS_GlobalStatus.hxx".}
proc selectionModes*(this: AIS_GlobalStatus): TColStdListOfInteger {.noSideEffect,
    importcpp: "SelectionModes", header: "AIS_GlobalStatus.hxx".}
proc isHilighted*(this: AIS_GlobalStatus): bool {.noSideEffect,
    importcpp: "IsHilighted", header: "AIS_GlobalStatus.hxx".}
proc isSModeIn*(this: AIS_GlobalStatus; aMode: cint): bool {.noSideEffect,
    importcpp: "IsSModeIn", header: "AIS_GlobalStatus.hxx".}
proc getLayerIndex*(this: AIS_GlobalStatus): cint {.noSideEffect,
    importcpp: "GetLayerIndex", header: "AIS_GlobalStatus.hxx".}

























