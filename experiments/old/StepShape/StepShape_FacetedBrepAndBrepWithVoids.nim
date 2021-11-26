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

discard "forward decl of StepShape_FacetedBrep"
discard "forward decl of StepShape_BrepWithVoids"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_OrientedClosedShell"
discard "forward decl of StepShape_FacetedBrepAndBrepWithVoids"
discard "forward decl of StepShape_FacetedBrepAndBrepWithVoids"
type
  HandleC1C1* = Handle[StepShapeFacetedBrepAndBrepWithVoids]
  StepShapeFacetedBrepAndBrepWithVoids* {.
      importcpp: "StepShape_FacetedBrepAndBrepWithVoids",
      header: "StepShape_FacetedBrepAndBrepWithVoids.hxx", bycopy.} = object of StepShapeManifoldSolidBrep ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## FacetedBrepAndBrepWithVoids


proc constructStepShapeFacetedBrepAndBrepWithVoids*(): StepShapeFacetedBrepAndBrepWithVoids {.
    constructor, importcpp: "StepShape_FacetedBrepAndBrepWithVoids(@)",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc init*(this: var StepShapeFacetedBrepAndBrepWithVoids;
          aName: Handle[TCollectionHAsciiString];
          aOuter: Handle[StepShapeClosedShell];
          aFacetedBrep: Handle[StepShapeFacetedBrep];
          aBrepWithVoids: Handle[StepShapeBrepWithVoids]) {.importcpp: "Init",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc init*(this: var StepShapeFacetedBrepAndBrepWithVoids;
          aName: Handle[TCollectionHAsciiString];
          aOuter: Handle[StepShapeClosedShell];
          aVoids: Handle[StepShapeHArray1OfOrientedClosedShell]) {.
    importcpp: "Init", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc setFacetedBrep*(this: var StepShapeFacetedBrepAndBrepWithVoids;
                    aFacetedBrep: Handle[StepShapeFacetedBrep]) {.
    importcpp: "SetFacetedBrep",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc facetedBrep*(this: StepShapeFacetedBrepAndBrepWithVoids): Handle[
    StepShapeFacetedBrep] {.noSideEffect, importcpp: "FacetedBrep",
                           header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc setBrepWithVoids*(this: var StepShapeFacetedBrepAndBrepWithVoids;
                      aBrepWithVoids: Handle[StepShapeBrepWithVoids]) {.
    importcpp: "SetBrepWithVoids",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc brepWithVoids*(this: StepShapeFacetedBrepAndBrepWithVoids): Handle[
    StepShapeBrepWithVoids] {.noSideEffect, importcpp: "BrepWithVoids", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc setVoids*(this: var StepShapeFacetedBrepAndBrepWithVoids;
              aVoids: Handle[StepShapeHArray1OfOrientedClosedShell]) {.
    importcpp: "SetVoids", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc voids*(this: StepShapeFacetedBrepAndBrepWithVoids): Handle[
    StepShapeHArray1OfOrientedClosedShell] {.noSideEffect, importcpp: "Voids",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc voidsValue*(this: StepShapeFacetedBrepAndBrepWithVoids; num: int): Handle[
    StepShapeOrientedClosedShell] {.noSideEffect, importcpp: "VoidsValue", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc nbVoids*(this: StepShapeFacetedBrepAndBrepWithVoids): int {.noSideEffect,
    importcpp: "NbVoids", header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
type
  StepShapeFacetedBrepAndBrepWithVoidsbaseType* = StepShapeManifoldSolidBrep

proc getTypeName*(): cstring {.importcpp: "StepShape_FacetedBrepAndBrepWithVoids::get_type_name(@)",
                            header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_FacetedBrepAndBrepWithVoids::get_type_descriptor(@)",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}
proc dynamicType*(this: StepShapeFacetedBrepAndBrepWithVoids): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_FacetedBrepAndBrepWithVoids.hxx".}