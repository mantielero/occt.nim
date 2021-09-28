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

discard "forward decl of AIS_InteractiveContext"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of V3d_Viewer"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TPrsStd_AISViewer"
discard "forward decl of TPrsStd_AISViewer"
type
  HandleC1C1* = Handle[TPrsStdAISViewer]

## ! The groundwork to define an interactive viewer attribute.
## ! This attribute stores an interactive context at the root label.
## ! You can only have one instance of this class per data framework.

type
  TPrsStdAISViewer* {.importcpp: "TPrsStd_AISViewer",
                     header: "TPrsStd_AISViewer.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                  ## !
                                                                                  ## class
                                                                                  ## methods
                                                                                  ##
                                                                                  ## !
                                                                                  ## =============


proc getID*(): StandardGUID {.importcpp: "TPrsStd_AISViewer::GetID(@)",
                           header: "TPrsStd_AISViewer.hxx".}
proc has*(acces: TDF_Label): bool {.importcpp: "TPrsStd_AISViewer::Has(@)",
                                header: "TPrsStd_AISViewer.hxx".}
proc new*(access: TDF_Label; selector: Handle[AIS_InteractiveContext]): Handle[
    TPrsStdAISViewer] {.importcpp: "TPrsStd_AISViewer::New(@)",
                       header: "TPrsStd_AISViewer.hxx".}
proc new*(acces: TDF_Label; viewer: Handle[V3dViewer]): Handle[TPrsStdAISViewer] {.
    importcpp: "TPrsStd_AISViewer::New(@)", header: "TPrsStd_AISViewer.hxx".}
proc find*(acces: TDF_Label; a: var Handle[TPrsStdAISViewer]): bool {.
    importcpp: "TPrsStd_AISViewer::Find(@)", header: "TPrsStd_AISViewer.hxx".}
proc find*(acces: TDF_Label; ic: var Handle[AIS_InteractiveContext]): bool {.
    importcpp: "TPrsStd_AISViewer::Find(@)", header: "TPrsStd_AISViewer.hxx".}
proc find*(acces: TDF_Label; v: var Handle[V3dViewer]): bool {.
    importcpp: "TPrsStd_AISViewer::Find(@)", header: "TPrsStd_AISViewer.hxx".}
proc update*(acces: TDF_Label) {.importcpp: "TPrsStd_AISViewer::Update(@)",
                              header: "TPrsStd_AISViewer.hxx".}
proc constructTPrsStdAISViewer*(): TPrsStdAISViewer {.constructor,
    importcpp: "TPrsStd_AISViewer(@)", header: "TPrsStd_AISViewer.hxx".}
proc update*(this: TPrsStdAISViewer) {.noSideEffect, importcpp: "Update",
                                    header: "TPrsStd_AISViewer.hxx".}
proc setInteractiveContext*(this: var TPrsStdAISViewer;
                           ctx: Handle[AIS_InteractiveContext]) {.
    importcpp: "SetInteractiveContext", header: "TPrsStd_AISViewer.hxx".}
proc getInteractiveContext*(this: TPrsStdAISViewer): Handle[AIS_InteractiveContext] {.
    noSideEffect, importcpp: "GetInteractiveContext",
    header: "TPrsStd_AISViewer.hxx".}
proc id*(this: TPrsStdAISViewer): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TPrsStd_AISViewer.hxx".}
proc restore*(this: var TPrsStdAISViewer; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TPrsStd_AISViewer.hxx".}
proc newEmpty*(this: TPrsStdAISViewer): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TPrsStd_AISViewer.hxx".}
proc paste*(this: TPrsStdAISViewer; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TPrsStd_AISViewer.hxx".}
type
  TPrsStdAISViewerbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TPrsStd_AISViewer::get_type_name(@)",
                            header: "TPrsStd_AISViewer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TPrsStd_AISViewer::get_type_descriptor(@)",
    header: "TPrsStd_AISViewer.hxx".}
proc dynamicType*(this: TPrsStdAISViewer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TPrsStd_AISViewer.hxx".}

























