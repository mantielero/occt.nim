##  Created on: 1995-08-25
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of IGESData_IGESEntity"
type
  IGESDataBasicEditor* {.importcpp: "IGESData_BasicEditor",
                        header: "IGESData_BasicEditor.hxx", bycopy.} = object ## ! Creates an empty Basic Editor which should be
                                                                         ## initialized via Init() method.


proc constructIGESDataBasicEditor*(): IGESDataBasicEditor {.constructor,
    importcpp: "IGESData_BasicEditor(@)", header: "IGESData_BasicEditor.hxx".}
proc constructIGESDataBasicEditor*(protocol: Handle[IGESDataProtocol]): IGESDataBasicEditor {.
    constructor, importcpp: "IGESData_BasicEditor(@)",
    header: "IGESData_BasicEditor.hxx".}
proc constructIGESDataBasicEditor*(model: Handle[IGESDataIGESModel];
                                  protocol: Handle[IGESDataProtocol]): IGESDataBasicEditor {.
    constructor, importcpp: "IGESData_BasicEditor(@)",
    header: "IGESData_BasicEditor.hxx".}
proc init*(this: var IGESDataBasicEditor; protocol: Handle[IGESDataProtocol]) {.
    importcpp: "Init", header: "IGESData_BasicEditor.hxx".}
proc init*(this: var IGESDataBasicEditor; model: Handle[IGESDataIGESModel];
          protocol: Handle[IGESDataProtocol]) {.importcpp: "Init",
    header: "IGESData_BasicEditor.hxx".}
proc model*(this: IGESDataBasicEditor): Handle[IGESDataIGESModel] {.noSideEffect,
    importcpp: "Model", header: "IGESData_BasicEditor.hxx".}
proc setUnitFlag*(this: var IGESDataBasicEditor; flag: cint): bool {.
    importcpp: "SetUnitFlag", header: "IGESData_BasicEditor.hxx".}
proc setUnitValue*(this: var IGESDataBasicEditor; val: cfloat): bool {.
    importcpp: "SetUnitValue", header: "IGESData_BasicEditor.hxx".}
proc setUnitName*(this: var IGESDataBasicEditor; name: StandardCString): bool {.
    importcpp: "SetUnitName", header: "IGESData_BasicEditor.hxx".}
proc applyUnit*(this: var IGESDataBasicEditor; enforce: bool = false) {.
    importcpp: "ApplyUnit", header: "IGESData_BasicEditor.hxx".}
proc computeStatus*(this: var IGESDataBasicEditor) {.importcpp: "ComputeStatus",
    header: "IGESData_BasicEditor.hxx".}
proc autoCorrect*(this: var IGESDataBasicEditor; ent: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "AutoCorrect", header: "IGESData_BasicEditor.hxx".}
proc autoCorrectModel*(this: var IGESDataBasicEditor): cint {.
    importcpp: "AutoCorrectModel", header: "IGESData_BasicEditor.hxx".}
proc unitNameFlag*(name: StandardCString): cint {.
    importcpp: "IGESData_BasicEditor::UnitNameFlag(@)",
    header: "IGESData_BasicEditor.hxx".}
proc unitFlagValue*(flag: cint): cfloat {.importcpp: "IGESData_BasicEditor::UnitFlagValue(@)",
                                      header: "IGESData_BasicEditor.hxx".}
proc unitFlagName*(flag: cint): StandardCString {.
    importcpp: "IGESData_BasicEditor::UnitFlagName(@)",
    header: "IGESData_BasicEditor.hxx".}
proc iGESVersionName*(flag: cint): StandardCString {.
    importcpp: "IGESData_BasicEditor::IGESVersionName(@)",
    header: "IGESData_BasicEditor.hxx".}
proc iGESVersionMax*(): cint {.importcpp: "IGESData_BasicEditor::IGESVersionMax(@)",
                            header: "IGESData_BasicEditor.hxx".}
proc draftingName*(flag: cint): StandardCString {.
    importcpp: "IGESData_BasicEditor::DraftingName(@)",
    header: "IGESData_BasicEditor.hxx".}
proc draftingMax*(): cint {.importcpp: "IGESData_BasicEditor::DraftingMax(@)",
                         header: "IGESData_BasicEditor.hxx".}

























