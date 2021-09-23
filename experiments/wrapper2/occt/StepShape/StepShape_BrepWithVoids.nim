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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepShape_HArray1OfOrientedClosedShell, StepShape_ManifoldSolidBrep,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_OrientedClosedShell"
discard "forward decl of StepShape_BrepWithVoids"
discard "forward decl of StepShape_BrepWithVoids"
type
  Handle_StepShape_BrepWithVoids* = handle[StepShape_BrepWithVoids]
  StepShape_BrepWithVoids* {.importcpp: "StepShape_BrepWithVoids",
                            header: "StepShape_BrepWithVoids.hxx", bycopy.} = object of StepShape_ManifoldSolidBrep ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## BrepWithVoids


proc constructStepShape_BrepWithVoids*(): StepShape_BrepWithVoids {.constructor,
    importcpp: "StepShape_BrepWithVoids(@)", header: "StepShape_BrepWithVoids.hxx".}
proc Init*(this: var StepShape_BrepWithVoids;
          aName: handle[TCollection_HAsciiString];
          aOuter: handle[StepShape_ClosedShell];
          aVoids: handle[StepShape_HArray1OfOrientedClosedShell]) {.
    importcpp: "Init", header: "StepShape_BrepWithVoids.hxx".}
proc SetVoids*(this: var StepShape_BrepWithVoids;
              aVoids: handle[StepShape_HArray1OfOrientedClosedShell]) {.
    importcpp: "SetVoids", header: "StepShape_BrepWithVoids.hxx".}
proc Voids*(this: StepShape_BrepWithVoids): handle[
    StepShape_HArray1OfOrientedClosedShell] {.noSideEffect, importcpp: "Voids",
    header: "StepShape_BrepWithVoids.hxx".}
proc VoidsValue*(this: StepShape_BrepWithVoids; num: Standard_Integer): handle[
    StepShape_OrientedClosedShell] {.noSideEffect, importcpp: "VoidsValue",
                                    header: "StepShape_BrepWithVoids.hxx".}
proc NbVoids*(this: StepShape_BrepWithVoids): Standard_Integer {.noSideEffect,
    importcpp: "NbVoids", header: "StepShape_BrepWithVoids.hxx".}
type
  StepShape_BrepWithVoidsbase_type* = StepShape_ManifoldSolidBrep

proc get_type_name*(): cstring {.importcpp: "StepShape_BrepWithVoids::get_type_name(@)",
                              header: "StepShape_BrepWithVoids.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_BrepWithVoids::get_type_descriptor(@)",
    header: "StepShape_BrepWithVoids.hxx".}
proc DynamicType*(this: StepShape_BrepWithVoids): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_BrepWithVoids.hxx".}