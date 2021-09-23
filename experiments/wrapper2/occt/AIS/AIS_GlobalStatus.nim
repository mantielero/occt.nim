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

import
  ../Standard/Standard, ../Standard/Standard_Type, AIS_DisplayStatus,
  ../Prs3d/Prs3d_Drawer, ../TColStd/TColStd_ListOfInteger,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of AIS_GlobalStatus"
type
  Handle_AIS_GlobalStatus* = handle[AIS_GlobalStatus]

## ! Stores  information  about objects in graphic context:
## ! - Status Of Display : in the main viewer
## ! hidden in the main viewer
## ! - Displayed Modes
## ! - Active Selection Modes
## ! - is the Interactive Object Current ?
## ! - Layer Index

type
  AIS_GlobalStatus* {.importcpp: "AIS_GlobalStatus",
                     header: "AIS_GlobalStatus.hxx", bycopy.} = object of Standard_Transient

  AIS_GlobalStatusbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "AIS_GlobalStatus::get_type_name(@)",
                              header: "AIS_GlobalStatus.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_GlobalStatus::get_type_descriptor(@)",
    header: "AIS_GlobalStatus.hxx".}
proc DynamicType*(this: AIS_GlobalStatus): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_GlobalStatus.hxx".}
proc constructAIS_GlobalStatus*(): AIS_GlobalStatus {.constructor,
    importcpp: "AIS_GlobalStatus(@)", header: "AIS_GlobalStatus.hxx".}
proc constructAIS_GlobalStatus*(aStat: AIS_DisplayStatus;
                               aDispMode: Standard_Integer;
                               aSelMode: Standard_Integer;
                               ishilighted: Standard_Boolean = Standard_False;
                               aLayerIndex: Standard_Integer = 0): AIS_GlobalStatus {.
    constructor, importcpp: "AIS_GlobalStatus(@)", header: "AIS_GlobalStatus.hxx".}
proc SetGraphicStatus*(this: var AIS_GlobalStatus; theStatus: AIS_DisplayStatus) {.
    importcpp: "SetGraphicStatus", header: "AIS_GlobalStatus.hxx".}
proc AddSelectionMode*(this: var AIS_GlobalStatus; theMode: Standard_Integer) {.
    importcpp: "AddSelectionMode", header: "AIS_GlobalStatus.hxx".}
proc SetDisplayMode*(this: var AIS_GlobalStatus; theMode: Standard_Integer) {.
    importcpp: "SetDisplayMode", header: "AIS_GlobalStatus.hxx".}
proc DisplayMode*(this: AIS_GlobalStatus): Standard_Integer {.noSideEffect,
    importcpp: "DisplayMode", header: "AIS_GlobalStatus.hxx".}
proc SetLayerIndex*(this: var AIS_GlobalStatus; theIndex: Standard_Integer) {.
    importcpp: "SetLayerIndex", header: "AIS_GlobalStatus.hxx".}
proc SetHilightStatus*(this: var AIS_GlobalStatus; theStatus: Standard_Boolean) {.
    importcpp: "SetHilightStatus", header: "AIS_GlobalStatus.hxx".}
proc SetHilightStyle*(this: var AIS_GlobalStatus; theStyle: handle[Prs3d_Drawer]) {.
    importcpp: "SetHilightStyle", header: "AIS_GlobalStatus.hxx".}
proc HilightStyle*(this: AIS_GlobalStatus): handle[Prs3d_Drawer] {.noSideEffect,
    importcpp: "HilightStyle", header: "AIS_GlobalStatus.hxx".}
proc IsSubIntensityOn*(this: AIS_GlobalStatus): Standard_Boolean {.noSideEffect,
    importcpp: "IsSubIntensityOn", header: "AIS_GlobalStatus.hxx".}
proc SubIntensityOn*(this: var AIS_GlobalStatus) {.importcpp: "SubIntensityOn",
    header: "AIS_GlobalStatus.hxx".}
proc SubIntensityOff*(this: var AIS_GlobalStatus) {.importcpp: "SubIntensityOff",
    header: "AIS_GlobalStatus.hxx".}
proc RemoveSelectionMode*(this: var AIS_GlobalStatus; aMode: Standard_Integer) {.
    importcpp: "RemoveSelectionMode", header: "AIS_GlobalStatus.hxx".}
proc ClearSelectionModes*(this: var AIS_GlobalStatus) {.
    importcpp: "ClearSelectionModes", header: "AIS_GlobalStatus.hxx".}
proc GraphicStatus*(this: AIS_GlobalStatus): AIS_DisplayStatus {.noSideEffect,
    importcpp: "GraphicStatus", header: "AIS_GlobalStatus.hxx".}
proc SelectionModes*(this: AIS_GlobalStatus): TColStd_ListOfInteger {.noSideEffect,
    importcpp: "SelectionModes", header: "AIS_GlobalStatus.hxx".}
proc IsHilighted*(this: AIS_GlobalStatus): Standard_Boolean {.noSideEffect,
    importcpp: "IsHilighted", header: "AIS_GlobalStatus.hxx".}
proc IsSModeIn*(this: AIS_GlobalStatus; aMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsSModeIn", header: "AIS_GlobalStatus.hxx".}
proc GetLayerIndex*(this: AIS_GlobalStatus): Standard_Integer {.noSideEffect,
    importcpp: "GetLayerIndex", header: "AIS_GlobalStatus.hxx".}