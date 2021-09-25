##  Created on: 2009-04-06
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

discard "forward decl of TDF_Label"
discard "forward decl of gp_Pnt"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataXtd_Presentation"
discard "forward decl of TDataXtd_Presentation"
type
  HandleTDataXtdPresentation* = Handle[TDataXtdPresentation]

## ! Attribute containing parameters of presentation of the shape,
## ! e.g. the shape attached to the same label and displayed using
## ! TPrsStd tools (see TPrsStd_AISPresentation).

type
  TDataXtdPresentation* {.importcpp: "TDataXtd_Presentation",
                         header: "TDataXtd_Presentation.hxx", bycopy.} = object of TDF_Attribute ## !@name Attribute mechanics
                                                                                          ## ! Empty constructor
                                                                                          ## !@name Access to data
                                                                                          ## ! Returns the GUID of the driver managing display of associated AIS object
                                                                                          ## ! Convert values of old Quantity_NameOfColor to new enumeration for reading old documents
                                                                                          ## ! after #0030969 (Coding Rules - refactor Quantity_Color.cxx color table definition).
    ## ! Checks a list of selection modes.


proc constructTDataXtdPresentation*(): TDataXtdPresentation {.constructor,
    importcpp: "TDataXtd_Presentation(@)", header: "TDataXtd_Presentation.hxx".}
proc set*(theLabel: TDF_Label; theDriverId: StandardGUID): Handle[
    TDataXtdPresentation] {.importcpp: "TDataXtd_Presentation::Set(@)",
                           header: "TDataXtd_Presentation.hxx".}
proc unset*(theLabel: TDF_Label) {.importcpp: "TDataXtd_Presentation::Unset(@)",
                                header: "TDataXtd_Presentation.hxx".}
proc id*(this: TDataXtdPresentation): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Presentation.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDataXtd_Presentation::GetID(@)",
                           header: "TDataXtd_Presentation.hxx".}
