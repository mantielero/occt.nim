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
  StepShape_ClosedShell, StepShape_HArray1OfFace, ../Standard/Standard_Integer

discard "forward decl of StepShape_ClosedShell"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_OrientedClosedShell"
discard "forward decl of StepShape_OrientedClosedShell"
type
  Handle_StepShape_OrientedClosedShell* = handle[StepShape_OrientedClosedShell]
  StepShape_OrientedClosedShell* {.importcpp: "StepShape_OrientedClosedShell",
                                  header: "StepShape_OrientedClosedShell.hxx",
                                  bycopy.} = object of StepShape_ClosedShell ## ! Returns a
                                                                        ## OrientedClosedShell


proc constructStepShape_OrientedClosedShell*(): StepShape_OrientedClosedShell {.
    constructor, importcpp: "StepShape_OrientedClosedShell(@)",
    header: "StepShape_OrientedClosedShell.hxx".}
proc Init*(this: var StepShape_OrientedClosedShell;
          aName: handle[TCollection_HAsciiString];
          aClosedShellElement: handle[StepShape_ClosedShell];
          aOrientation: Standard_Boolean) {.importcpp: "Init",
    header: "StepShape_OrientedClosedShell.hxx".}
proc SetClosedShellElement*(this: var StepShape_OrientedClosedShell;
                           aClosedShellElement: handle[StepShape_ClosedShell]) {.
    importcpp: "SetClosedShellElement",
    header: "StepShape_OrientedClosedShell.hxx".}
proc ClosedShellElement*(this: StepShape_OrientedClosedShell): handle[
    StepShape_ClosedShell] {.noSideEffect, importcpp: "ClosedShellElement",
                            header: "StepShape_OrientedClosedShell.hxx".}
proc SetOrientation*(this: var StepShape_OrientedClosedShell;
                    aOrientation: Standard_Boolean) {.importcpp: "SetOrientation",
    header: "StepShape_OrientedClosedShell.hxx".}
proc Orientation*(this: StepShape_OrientedClosedShell): Standard_Boolean {.
    noSideEffect, importcpp: "Orientation",
    header: "StepShape_OrientedClosedShell.hxx".}
proc SetCfsFaces*(this: var StepShape_OrientedClosedShell;
                 aCfsFaces: handle[StepShape_HArray1OfFace]) {.
    importcpp: "SetCfsFaces", header: "StepShape_OrientedClosedShell.hxx".}
proc CfsFaces*(this: StepShape_OrientedClosedShell): handle[StepShape_HArray1OfFace] {.
    noSideEffect, importcpp: "CfsFaces",
    header: "StepShape_OrientedClosedShell.hxx".}
proc CfsFacesValue*(this: StepShape_OrientedClosedShell; num: Standard_Integer): handle[
    StepShape_Face] {.noSideEffect, importcpp: "CfsFacesValue",
                     header: "StepShape_OrientedClosedShell.hxx".}
proc NbCfsFaces*(this: StepShape_OrientedClosedShell): Standard_Integer {.
    noSideEffect, importcpp: "NbCfsFaces",
    header: "StepShape_OrientedClosedShell.hxx".}
type
  StepShape_OrientedClosedShellbase_type* = StepShape_ClosedShell

proc get_type_name*(): cstring {.importcpp: "StepShape_OrientedClosedShell::get_type_name(@)",
                              header: "StepShape_OrientedClosedShell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_OrientedClosedShell::get_type_descriptor(@)",
    header: "StepShape_OrientedClosedShell.hxx".}
proc DynamicType*(this: StepShape_OrientedClosedShell): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_OrientedClosedShell.hxx".}