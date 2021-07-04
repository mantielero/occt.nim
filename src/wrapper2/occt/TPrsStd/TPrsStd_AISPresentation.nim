##  Created on: 1998-09-30
##  Created by: Denis PASCAL
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_GUID,
  ../Standard/Standard_Real, ../Quantity/Quantity_NameOfColor,
  ../Graphic3d/Graphic3d_NameOfMaterial, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TDF/TDF_Attribute,
  ../TDataXtd/TDataXtd_Presentation, ../AIS/AIS_InteractiveContext

discard "forward decl of AIS_InteractiveObject"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TPrsStd_AISPresentation"
discard "forward decl of TPrsStd_AISPresentation"
type
  Handle_TPrsStd_AISPresentation* = handle[TPrsStd_AISPresentation]

## ! An attribute to associate an
## ! AIS_InteractiveObject to a label in an AIS viewer.
## ! This attribute works in collaboration with TPrsStd_AISViewer.
## ! Note that all the Set... and Unset... attribute
## ! methods as well as the query methods for
## ! visualization attributes and the HasOwn... test
## ! methods are shortcuts to the respective
## ! AIS_InteractiveObject settings.

type
  TPrsStd_AISPresentation* {.importcpp: "TPrsStd_AISPresentation",
                            header: "TPrsStd_AISPresentation.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## the
                                                                                               ## GUID
                                                                                               ## for
                                                                                               ## TPrsStd_AISPresentation
                                                                                               ## attributes.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## attribute
                                                                                               ## storing
                                                                                               ## presentation
                                                                                               ## data


proc GetID*(): Standard_GUID {.importcpp: "TPrsStd_AISPresentation::GetID(@)",
                            header: "TPrsStd_AISPresentation.hxx".}
proc Set*(L: TDF_Label; driver: Standard_GUID): handle[TPrsStd_AISPresentation] {.
    importcpp: "TPrsStd_AISPresentation::Set(@)",
    header: "TPrsStd_AISPresentation.hxx".}
proc Unset*(L: TDF_Label) {.importcpp: "TPrsStd_AISPresentation::Unset(@)",
                         header: "TPrsStd_AISPresentation.hxx".}
proc Set*(master: handle[TDF_Attribute]): handle[TPrsStd_AISPresentation] {.
    importcpp: "TPrsStd_AISPresentation::Set(@)",
    header: "TPrsStd_AISPresentation.hxx".}
proc constructTPrsStd_AISPresentation*(): TPrsStd_AISPresentation {.constructor,
    importcpp: "TPrsStd_AISPresentation(@)", header: "TPrsStd_AISPresentation.hxx".}
proc SetDisplayed*(this: var TPrsStd_AISPresentation; B: Standard_Boolean) {.
    importcpp: "SetDisplayed", header: "TPrsStd_AISPresentation.hxx".}
proc Display*(this: var TPrsStd_AISPresentation;
             update: Standard_Boolean = Standard_False) {.importcpp: "Display",
    header: "TPrsStd_AISPresentation.hxx".}
proc Erase*(this: var TPrsStd_AISPresentation;
           remove: Standard_Boolean = Standard_False) {.importcpp: "Erase",
    header: "TPrsStd_AISPresentation.hxx".}
proc Update*(this: var TPrsStd_AISPresentation) {.importcpp: "Update",
    header: "TPrsStd_AISPresentation.hxx".}
proc GetDriverGUID*(this: TPrsStd_AISPresentation): Standard_GUID {.noSideEffect,
    importcpp: "GetDriverGUID", header: "TPrsStd_AISPresentation.hxx".}
proc SetDriverGUID*(this: var TPrsStd_AISPresentation; guid: Standard_GUID) {.
    importcpp: "SetDriverGUID", header: "TPrsStd_AISPresentation.hxx".}
proc IsDisplayed*(this: TPrsStd_AISPresentation): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "TPrsStd_AISPresentation.hxx".}
proc GetAIS*(this: TPrsStd_AISPresentation): handle[AIS_InteractiveObject] {.
    noSideEffect, importcpp: "GetAIS", header: "TPrsStd_AISPresentation.hxx".}
proc Material*(this: TPrsStd_AISPresentation): Graphic3d_NameOfMaterial {.
    noSideEffect, importcpp: "Material", header: "TPrsStd_AISPresentation.hxx".}
proc SetMaterial*(this: var TPrsStd_AISPresentation; aName: Graphic3d_NameOfMaterial) {.
    importcpp: "SetMaterial", header: "TPrsStd_AISPresentation.hxx".}
proc HasOwnMaterial*(this: TPrsStd_AISPresentation): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnMaterial",
    header: "TPrsStd_AISPresentation.hxx".}
proc UnsetMaterial*(this: var TPrsStd_AISPresentation) {.importcpp: "UnsetMaterial",
    header: "TPrsStd_AISPresentation.hxx".}
proc SetTransparency*(this: var TPrsStd_AISPresentation; aValue: Standard_Real = 0.6) {.
    importcpp: "SetTransparency", header: "TPrsStd_AISPresentation.hxx".}
proc Transparency*(this: TPrsStd_AISPresentation): Standard_Real {.noSideEffect,
    importcpp: "Transparency", header: "TPrsStd_AISPresentation.hxx".}
proc HasOwnTransparency*(this: TPrsStd_AISPresentation): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnTransparency",
    header: "TPrsStd_AISPresentation.hxx".}
proc UnsetTransparency*(this: var TPrsStd_AISPresentation) {.
    importcpp: "UnsetTransparency", header: "TPrsStd_AISPresentation.hxx".}
