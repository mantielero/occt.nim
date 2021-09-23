##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepShape_OpenShell, StepShape_HArray1OfFace, ../Standard/Standard_Integer

discard "forward decl of StepShape_OpenShell"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_OrientedOpenShell"
discard "forward decl of StepShape_OrientedOpenShell"
type
  Handle_StepShape_OrientedOpenShell* = handle[StepShape_OrientedOpenShell]
  StepShape_OrientedOpenShell* {.importcpp: "StepShape_OrientedOpenShell",
                                header: "StepShape_OrientedOpenShell.hxx", bycopy.} = object of StepShape_OpenShell ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## OrientedOpenShell


proc constructStepShape_OrientedOpenShell*(): StepShape_OrientedOpenShell {.
    constructor, importcpp: "StepShape_OrientedOpenShell(@)",
    header: "StepShape_OrientedOpenShell.hxx".}
proc Init*(this: var StepShape_OrientedOpenShell;
          aName: handle[TCollection_HAsciiString];
          aOpenShellElement: handle[StepShape_OpenShell];
          aOrientation: Standard_Boolean) {.importcpp: "Init",
    header: "StepShape_OrientedOpenShell.hxx".}
proc SetOpenShellElement*(this: var StepShape_OrientedOpenShell;
                         aOpenShellElement: handle[StepShape_OpenShell]) {.
    importcpp: "SetOpenShellElement", header: "StepShape_OrientedOpenShell.hxx".}
proc OpenShellElement*(this: StepShape_OrientedOpenShell): handle[
    StepShape_OpenShell] {.noSideEffect, importcpp: "OpenShellElement",
                          header: "StepShape_OrientedOpenShell.hxx".}
proc SetOrientation*(this: var StepShape_OrientedOpenShell;
                    aOrientation: Standard_Boolean) {.importcpp: "SetOrientation",
    header: "StepShape_OrientedOpenShell.hxx".}
proc Orientation*(this: StepShape_OrientedOpenShell): Standard_Boolean {.
    noSideEffect, importcpp: "Orientation",
    header: "StepShape_OrientedOpenShell.hxx".}
proc SetCfsFaces*(this: var StepShape_OrientedOpenShell;
                 aCfsFaces: handle[StepShape_HArray1OfFace]) {.
    importcpp: "SetCfsFaces", header: "StepShape_OrientedOpenShell.hxx".}
proc CfsFaces*(this: StepShape_OrientedOpenShell): handle[StepShape_HArray1OfFace] {.
    noSideEffect, importcpp: "CfsFaces", header: "StepShape_OrientedOpenShell.hxx".}
proc CfsFacesValue*(this: StepShape_OrientedOpenShell; num: Standard_Integer): handle[
    StepShape_Face] {.noSideEffect, importcpp: "CfsFacesValue",
                     header: "StepShape_OrientedOpenShell.hxx".}
proc NbCfsFaces*(this: StepShape_OrientedOpenShell): Standard_Integer {.
    noSideEffect, importcpp: "NbCfsFaces",
    header: "StepShape_OrientedOpenShell.hxx".}
type
  StepShape_OrientedOpenShellbase_type* = StepShape_OpenShell

proc get_type_name*(): cstring {.importcpp: "StepShape_OrientedOpenShell::get_type_name(@)",
                              header: "StepShape_OrientedOpenShell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_OrientedOpenShell::get_type_descriptor(@)",
    header: "StepShape_OrientedOpenShell.hxx".}
proc DynamicType*(this: StepShape_OrientedOpenShell): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_OrientedOpenShell.hxx".}