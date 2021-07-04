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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_GUID,
  ../gp/gp_Pnt, ../TDF/TDF_Attribute, ../Quantity/Quantity_NameOfColor,
  ../TColStd/TColStd_ListOfInteger

discard "forward decl of TDF_Label"
discard "forward decl of gp_Pnt"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataXtd_Presentation"
discard "forward decl of TDataXtd_Presentation"
type
  Handle_TDataXtd_Presentation* = handle[TDataXtd_Presentation]

## ! Attribute containing parameters of presentation of the shape,
## ! e.g. the shape attached to the same label and displayed using
## ! TPrsStd tools (see TPrsStd_AISPresentation).

type
  TDataXtd_Presentation* {.importcpp: "TDataXtd_Presentation",
                          header: "TDataXtd_Presentation.hxx", bycopy.} = object of TDF_Attribute ## !@name Attribute mechanics
                                                                                           ## ! Empty constructor
                                                                                           ## !@name Access to data
                                                                                           ## ! Returns the GUID of the driver managing display of associated AIS object
                                                                                           ## ! Convert values of old Quantity_NameOfColor to new enumeration for reading old documents
                                                                                           ## ! after #0030969 (Coding Rules - refactor Quantity_Color.cxx color table definition).
    ## ! Checks a list of selection modes.


proc constructTDataXtd_Presentation*(): TDataXtd_Presentation {.constructor,
    importcpp: "TDataXtd_Presentation(@)", header: "TDataXtd_Presentation.hxx".}
proc Set*(theLabel: TDF_Label; theDriverId: Standard_GUID): handle[
    TDataXtd_Presentation] {.importcpp: "TDataXtd_Presentation::Set(@)",
                            header: "TDataXtd_Presentation.hxx".}
proc Unset*(theLabel: TDF_Label) {.importcpp: "TDataXtd_Presentation::Unset(@)",
                                header: "TDataXtd_Presentation.hxx".}
proc ID*(this: TDataXtd_Presentation): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Presentation.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Presentation::GetID(@)",
                            header: "TDataXtd_Presentation.hxx".}
proc Restore*(this: var TDataXtd_Presentation; anAttribute: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Presentation.hxx".}
proc NewEmpty*(this: TDataXtd_Presentation): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Presentation.hxx".}
proc Paste*(this: TDataXtd_Presentation; intoAttribute: handle[TDF_Attribute];
           aRelocTationable: handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDataXtd_Presentation.hxx".}
proc BackupCopy*(this: TDataXtd_Presentation): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TDataXtd_Presentation.hxx".}
type
  TDataXtd_Presentationbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataXtd_Presentation::get_type_name(@)",
                              header: "TDataXtd_Presentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataXtd_Presentation::get_type_descriptor(@)",
    header: "TDataXtd_Presentation.hxx".}
proc DynamicType*(this: TDataXtd_Presentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataXtd_Presentation.hxx".}
proc GetDriverGUID*(this: TDataXtd_Presentation): Standard_GUID {.noSideEffect,
    importcpp: "GetDriverGUID", header: "TDataXtd_Presentation.hxx".}
proc SetDriverGUID*(this: var TDataXtd_Presentation; theGUID: Standard_GUID) {.
    importcpp: "SetDriverGUID", header: "TDataXtd_Presentation.hxx".}
proc IsDisplayed*(this: TDataXtd_Presentation): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "TDataXtd_Presentation.hxx".}
proc HasOwnMaterial*(this: TDataXtd_Presentation): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnMaterial", header: "TDataXtd_Presentation.hxx".}
proc HasOwnTransparency*(this: TDataXtd_Presentation): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnTransparency",
    header: "TDataXtd_Presentation.hxx".}
proc HasOwnColor*(this: TDataXtd_Presentation): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnColor", header: "TDataXtd_Presentation.hxx".}
proc HasOwnWidth*(this: TDataXtd_Presentation): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnWidth", header: "TDataXtd_Presentation.hxx".}
proc HasOwnMode*(this: TDataXtd_Presentation): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnMode", header: "TDataXtd_Presentation.hxx".}
proc HasOwnSelectionMode*(this: TDataXtd_Presentation): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnSelectionMode",
    header: "TDataXtd_Presentation.hxx".}
proc SetDisplayed*(this: var TDataXtd_Presentation; theIsDisplayed: Standard_Boolean) {.
    importcpp: "SetDisplayed", header: "TDataXtd_Presentation.hxx".}