proc Color*(this: TPrsStd_AISPresentation): Quantity_NameOfColor {.noSideEffect,
    importcpp: "Color", header: "TPrsStd_AISPresentation.hxx".}
proc SetColor*(this: var TPrsStd_AISPresentation; aColor: Quantity_NameOfColor) {.
    importcpp: "SetColor", header: "TPrsStd_AISPresentation.hxx".}
proc HasOwnColor*(this: TPrsStd_AISPresentation): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnColor", header: "TPrsStd_AISPresentation.hxx".}
proc UnsetColor*(this: var TPrsStd_AISPresentation) {.importcpp: "UnsetColor",
    header: "TPrsStd_AISPresentation.hxx".}
proc Width*(this: TPrsStd_AISPresentation): Standard_Real {.noSideEffect,
    importcpp: "Width", header: "TPrsStd_AISPresentation.hxx".}
proc SetWidth*(this: var TPrsStd_AISPresentation; aWidth: Standard_Real) {.
    importcpp: "SetWidth", header: "TPrsStd_AISPresentation.hxx".}
proc HasOwnWidth*(this: TPrsStd_AISPresentation): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnWidth", header: "TPrsStd_AISPresentation.hxx".}
proc UnsetWidth*(this: var TPrsStd_AISPresentation) {.importcpp: "UnsetWidth",
    header: "TPrsStd_AISPresentation.hxx".}
proc Mode*(this: TPrsStd_AISPresentation): Standard_Integer {.noSideEffect,
    importcpp: "Mode", header: "TPrsStd_AISPresentation.hxx".}
proc SetMode*(this: var TPrsStd_AISPresentation; theMode: Standard_Integer) {.
    importcpp: "SetMode", header: "TPrsStd_AISPresentation.hxx".}
proc HasOwnMode*(this: TPrsStd_AISPresentation): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwnMode", header: "TPrsStd_AISPresentation.hxx".}
proc UnsetMode*(this: var TPrsStd_AISPresentation) {.importcpp: "UnsetMode",
    header: "TPrsStd_AISPresentation.hxx".}
proc GetNbSelectionModes*(this: TPrsStd_AISPresentation): Standard_Integer {.
    noSideEffect, importcpp: "GetNbSelectionModes",
    header: "TPrsStd_AISPresentation.hxx".}
proc SelectionMode*(this: TPrsStd_AISPresentation; index: cint = 1): Standard_Integer {.
    noSideEffect, importcpp: "SelectionMode", header: "TPrsStd_AISPresentation.hxx".}
proc SetSelectionMode*(this: var TPrsStd_AISPresentation;
                      theSelectionMode: Standard_Integer;
                      theTransaction: Standard_Boolean = Standard_True) {.
    importcpp: "SetSelectionMode", header: "TPrsStd_AISPresentation.hxx".}
proc AddSelectionMode*(this: var TPrsStd_AISPresentation;
                      theSelectionMode: Standard_Integer;
                      theTransaction: Standard_Boolean = Standard_True) {.
    importcpp: "AddSelectionMode", header: "TPrsStd_AISPresentation.hxx".}
proc HasOwnSelectionMode*(this: TPrsStd_AISPresentation): Standard_Boolean {.
    noSideEffect, importcpp: "HasOwnSelectionMode",
    header: "TPrsStd_AISPresentation.hxx".}
proc UnsetSelectionMode*(this: var TPrsStd_AISPresentation) {.
    importcpp: "UnsetSelectionMode", header: "TPrsStd_AISPresentation.hxx".}
proc ID*(this: TPrsStd_AISPresentation): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "TPrsStd_AISPresentation.hxx".}
proc NewEmpty*(this: TPrsStd_AISPresentation): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TPrsStd_AISPresentation.hxx".}
proc Restore*(this: var TPrsStd_AISPresentation; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TPrsStd_AISPresentation.hxx".}
proc Paste*(this: TPrsStd_AISPresentation; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TPrsStd_AISPresentation.hxx".}
proc BackupCopy*(this: TPrsStd_AISPresentation): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "BackupCopy", header: "TPrsStd_AISPresentation.hxx".}
proc AfterAddition*(this: var TPrsStd_AISPresentation) {.importcpp: "AfterAddition",
    header: "TPrsStd_AISPresentation.hxx".}
proc BeforeRemoval*(this: var TPrsStd_AISPresentation) {.importcpp: "BeforeRemoval",
    header: "TPrsStd_AISPresentation.hxx".}
proc BeforeForget*(this: var TPrsStd_AISPresentation) {.importcpp: "BeforeForget",
    header: "TPrsStd_AISPresentation.hxx".}
proc AfterResume*(this: var TPrsStd_AISPresentation) {.importcpp: "AfterResume",
    header: "TPrsStd_AISPresentation.hxx".}
proc BeforeUndo*(this: var TPrsStd_AISPresentation;
                anAttDelta: handle[TDF_AttributeDelta];
                forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BeforeUndo", header: "TPrsStd_AISPresentation.hxx".}
proc AfterUndo*(this: var TPrsStd_AISPresentation;
               anAttDelta: handle[TDF_AttributeDelta];
               forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TPrsStd_AISPresentation.hxx".}
type
  TPrsStd_AISPresentationbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TPrsStd_AISPresentation::get_type_name(@)",
                              header: "TPrsStd_AISPresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TPrsStd_AISPresentation::get_type_descriptor(@)",
    header: "TPrsStd_AISPresentation.hxx".}
proc DynamicType*(this: TPrsStd_AISPresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TPrsStd_AISPresentation.hxx".}