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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Interface/Interface_GeneralLib, IGESData_SpecificLib,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_CString

discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of IGESData_IGESEntity"
type
  IGESData_BasicEditor* {.importcpp: "IGESData_BasicEditor",
                         header: "IGESData_BasicEditor.hxx", bycopy.} = object ## !
                                                                          ## Creates an empty Basic Editor which should be
                                                                          ## initialized via Init()
                                                                          ## method.


proc constructIGESData_BasicEditor*(): IGESData_BasicEditor {.constructor,
    importcpp: "IGESData_BasicEditor(@)", header: "IGESData_BasicEditor.hxx".}
proc constructIGESData_BasicEditor*(protocol: handle[IGESData_Protocol]): IGESData_BasicEditor {.
    constructor, importcpp: "IGESData_BasicEditor(@)",
    header: "IGESData_BasicEditor.hxx".}
proc constructIGESData_BasicEditor*(model: handle[IGESData_IGESModel];
                                   protocol: handle[IGESData_Protocol]): IGESData_BasicEditor {.
    constructor, importcpp: "IGESData_BasicEditor(@)",
    header: "IGESData_BasicEditor.hxx".}
proc Init*(this: var IGESData_BasicEditor; protocol: handle[IGESData_Protocol]) {.
    importcpp: "Init", header: "IGESData_BasicEditor.hxx".}
proc Init*(this: var IGESData_BasicEditor; model: handle[IGESData_IGESModel];
          protocol: handle[IGESData_Protocol]) {.importcpp: "Init",
    header: "IGESData_BasicEditor.hxx".}
proc Model*(this: IGESData_BasicEditor): handle[IGESData_IGESModel] {.noSideEffect,
    importcpp: "Model", header: "IGESData_BasicEditor.hxx".}
proc SetUnitFlag*(this: var IGESData_BasicEditor; flag: Standard_Integer): Standard_Boolean {.
    importcpp: "SetUnitFlag", header: "IGESData_BasicEditor.hxx".}
proc SetUnitValue*(this: var IGESData_BasicEditor; val: Standard_Real): Standard_Boolean {.
    importcpp: "SetUnitValue", header: "IGESData_BasicEditor.hxx".}
proc SetUnitName*(this: var IGESData_BasicEditor; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetUnitName", header: "IGESData_BasicEditor.hxx".}
proc ApplyUnit*(this: var IGESData_BasicEditor;
               enforce: Standard_Boolean = Standard_False) {.importcpp: "ApplyUnit",
    header: "IGESData_BasicEditor.hxx".}
proc ComputeStatus*(this: var IGESData_BasicEditor) {.importcpp: "ComputeStatus",
    header: "IGESData_BasicEditor.hxx".}
proc AutoCorrect*(this: var IGESData_BasicEditor; ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "AutoCorrect", header: "IGESData_BasicEditor.hxx".}
proc AutoCorrectModel*(this: var IGESData_BasicEditor): Standard_Integer {.
    importcpp: "AutoCorrectModel", header: "IGESData_BasicEditor.hxx".}
proc UnitNameFlag*(name: Standard_CString): Standard_Integer {.
    importcpp: "IGESData_BasicEditor::UnitNameFlag(@)",
    header: "IGESData_BasicEditor.hxx".}
proc UnitFlagValue*(flag: Standard_Integer): Standard_Real {.
    importcpp: "IGESData_BasicEditor::UnitFlagValue(@)",
    header: "IGESData_BasicEditor.hxx".}
proc UnitFlagName*(flag: Standard_Integer): Standard_CString {.
    importcpp: "IGESData_BasicEditor::UnitFlagName(@)",
    header: "IGESData_BasicEditor.hxx".}
proc IGESVersionName*(flag: Standard_Integer): Standard_CString {.
    importcpp: "IGESData_BasicEditor::IGESVersionName(@)",
    header: "IGESData_BasicEditor.hxx".}
proc IGESVersionMax*(): Standard_Integer {.importcpp: "IGESData_BasicEditor::IGESVersionMax(@)",
                                        header: "IGESData_BasicEditor.hxx".}
proc DraftingName*(flag: Standard_Integer): Standard_CString {.
    importcpp: "IGESData_BasicEditor::DraftingName(@)",
    header: "IGESData_BasicEditor.hxx".}
proc DraftingMax*(): Standard_Integer {.importcpp: "IGESData_BasicEditor::DraftingMax(@)",
                                     header: "IGESData_BasicEditor.hxx".}