proc SetMaterialIndex*(this: var TDataXtd_Presentation;
                      theMaterialIndex: Standard_Integer) {.
    importcpp: "SetMaterialIndex", header: "TDataXtd_Presentation.hxx".}
proc SetTransparency*(this: var TDataXtd_Presentation; theValue: Standard_Real) {.
    importcpp: "SetTransparency", header: "TDataXtd_Presentation.hxx".}
proc SetColor*(this: var TDataXtd_Presentation; theColor: Quantity_NameOfColor) {.
    importcpp: "SetColor", header: "TDataXtd_Presentation.hxx".}
proc SetWidth*(this: var TDataXtd_Presentation; theWidth: Standard_Real) {.
    importcpp: "SetWidth", header: "TDataXtd_Presentation.hxx".}
proc SetMode*(this: var TDataXtd_Presentation; theMode: Standard_Integer) {.
    importcpp: "SetMode", header: "TDataXtd_Presentation.hxx".}
proc GetNbSelectionModes*(this: TDataXtd_Presentation): Standard_Integer {.
    noSideEffect, importcpp: "GetNbSelectionModes",
    header: "TDataXtd_Presentation.hxx".}
proc SetSelectionMode*(this: var TDataXtd_Presentation;
                      theSelectionMode: Standard_Integer;
                      theTransaction: Standard_Boolean = Standard_True) {.
    importcpp: "SetSelectionMode", header: "TDataXtd_Presentation.hxx".}
proc AddSelectionMode*(this: var TDataXtd_Presentation;
                      theSelectionMode: Standard_Integer;
                      theTransaction: Standard_Boolean = Standard_True) {.
    importcpp: "AddSelectionMode", header: "TDataXtd_Presentation.hxx".}
proc MaterialIndex*(this: TDataXtd_Presentation): Standard_Integer {.noSideEffect,
    importcpp: "MaterialIndex", header: "TDataXtd_Presentation.hxx".}
proc Transparency*(this: TDataXtd_Presentation): Standard_Real {.noSideEffect,
    importcpp: "Transparency", header: "TDataXtd_Presentation.hxx".}
proc Color*(this: TDataXtd_Presentation): Quantity_NameOfColor {.noSideEffect,
    importcpp: "Color", header: "TDataXtd_Presentation.hxx".}
proc Width*(this: TDataXtd_Presentation): Standard_Real {.noSideEffect,
    importcpp: "Width", header: "TDataXtd_Presentation.hxx".}
proc Mode*(this: TDataXtd_Presentation): Standard_Integer {.noSideEffect,
    importcpp: "Mode", header: "TDataXtd_Presentation.hxx".}
proc SelectionMode*(this: TDataXtd_Presentation; index: cint = 1): Standard_Integer {.
    noSideEffect, importcpp: "SelectionMode", header: "TDataXtd_Presentation.hxx".}
proc UnsetMaterial*(this: var TDataXtd_Presentation) {.importcpp: "UnsetMaterial",
    header: "TDataXtd_Presentation.hxx".}
proc UnsetTransparency*(this: var TDataXtd_Presentation) {.
    importcpp: "UnsetTransparency", header: "TDataXtd_Presentation.hxx".}
proc UnsetColor*(this: var TDataXtd_Presentation) {.importcpp: "UnsetColor",
    header: "TDataXtd_Presentation.hxx".}
proc UnsetWidth*(this: var TDataXtd_Presentation) {.importcpp: "UnsetWidth",
    header: "TDataXtd_Presentation.hxx".}
proc UnsetMode*(this: var TDataXtd_Presentation) {.importcpp: "UnsetMode",
    header: "TDataXtd_Presentation.hxx".}
proc UnsetSelectionMode*(this: var TDataXtd_Presentation) {.
    importcpp: "UnsetSelectionMode", header: "TDataXtd_Presentation.hxx".}
proc getColorNameFromOldEnum*(theOld: Standard_Integer): Quantity_NameOfColor {.
    importcpp: "TDataXtd_Presentation::getColorNameFromOldEnum(@)",
    header: "TDataXtd_Presentation.hxx".}
proc getOldColorNameFromNewEnum*(theNew: Quantity_NameOfColor): Standard_Integer {.
    importcpp: "TDataXtd_Presentation::getOldColorNameFromNewEnum(@)",
    header: "TDataXtd_Presentation.hxx".}