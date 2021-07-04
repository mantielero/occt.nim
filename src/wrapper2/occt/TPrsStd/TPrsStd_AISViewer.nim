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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean

discard "forward decl of AIS_InteractiveContext"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of V3d_Viewer"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TPrsStd_AISViewer"
discard "forward decl of TPrsStd_AISViewer"
type
  Handle_TPrsStd_AISViewer* = handle[TPrsStd_AISViewer]

## ! The groundwork to define an interactive viewer attribute.
## ! This attribute stores an interactive context at the root label.
## ! You can only have one instance of this class per data framework.

type
  TPrsStd_AISViewer* {.importcpp: "TPrsStd_AISViewer",
                      header: "TPrsStd_AISViewer.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                   ## !
                                                                                   ## class
                                                                                   ## methods
                                                                                   ##
                                                                                   ## !
                                                                                   ## =============


proc GetID*(): Standard_GUID {.importcpp: "TPrsStd_AISViewer::GetID(@)",
                            header: "TPrsStd_AISViewer.hxx".}
proc Has*(acces: TDF_Label): Standard_Boolean {.
    importcpp: "TPrsStd_AISViewer::Has(@)", header: "TPrsStd_AISViewer.hxx".}
proc New*(access: TDF_Label; selector: handle[AIS_InteractiveContext]): handle[
    TPrsStd_AISViewer] {.importcpp: "TPrsStd_AISViewer::New(@)",
                        header: "TPrsStd_AISViewer.hxx".}
proc New*(acces: TDF_Label; viewer: handle[V3d_Viewer]): handle[TPrsStd_AISViewer] {.
    importcpp: "TPrsStd_AISViewer::New(@)", header: "TPrsStd_AISViewer.hxx".}
proc Find*(acces: TDF_Label; A: var handle[TPrsStd_AISViewer]): Standard_Boolean {.
    importcpp: "TPrsStd_AISViewer::Find(@)", header: "TPrsStd_AISViewer.hxx".}
proc Find*(acces: TDF_Label; IC: var handle[AIS_InteractiveContext]): Standard_Boolean {.
    importcpp: "TPrsStd_AISViewer::Find(@)", header: "TPrsStd_AISViewer.hxx".}
proc Find*(acces: TDF_Label; V: var handle[V3d_Viewer]): Standard_Boolean {.
    importcpp: "TPrsStd_AISViewer::Find(@)", header: "TPrsStd_AISViewer.hxx".}
proc Update*(acces: TDF_Label) {.importcpp: "TPrsStd_AISViewer::Update(@)",
                              header: "TPrsStd_AISViewer.hxx".}
proc constructTPrsStd_AISViewer*(): TPrsStd_AISViewer {.constructor,
    importcpp: "TPrsStd_AISViewer(@)", header: "TPrsStd_AISViewer.hxx".}
proc Update*(this: TPrsStd_AISViewer) {.noSideEffect, importcpp: "Update",
                                     header: "TPrsStd_AISViewer.hxx".}
proc SetInteractiveContext*(this: var TPrsStd_AISViewer;
                           ctx: handle[AIS_InteractiveContext]) {.
    importcpp: "SetInteractiveContext", header: "TPrsStd_AISViewer.hxx".}
proc GetInteractiveContext*(this: TPrsStd_AISViewer): handle[AIS_InteractiveContext] {.
    noSideEffect, importcpp: "GetInteractiveContext",
    header: "TPrsStd_AISViewer.hxx".}
proc ID*(this: TPrsStd_AISViewer): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TPrsStd_AISViewer.hxx".}
proc Restore*(this: var TPrsStd_AISViewer; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TPrsStd_AISViewer.hxx".}
proc NewEmpty*(this: TPrsStd_AISViewer): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TPrsStd_AISViewer.hxx".}
proc Paste*(this: TPrsStd_AISViewer; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TPrsStd_AISViewer.hxx".}
type
  TPrsStd_AISViewerbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TPrsStd_AISViewer::get_type_name(@)",
                              header: "TPrsStd_AISViewer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TPrsStd_AISViewer::get_type_descriptor(@)",
    header: "TPrsStd_AISViewer.hxx".}
proc DynamicType*(this: TPrsStd_AISViewer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TPrsStd_AISViewer.hxx".}