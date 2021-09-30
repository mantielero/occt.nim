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

discard "forward decl of AIS_InteractiveObject"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TPrsStd_AISPresentation"
discard "forward decl of TPrsStd_AISPresentation"
type
  HandleC1C1* = Handle[TPrsStdAISPresentation]

## ! An attribute to associate an
## ! AIS_InteractiveObject to a label in an AIS viewer.
## ! This attribute works in collaboration with TPrsStd_AISViewer.
## ! Note that all the Set... and Unset... attribute
## ! methods as well as the query methods for
## ! visualization attributes and the HasOwn... test
## ! methods are shortcuts to the respective
## ! AIS_InteractiveObject settings.

type
  TPrsStdAISPresentation* {.importcpp: "TPrsStd_AISPresentation",
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


proc getID*(): StandardGUID {.importcpp: "TPrsStd_AISPresentation::GetID(@)",
                           header: "TPrsStd_AISPresentation.hxx".}
proc set*(L: TDF_Label; driver: StandardGUID): Handle[TPrsStdAISPresentation] {.
    importcpp: "TPrsStd_AISPresentation::Set(@)",
    header: "TPrsStd_AISPresentation.hxx".}
proc unset*(L: TDF_Label) {.importcpp: "TPrsStd_AISPresentation::Unset(@)",
                         header: "TPrsStd_AISPresentation.hxx".}
proc set*(master: Handle[TDF_Attribute]): Handle[TPrsStdAISPresentation] {.
    importcpp: "TPrsStd_AISPresentation::Set(@)",
    header: "TPrsStd_AISPresentation.hxx".}
proc constructTPrsStdAISPresentation*(): TPrsStdAISPresentation {.constructor,
    importcpp: "TPrsStd_AISPresentation(@)", header: "TPrsStd_AISPresentation.hxx".}
proc setDisplayed*(this: var TPrsStdAISPresentation; b: StandardBoolean) {.
    importcpp: "SetDisplayed", header: "TPrsStd_AISPresentation.hxx".}
proc display*(this: var TPrsStdAISPresentation; update: StandardBoolean = false) {.
    importcpp: "Display", header: "TPrsStd_AISPresentation.hxx".}
proc erase*(this: var TPrsStdAISPresentation; remove: StandardBoolean = false) {.
    importcpp: "Erase", header: "TPrsStd_AISPresentation.hxx".}
proc update*(this: var TPrsStdAISPresentation) {.importcpp: "Update",
    header: "TPrsStd_AISPresentation.hxx".}
proc getDriverGUID*(this: TPrsStdAISPresentation): StandardGUID {.noSideEffect,
    importcpp: "GetDriverGUID", header: "TPrsStd_AISPresentation.hxx".}
proc setDriverGUID*(this: var TPrsStdAISPresentation; guid: StandardGUID) {.
    importcpp: "SetDriverGUID", header: "TPrsStd_AISPresentation.hxx".}
proc isDisplayed*(this: TPrsStdAISPresentation): StandardBoolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "TPrsStd_AISPresentation.hxx".}
proc getAIS*(this: TPrsStdAISPresentation): Handle[AIS_InteractiveObject] {.
    noSideEffect, importcpp: "GetAIS", header: "TPrsStd_AISPresentation.hxx".}
proc material*(this: TPrsStdAISPresentation): Graphic3dNameOfMaterial {.
    noSideEffect, importcpp: "Material", header: "TPrsStd_AISPresentation.hxx".}
proc setMaterial*(this: var TPrsStdAISPresentation; aName: Graphic3dNameOfMaterial) {.
    importcpp: "SetMaterial", header: "TPrsStd_AISPresentation.hxx".}
proc hasOwnMaterial*(this: TPrsStdAISPresentation): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnMaterial", header: "TPrsStd_AISPresentation.hxx".}
proc unsetMaterial*(this: var TPrsStdAISPresentation) {.importcpp: "UnsetMaterial",
    header: "TPrsStd_AISPresentation.hxx".}
proc setTransparency*(this: var TPrsStdAISPresentation; aValue: StandardReal = 0.6) {.
    importcpp: "SetTransparency", header: "TPrsStd_AISPresentation.hxx".}
proc transparency*(this: TPrsStdAISPresentation): StandardReal {.noSideEffect,
    importcpp: "Transparency", header: "TPrsStd_AISPresentation.hxx".}
proc hasOwnTransparency*(this: TPrsStdAISPresentation): StandardBoolean {.
    noSideEffect, importcpp: "HasOwnTransparency",
    header: "TPrsStd_AISPresentation.hxx".}
proc unsetTransparency*(this: var TPrsStdAISPresentation) {.
    importcpp: "UnsetTransparency", header: "TPrsStd_AISPresentation.hxx".}
proc color*(this: TPrsStdAISPresentation): QuantityNameOfColor {.noSideEffect,
    importcpp: "Color", header: "TPrsStd_AISPresentation.hxx".}
proc setColor*(this: var TPrsStdAISPresentation; aColor: QuantityNameOfColor) {.
    importcpp: "SetColor", header: "TPrsStd_AISPresentation.hxx".}
