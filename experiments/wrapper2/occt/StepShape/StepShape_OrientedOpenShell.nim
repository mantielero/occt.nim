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

discard "forward decl of StepShape_OpenShell"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_OrientedOpenShell"
discard "forward decl of StepShape_OrientedOpenShell"
type
  HandleStepShapeOrientedOpenShell* = Handle[StepShapeOrientedOpenShell]
  StepShapeOrientedOpenShell* {.importcpp: "StepShape_OrientedOpenShell",
                               header: "StepShape_OrientedOpenShell.hxx", bycopy.} = object of StepShapeOpenShell ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## OrientedOpenShell


proc constructStepShapeOrientedOpenShell*(): StepShapeOrientedOpenShell {.
    constructor, importcpp: "StepShape_OrientedOpenShell(@)",
    header: "StepShape_OrientedOpenShell.hxx".}
proc init*(this: var StepShapeOrientedOpenShell;
          aName: Handle[TCollectionHAsciiString];
          aOpenShellElement: Handle[StepShapeOpenShell]; aOrientation: bool) {.
    importcpp: "Init", header: "StepShape_OrientedOpenShell.hxx".}
proc setOpenShellElement*(this: var StepShapeOrientedOpenShell;
                         aOpenShellElement: Handle[StepShapeOpenShell]) {.
    importcpp: "SetOpenShellElement", header: "StepShape_OrientedOpenShell.hxx".}
proc openShellElement*(this: StepShapeOrientedOpenShell): Handle[StepShapeOpenShell] {.
    noSideEffect, importcpp: "OpenShellElement",
    header: "StepShape_OrientedOpenShell.hxx".}
proc setOrientation*(this: var StepShapeOrientedOpenShell; aOrientation: bool) {.
    importcpp: "SetOrientation", header: "StepShape_OrientedOpenShell.hxx".}
proc orientation*(this: StepShapeOrientedOpenShell): bool {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_OrientedOpenShell.hxx".}
proc setCfsFaces*(this: var StepShapeOrientedOpenShell;
                 aCfsFaces: Handle[StepShapeHArray1OfFace]) {.
    importcpp: "SetCfsFaces", header: "StepShape_OrientedOpenShell.hxx".}
proc cfsFaces*(this: StepShapeOrientedOpenShell): Handle[StepShapeHArray1OfFace] {.
    noSideEffect, importcpp: "CfsFaces", header: "StepShape_OrientedOpenShell.hxx".}
proc cfsFacesValue*(this: StepShapeOrientedOpenShell; num: int): Handle[StepShapeFace] {.
    noSideEffect, importcpp: "CfsFacesValue",
    header: "StepShape_OrientedOpenShell.hxx".}
proc nbCfsFaces*(this: StepShapeOrientedOpenShell): int {.noSideEffect,
    importcpp: "NbCfsFaces", header: "StepShape_OrientedOpenShell.hxx".}
type
  StepShapeOrientedOpenShellbaseType* = StepShapeOpenShell

proc getTypeName*(): cstring {.importcpp: "StepShape_OrientedOpenShell::get_type_name(@)",
                            header: "StepShape_OrientedOpenShell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_OrientedOpenShell::get_type_descriptor(@)",
    header: "StepShape_OrientedOpenShell.hxx".}
proc dynamicType*(this: StepShapeOrientedOpenShell): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_OrientedOpenShell.hxx".}
