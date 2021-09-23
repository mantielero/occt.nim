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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TDF/TDF_Attribute

discard "forward decl of Draw_Drawable3D"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of DDataStd_DrawPresentation"
discard "forward decl of DDataStd_DrawPresentation"
type
  Handle_DDataStd_DrawPresentation* = handle[DDataStd_DrawPresentation]

## ! draw presentaion of a label of a document

type
  DDataStd_DrawPresentation* {.importcpp: "DDataStd_DrawPresentation",
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


proc HasPresentation*(L: TDF_Label): Standard_Boolean {.
    importcpp: "DDataStd_DrawPresentation::HasPresentation(@)",
    header: "DDataStd_DrawPresentation.hxx".}
proc IsDisplayed*(L: TDF_Label): Standard_Boolean {.
    importcpp: "DDataStd_DrawPresentation::IsDisplayed(@)",
    header: "DDataStd_DrawPresentation.hxx".}
proc Display*(L: TDF_Label) {.importcpp: "DDataStd_DrawPresentation::Display(@)",
                           header: "DDataStd_DrawPresentation.hxx".}
proc Erase*(L: TDF_Label) {.importcpp: "DDataStd_DrawPresentation::Erase(@)",
                         header: "DDataStd_DrawPresentation.hxx".}
proc Update*(L: TDF_Label) {.importcpp: "DDataStd_DrawPresentation::Update(@)",
                          header: "DDataStd_DrawPresentation.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "DDataStd_DrawPresentation::GetID(@)",
                            header: "DDataStd_DrawPresentation.hxx".}
proc constructDDataStd_DrawPresentation*(): DDataStd_DrawPresentation {.
    constructor, importcpp: "DDataStd_DrawPresentation(@)",
    header: "DDataStd_DrawPresentation.hxx".}
proc SetDisplayed*(this: var DDataStd_DrawPresentation; status: Standard_Boolean) {.
    importcpp: "SetDisplayed", header: "DDataStd_DrawPresentation.hxx".}
proc IsDisplayed*(this: DDataStd_DrawPresentation): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "DDataStd_DrawPresentation.hxx".}
proc SetDrawable*(this: var DDataStd_DrawPresentation; D: handle[Draw_Drawable3D]) {.
    importcpp: "SetDrawable", header: "DDataStd_DrawPresentation.hxx".}
proc GetDrawable*(this: DDataStd_DrawPresentation): handle[Draw_Drawable3D] {.
    noSideEffect, importcpp: "GetDrawable", header: "DDataStd_DrawPresentation.hxx".}
proc ID*(this: DDataStd_DrawPresentation): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "DDataStd_DrawPresentation.hxx".}
proc NewEmpty*(this: DDataStd_DrawPresentation): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "DDataStd_DrawPresentation.hxx".}
proc Restore*(this: var DDataStd_DrawPresentation; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "DDataStd_DrawPresentation.hxx".}
proc Paste*(this: DDataStd_DrawPresentation; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "DDataStd_DrawPresentation.hxx".}
proc AfterAddition*(this: var DDataStd_DrawPresentation) {.
    importcpp: "AfterAddition", header: "DDataStd_DrawPresentation.hxx".}
proc BeforeRemoval*(this: var DDataStd_DrawPresentation) {.
    importcpp: "BeforeRemoval", header: "DDataStd_DrawPresentation.hxx".}
proc BeforeForget*(this: var DDataStd_DrawPresentation) {.importcpp: "BeforeForget",
    header: "DDataStd_DrawPresentation.hxx".}
proc AfterResume*(this: var DDataStd_DrawPresentation) {.importcpp: "AfterResume",
    header: "DDataStd_DrawPresentation.hxx".}
proc BeforeUndo*(this: var DDataStd_DrawPresentation;
                anAttDelta: handle[TDF_AttributeDelta];
                forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BeforeUndo", header: "DDataStd_DrawPresentation.hxx".}
proc AfterUndo*(this: var DDataStd_DrawPresentation;
               anAttDelta: handle[TDF_AttributeDelta];
               forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterUndo", header: "DDataStd_DrawPresentation.hxx".}
type
  DDataStd_DrawPresentationbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "DDataStd_DrawPresentation::get_type_name(@)",
                              header: "DDataStd_DrawPresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DDataStd_DrawPresentation::get_type_descriptor(@)",
    header: "DDataStd_DrawPresentation.hxx".}
proc DynamicType*(this: DDataStd_DrawPresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "DDataStd_DrawPresentation.hxx".}