proc hasOwnColor*(this: TPrsStdAISPresentation): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnColor", header: "TPrsStd_AISPresentation.hxx".}
proc unsetColor*(this: var TPrsStdAISPresentation) {.importcpp: "UnsetColor",
    header: "TPrsStd_AISPresentation.hxx".}
proc width*(this: TPrsStdAISPresentation): StandardReal {.noSideEffect,
    importcpp: "Width", header: "TPrsStd_AISPresentation.hxx".}
proc setWidth*(this: var TPrsStdAISPresentation; aWidth: StandardReal) {.
    importcpp: "SetWidth", header: "TPrsStd_AISPresentation.hxx".}
proc hasOwnWidth*(this: TPrsStdAISPresentation): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnWidth", header: "TPrsStd_AISPresentation.hxx".}
proc unsetWidth*(this: var TPrsStdAISPresentation) {.importcpp: "UnsetWidth",
    header: "TPrsStd_AISPresentation.hxx".}
proc mode*(this: TPrsStdAISPresentation): int {.noSideEffect, importcpp: "Mode",
    header: "TPrsStd_AISPresentation.hxx".}
proc setMode*(this: var TPrsStdAISPresentation; theMode: int) {.importcpp: "SetMode",
    header: "TPrsStd_AISPresentation.hxx".}
proc hasOwnMode*(this: TPrsStdAISPresentation): StandardBoolean {.noSideEffect,
    importcpp: "HasOwnMode", header: "TPrsStd_AISPresentation.hxx".}
proc unsetMode*(this: var TPrsStdAISPresentation) {.importcpp: "UnsetMode",
    header: "TPrsStd_AISPresentation.hxx".}
proc getNbSelectionModes*(this: TPrsStdAISPresentation): int {.noSideEffect,
    importcpp: "GetNbSelectionModes", header: "TPrsStd_AISPresentation.hxx".}
proc selectionMode*(this: TPrsStdAISPresentation; index: cint = 1): int {.noSideEffect,
    importcpp: "SelectionMode", header: "TPrsStd_AISPresentation.hxx".}
proc setSelectionMode*(this: var TPrsStdAISPresentation; theSelectionMode: int;
                      theTransaction: StandardBoolean = true) {.
    importcpp: "SetSelectionMode", header: "TPrsStd_AISPresentation.hxx".}
proc addSelectionMode*(this: var TPrsStdAISPresentation; theSelectionMode: int;
                      theTransaction: StandardBoolean = true) {.
    importcpp: "AddSelectionMode", header: "TPrsStd_AISPresentation.hxx".}
proc hasOwnSelectionMode*(this: TPrsStdAISPresentation): StandardBoolean {.
    noSideEffect, importcpp: "HasOwnSelectionMode",
    header: "TPrsStd_AISPresentation.hxx".}
proc unsetSelectionMode*(this: var TPrsStdAISPresentation) {.
    importcpp: "UnsetSelectionMode", header: "TPrsStd_AISPresentation.hxx".}
proc id*(this: TPrsStdAISPresentation): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TPrsStd_AISPresentation.hxx".}
proc newEmpty*(this: TPrsStdAISPresentation): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TPrsStd_AISPresentation.hxx".}
proc restore*(this: var TPrsStdAISPresentation; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TPrsStd_AISPresentation.hxx".}
proc paste*(this: TPrsStdAISPresentation; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TPrsStd_AISPresentation.hxx".}
proc backupCopy*(this: TPrsStdAISPresentation): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "BackupCopy", header: "TPrsStd_AISPresentation.hxx".}
proc afterAddition*(this: var TPrsStdAISPresentation) {.importcpp: "AfterAddition",
    header: "TPrsStd_AISPresentation.hxx".}
proc beforeRemoval*(this: var TPrsStdAISPresentation) {.importcpp: "BeforeRemoval",
    header: "TPrsStd_AISPresentation.hxx".}
proc beforeForget*(this: var TPrsStdAISPresentation) {.importcpp: "BeforeForget",
    header: "TPrsStd_AISPresentation.hxx".}
proc afterResume*(this: var TPrsStdAISPresentation) {.importcpp: "AfterResume",
    header: "TPrsStd_AISPresentation.hxx".}
proc beforeUndo*(this: var TPrsStdAISPresentation;
                anAttDelta: Handle[TDF_AttributeDelta];
                forceIt: StandardBoolean = false): StandardBoolean {.
    importcpp: "BeforeUndo", header: "TPrsStd_AISPresentation.hxx".}
proc afterUndo*(this: var TPrsStdAISPresentation;
               anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: StandardBoolean = false): StandardBoolean {.
    importcpp: "AfterUndo", header: "TPrsStd_AISPresentation.hxx".}
type
  TPrsStdAISPresentationbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TPrsStd_AISPresentation::get_type_name(@)",
                            header: "TPrsStd_AISPresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TPrsStd_AISPresentation::get_type_descriptor(@)",
    header: "TPrsStd_AISPresentation.hxx".}
proc dynamicType*(this: TPrsStdAISPresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TPrsStd_AISPresentation.hxx".}