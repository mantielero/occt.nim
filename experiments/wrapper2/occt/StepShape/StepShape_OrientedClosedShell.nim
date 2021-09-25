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

discard "forward decl of StepShape_ClosedShell"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_OrientedClosedShell"
discard "forward decl of StepShape_OrientedClosedShell"
type
  HandleStepShapeOrientedClosedShell* = Handle[StepShapeOrientedClosedShell]
  StepShapeOrientedClosedShell* {.importcpp: "StepShape_OrientedClosedShell",
                                 header: "StepShape_OrientedClosedShell.hxx",
                                 bycopy.} = object of StepShapeClosedShell ## ! Returns a
                                                                      ## OrientedClosedShell


proc constructStepShapeOrientedClosedShell*(): StepShapeOrientedClosedShell {.
    constructor, importcpp: "StepShape_OrientedClosedShell(@)",
    header: "StepShape_OrientedClosedShell.hxx".}
proc init*(this: var StepShapeOrientedClosedShell;
          aName: Handle[TCollectionHAsciiString];
          aClosedShellElement: Handle[StepShapeClosedShell]; aOrientation: bool) {.
    importcpp: "Init", header: "StepShape_OrientedClosedShell.hxx".}
proc setClosedShellElement*(this: var StepShapeOrientedClosedShell;
                           aClosedShellElement: Handle[StepShapeClosedShell]) {.
    importcpp: "SetClosedShellElement",
    header: "StepShape_OrientedClosedShell.hxx".}
proc closedShellElement*(this: StepShapeOrientedClosedShell): Handle[
    StepShapeClosedShell] {.noSideEffect, importcpp: "ClosedShellElement",
                           header: "StepShape_OrientedClosedShell.hxx".}
proc setOrientation*(this: var StepShapeOrientedClosedShell; aOrientation: bool) {.
    importcpp: "SetOrientation", header: "StepShape_OrientedClosedShell.hxx".}
proc orientation*(this: StepShapeOrientedClosedShell): bool {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_OrientedClosedShell.hxx".}
proc setCfsFaces*(this: var StepShapeOrientedClosedShell;
                 aCfsFaces: Handle[StepShapeHArray1OfFace]) {.
    importcpp: "SetCfsFaces", header: "StepShape_OrientedClosedShell.hxx".}
proc cfsFaces*(this: StepShapeOrientedClosedShell): Handle[StepShapeHArray1OfFace] {.
    noSideEffect, importcpp: "CfsFaces",
    header: "StepShape_OrientedClosedShell.hxx".}
proc cfsFacesValue*(this: StepShapeOrientedClosedShell; num: int): Handle[
    StepShapeFace] {.noSideEffect, importcpp: "CfsFacesValue",
                    header: "StepShape_OrientedClosedShell.hxx".}
proc nbCfsFaces*(this: StepShapeOrientedClosedShell): int {.noSideEffect,
    importcpp: "NbCfsFaces", header: "StepShape_OrientedClosedShell.hxx".}
type
  StepShapeOrientedClosedShellbaseType* = StepShapeClosedShell

proc getTypeName*(): cstring {.importcpp: "StepShape_OrientedClosedShell::get_type_name(@)",
                            header: "StepShape_OrientedClosedShell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_OrientedClosedShell::get_type_descriptor(@)",
    header: "StepShape_OrientedClosedShell.hxx".}
proc dynamicType*(this: StepShapeOrientedClosedShell): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_OrientedClosedShell.hxx".}
