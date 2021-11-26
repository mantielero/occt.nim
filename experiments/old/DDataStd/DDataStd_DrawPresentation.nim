##  Created on: 1998-09-23
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

discard "forward decl of Draw_Drawable3D"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of DDataStd_DrawPresentation"
discard "forward decl of DDataStd_DrawPresentation"
type
  HandleC1C1* = Handle[DDataStdDrawPresentation]

## ! draw presentaion of a label of a document

type
  DDataStdDrawPresentation* {.importcpp: "DDataStd_DrawPresentation",
                             header: "DDataStd_DrawPresentation.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                  ## !
                                                                                                  ## api
                                                                                                  ## methods
                                                                                                  ## on
                                                                                                  ## draw
                                                                                                  ## presentation
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## ================================


proc hasPresentation*(L: TDF_Label): bool {.importcpp: "DDataStd_DrawPresentation::HasPresentation(@)",
                                        header: "DDataStd_DrawPresentation.hxx".}
proc isDisplayed*(L: TDF_Label): bool {.importcpp: "DDataStd_DrawPresentation::IsDisplayed(@)",
                                    header: "DDataStd_DrawPresentation.hxx".}
proc display*(L: TDF_Label) {.importcpp: "DDataStd_DrawPresentation::Display(@)",
                           header: "DDataStd_DrawPresentation.hxx".}
proc erase*(L: TDF_Label) {.importcpp: "DDataStd_DrawPresentation::Erase(@)",
                         header: "DDataStd_DrawPresentation.hxx".}
proc update*(L: TDF_Label) {.importcpp: "DDataStd_DrawPresentation::Update(@)",
                          header: "DDataStd_DrawPresentation.hxx".}
proc getID*(): StandardGUID {.importcpp: "DDataStd_DrawPresentation::GetID(@)",
                           header: "DDataStd_DrawPresentation.hxx".}
proc constructDDataStdDrawPresentation*(): DDataStdDrawPresentation {.constructor,
    importcpp: "DDataStd_DrawPresentation(@)",
    header: "DDataStd_DrawPresentation.hxx".}
proc setDisplayed*(this: var DDataStdDrawPresentation; status: bool) {.
    importcpp: "SetDisplayed", header: "DDataStd_DrawPresentation.hxx".}
proc isDisplayed*(this: DDataStdDrawPresentation): bool {.noSideEffect,
    importcpp: "IsDisplayed", header: "DDataStd_DrawPresentation.hxx".}
proc setDrawable*(this: var DDataStdDrawPresentation; d: Handle[DrawDrawable3D]) {.
    importcpp: "SetDrawable", header: "DDataStd_DrawPresentation.hxx".}
proc getDrawable*(this: DDataStdDrawPresentation): Handle[DrawDrawable3D] {.
    noSideEffect, importcpp: "GetDrawable", header: "DDataStd_DrawPresentation.hxx".}
proc id*(this: DDataStdDrawPresentation): StandardGUID {.noSideEffect,
    importcpp: "ID", header: "DDataStd_DrawPresentation.hxx".}
proc newEmpty*(this: DDataStdDrawPresentation): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "DDataStd_DrawPresentation.hxx".}
proc restore*(this: var DDataStdDrawPresentation; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "DDataStd_DrawPresentation.hxx".}
proc paste*(this: DDataStdDrawPresentation; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "DDataStd_DrawPresentation.hxx".}
proc afterAddition*(this: var DDataStdDrawPresentation) {.
    importcpp: "AfterAddition", header: "DDataStd_DrawPresentation.hxx".}
proc beforeRemoval*(this: var DDataStdDrawPresentation) {.
    importcpp: "BeforeRemoval", header: "DDataStd_DrawPresentation.hxx".}
proc beforeForget*(this: var DDataStdDrawPresentation) {.importcpp: "BeforeForget",
    header: "DDataStd_DrawPresentation.hxx".}
proc afterResume*(this: var DDataStdDrawPresentation) {.importcpp: "AfterResume",
    header: "DDataStd_DrawPresentation.hxx".}
proc beforeUndo*(this: var DDataStdDrawPresentation;
                anAttDelta: Handle[TDF_AttributeDelta]; forceIt: bool = false): bool {.
    importcpp: "BeforeUndo", header: "DDataStd_DrawPresentation.hxx".}
proc afterUndo*(this: var DDataStdDrawPresentation;
               anAttDelta: Handle[TDF_AttributeDelta]; forceIt: bool = false): bool {.
    importcpp: "AfterUndo", header: "DDataStd_DrawPresentation.hxx".}
type
  DDataStdDrawPresentationbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "DDataStd_DrawPresentation::get_type_name(@)",
                            header: "DDataStd_DrawPresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DDataStd_DrawPresentation::get_type_descriptor(@)",
    header: "DDataStd_DrawPresentation.hxx".}
proc dynamicType*(this: DDataStdDrawPresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "DDataStd_DrawPresentation.hxx".}

























