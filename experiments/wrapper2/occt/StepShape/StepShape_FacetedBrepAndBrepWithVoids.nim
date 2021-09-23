##  Created on: 1994-06-17
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_ManifoldSolidBrep,
  StepShape_HArray1OfOrientedClosedShell, ../Standard/Standard_Integer

discard "forward decl of StepShape_FacetedBrep"
discard "forward decl of StepShape_BrepWithVoids"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_OrientedClosedShell"
discard "forward decl of StepShape_FacetedBrepAndBrepWithVoids"
discard "forward decl of StepShape_FacetedBrepAndBrepWithVoids"
type
  Handle_StepShape_FacetedBrepAndBrepWithVoids* = handle[
      StepShape_FacetedBrepAndBrepWithVoids]
  StepShape_FacetedBrepAndBrepWithVoids* {.
      importcpp: "StepShape_FacetedBrepAndBrepWithVoids",
      header: "StepShape_FacetedBrepAndBrepWithVoids.hxx", bycopy.} = object of StepShape_ManifoldSolidBrep ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## FacetedBrepAndBrepWithVoids


proc constructStepShape_FacetedBrepAndBrepWithVoids*(): StepShape_FacetedBrepAndBrepWithVoids {.
    constructor, importcpp: "StepShape_FacetedBrepAndBrepWithVoids(@)",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc Init*(this: var StepShape_FacetedBrepAndBrepWithVoids;
          aName: handle[TCollection_HAsciiString];
          aOuter: handle[StepShape_ClosedShell];
          aFacetedBrep: handle[StepShape_FacetedBrep];
          aBrepWithVoids: handle[StepShape_BrepWithVoids]) {.importcpp: "Init",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc Init*(this: var StepShape_FacetedBrepAndBrepWithVoids;
          aName: handle[TCollection_HAsciiString];
          aOuter: handle[StepShape_ClosedShell];
          aVoids: handle[StepShape_HArray1OfOrientedClosedShell]) {.
    importcpp: "Init", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc SetFacetedBrep*(this: var StepShape_FacetedBrepAndBrepWithVoids;
                    aFacetedBrep: handle[StepShape_FacetedBrep]) {.
    importcpp: "SetFacetedBrep",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc FacetedBrep*(this: StepShape_FacetedBrepAndBrepWithVoids): handle[
    StepShape_FacetedBrep] {.noSideEffect, importcpp: "FacetedBrep",
                            header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc SetBrepWithVoids*(this: var StepShape_FacetedBrepAndBrepWithVoids;
                      aBrepWithVoids: handle[StepShape_BrepWithVoids]) {.
    importcpp: "SetBrepWithVoids",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc BrepWithVoids*(this: StepShape_FacetedBrepAndBrepWithVoids): handle[
    StepShape_BrepWithVoids] {.noSideEffect, importcpp: "BrepWithVoids", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc SetVoids*(this: var StepShape_FacetedBrepAndBrepWithVoids;
              aVoids: handle[StepShape_HArray1OfOrientedClosedShell]) {.
    importcpp: "SetVoids", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc Voids*(this: StepShape_FacetedBrepAndBrepWithVoids): handle[
    StepShape_HArray1OfOrientedClosedShell] {.noSideEffect, importcpp: "Voids",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc VoidsValue*(this: StepShape_FacetedBrepAndBrepWithVoids; num: Standard_Integer): handle[
    StepShape_OrientedClosedShell] {.noSideEffect, importcpp: "VoidsValue", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc NbVoids*(this: StepShape_FacetedBrepAndBrepWithVoids): Standard_Integer {.
    noSideEffect, importcpp: "NbVoids",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
type
  StepShape_FacetedBrepAndBrepWithVoidsbase_type* = StepShape_ManifoldSolidBrep

proc get_type_name*(): cstring {.importcpp: "StepShape_FacetedBrepAndBrepWithVoids::get_type_name(@)", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_FacetedBrepAndBrepWithVoids::get_type_descriptor(@)",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc DynamicType*(this: StepShape_FacetedBrepAndBrepWithVoids): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}