proc restore*(this: var TDataXtdPresentation; anAttribute: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Presentation.hxx".}
proc newEmpty*(this: TDataXtdPresentation): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Presentation.hxx".}
proc paste*(this: TDataXtdPresentation; intoAttribute: Handle[TDF_Attribute];
           aRelocTationable: Handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDataXtd_Presentation.hxx".}
proc backupCopy*(this: TDataXtdPresentation): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TDataXtd_Presentation.hxx".}
type
  TDataXtdPresentationbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataXtd_Presentation::get_type_name(@)",
                            header: "TDataXtd_Presentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataXtd_Presentation::get_type_descriptor(@)",
    header: "TDataXtd_Presentation.hxx".}
proc dynamicType*(this: TDataXtdPresentation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Presentation.hxx".}
proc getDriverGUID*(this: TDataXtdPresentation): StandardGUID {.noSideEffect,
    importcpp: "GetDriverGUID", header: "TDataXtd_Presentation.hxx".}
proc setDriverGUID*(this: var TDataXtdPresentation; theGUID: StandardGUID) {.
    importcpp: "SetDriverGUID", header: "TDataXtd_Presentation.hxx".}
proc isDisplayed*(this: TDataXtdPresentation): bool {.noSideEffect,
    importcpp: "IsDisplayed", header: "TDataXtd_Presentation.hxx".}
proc hasOwnMaterial*(this: TDataXtdPresentation): bool {.noSideEffect,
    importcpp: "HasOwnMaterial", header: "TDataXtd_Presentation.hxx".}
proc hasOwnTransparency*(this: TDataXtdPresentation): bool {.noSideEffect,
    importcpp: "HasOwnTransparency", header: "TDataXtd_Presentation.hxx".}
proc hasOwnColor*(this: TDataXtdPresentation): bool {.noSideEffect,
    importcpp: "HasOwnColor", header: "TDataXtd_Presentation.hxx".}
proc hasOwnWidth*(this: TDataXtdPresentation): bool {.noSideEffect,
    importcpp: "HasOwnWidth", header: "TDataXtd_Presentation.hxx".}
proc hasOwnMode*(this: TDataXtdPresentation): bool {.noSideEffect,
    importcpp: "HasOwnMode", header: "TDataXtd_Presentation.hxx".}
proc hasOwnSelectionMode*(this: TDataXtdPresentation): bool {.noSideEffect,
    importcpp: "HasOwnSelectionMode", header: "TDataXtd_Presentation.hxx".}
proc setDisplayed*(this: var TDataXtdPresentation; theIsDisplayed: bool) {.
    importcpp: "SetDisplayed", header: "TDataXtd_Presentation.hxx".}
proc setMaterialIndex*(this: var TDataXtdPresentation; theMaterialIndex: int) {.
    importcpp: "SetMaterialIndex", header: "TDataXtd_Presentation.hxx".}
proc setTransparency*(this: var TDataXtdPresentation; theValue: float) {.
    importcpp: "SetTransparency", header: "TDataXtd_Presentation.hxx".}
proc setColor*(this: var TDataXtdPresentation; theColor: QuantityNameOfColor) {.
    importcpp: "SetColor", header: "TDataXtd_Presentation.hxx".}
proc setWidth*(this: var TDataXtdPresentation; theWidth: float) {.
    importcpp: "SetWidth", header: "TDataXtd_Presentation.hxx".}
proc setMode*(this: var TDataXtdPresentation; theMode: int) {.importcpp: "SetMode",
    header: "TDataXtd_Presentation.hxx".}
proc getNbSelectionModes*(this: TDataXtdPresentation): int {.noSideEffect,
    importcpp: "GetNbSelectionModes", header: "TDataXtd_Presentation.hxx".}
proc setSelectionMode*(this: var TDataXtdPresentation; theSelectionMode: int;
                      theTransaction: bool = true) {.importcpp: "SetSelectionMode",
    header: "TDataXtd_Presentation.hxx".}
proc addSelectionMode*(this: var TDataXtdPresentation; theSelectionMode: int;
                      theTransaction: bool = true) {.importcpp: "AddSelectionMode",
    header: "TDataXtd_Presentation.hxx".}
proc materialIndex*(this: TDataXtdPresentation): int {.noSideEffect,
    importcpp: "MaterialIndex", header: "TDataXtd_Presentation.hxx".}
proc transparency*(this: TDataXtdPresentation): float {.noSideEffect,
    importcpp: "Transparency", header: "TDataXtd_Presentation.hxx".}
proc color*(this: TDataXtdPresentation): QuantityNameOfColor {.noSideEffect,
    importcpp: "Color", header: "TDataXtd_Presentation.hxx".}
proc width*(this: TDataXtdPresentation): float {.noSideEffect, importcpp: "Width",
    header: "TDataXtd_Presentation.hxx".}
proc mode*(this: TDataXtdPresentation): int {.noSideEffect, importcpp: "Mode",
    header: "TDataXtd_Presentation.hxx".}
proc selectionMode*(this: TDataXtdPresentation; index: cint = 1): int {.noSideEffect,
    importcpp: "SelectionMode", header: "TDataXtd_Presentation.hxx".}
proc unsetMaterial*(this: var TDataXtdPresentation) {.importcpp: "UnsetMaterial",
    header: "TDataXtd_Presentation.hxx".}
proc unsetTransparency*(this: var TDataXtdPresentation) {.
    importcpp: "UnsetTransparency", header: "TDataXtd_Presentation.hxx".}
proc unsetColor*(this: var TDataXtdPresentation) {.importcpp: "UnsetColor",
    header: "TDataXtd_Presentation.hxx".}
proc unsetWidth*(this: var TDataXtdPresentation) {.importcpp: "UnsetWidth",
    header: "TDataXtd_Presentation.hxx".}
proc unsetMode*(this: var TDataXtdPresentation) {.importcpp: "UnsetMode",
    header: "TDataXtd_Presentation.hxx".}
proc unsetSelectionMode*(this: var TDataXtdPresentation) {.
    importcpp: "UnsetSelectionMode", header: "TDataXtd_Presentation.hxx".}
proc getColorNameFromOldEnum*(theOld: int): QuantityNameOfColor {.
    importcpp: "TDataXtd_Presentation::getColorNameFromOldEnum(@)",
    header: "TDataXtd_Presentation.hxx".}
proc getOldColorNameFromNewEnum*(theNew: QuantityNameOfColor): int {.
    importcpp: "TDataXtd_Presentation::getOldColorNameFromNewEnum(@)",
    header: "TDataXtd_Presentation.hxx".}
