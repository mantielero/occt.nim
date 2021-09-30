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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_OrientedClosedShell"
discard "forward decl of StepShape_BrepWithVoids"
discard "forward decl of StepShape_BrepWithVoids"
type
  HandleC1C1* = Handle[StepShapeBrepWithVoids]
  StepShapeBrepWithVoids* {.importcpp: "StepShape_BrepWithVoids",
                           header: "StepShape_BrepWithVoids.hxx", bycopy.} = object of StepShapeManifoldSolidBrep ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## BrepWithVoids


proc constructStepShapeBrepWithVoids*(): StepShapeBrepWithVoids {.constructor,
    importcpp: "StepShape_BrepWithVoids(@)", header: "StepShape_BrepWithVoids.hxx".}
proc init*(this: var StepShapeBrepWithVoids; aName: Handle[TCollectionHAsciiString];
          aOuter: Handle[StepShapeClosedShell];
          aVoids: Handle[StepShapeHArray1OfOrientedClosedShell]) {.
    importcpp: "Init", header: "StepShape_BrepWithVoids.hxx".}
proc setVoids*(this: var StepShapeBrepWithVoids;
              aVoids: Handle[StepShapeHArray1OfOrientedClosedShell]) {.
    importcpp: "SetVoids", header: "StepShape_BrepWithVoids.hxx".}
proc voids*(this: StepShapeBrepWithVoids): Handle[
    StepShapeHArray1OfOrientedClosedShell] {.noSideEffect, importcpp: "Voids",
    header: "StepShape_BrepWithVoids.hxx".}
proc voidsValue*(this: StepShapeBrepWithVoids; num: cint): Handle[
    StepShapeOrientedClosedShell] {.noSideEffect, importcpp: "VoidsValue",
                                   header: "StepShape_BrepWithVoids.hxx".}
proc nbVoids*(this: StepShapeBrepWithVoids): cint {.noSideEffect,
    importcpp: "NbVoids", header: "StepShape_BrepWithVoids.hxx".}
type
  StepShapeBrepWithVoidsbaseType* = StepShapeManifoldSolidBrep

proc getTypeName*(): cstring {.importcpp: "StepShape_BrepWithVoids::get_type_name(@)",
                            header: "StepShape_BrepWithVoids.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_BrepWithVoids::get_type_descriptor(@)",
    header: "StepShape_BrepWithVoids.hxx".}
proc dynamicType*(this: StepShapeBrepWithVoids): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_BrepWithVoids.hxx".}

























