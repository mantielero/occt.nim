##  Created on: 2015-07-16
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of StepDimTol_GeneralDatumReference"
discard "forward decl of StepDimTol_GeneralDatumReference"
type
  HandleC1C1* = Handle[StepDimTolGeneralDatumReference]

## ! Representation of STEP entity GeneralDatumReference

type
  StepDimTolGeneralDatumReference* {.importcpp: "StepDimTol_GeneralDatumReference", header: "StepDimTol_GeneralDatumReference.hxx",
                                    bycopy.} = object of StepReprShapeAspect ## ! Empty
                                                                        ## constructor


proc constructStepDimTolGeneralDatumReference*(): StepDimTolGeneralDatumReference {.
    constructor, importcpp: "StepDimTol_GeneralDatumReference(@)",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc init*(this: var StepDimTolGeneralDatumReference;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theOfShape: Handle[StepReprProductDefinitionShape];
          theProductDefinitional: StepDataLogical;
          theBase: StepDimTolDatumOrCommonDatum; theHasModifiers: bool;
          theModifiers: Handle[StepDimTolHArray1OfDatumReferenceModifier]) {.
    importcpp: "Init", header: "StepDimTol_GeneralDatumReference.hxx".}
proc base*(this: var StepDimTolGeneralDatumReference): StepDimTolDatumOrCommonDatum {.
    importcpp: "Base", header: "StepDimTol_GeneralDatumReference.hxx".}
proc setBase*(this: var StepDimTolGeneralDatumReference;
             theBase: StepDimTolDatumOrCommonDatum) {.importcpp: "SetBase",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc hasModifiers*(this: StepDimTolGeneralDatumReference): bool {.noSideEffect,
    importcpp: "HasModifiers", header: "StepDimTol_GeneralDatumReference.hxx".}
proc modifiers*(this: var StepDimTolGeneralDatumReference): Handle[
    StepDimTolHArray1OfDatumReferenceModifier] {.importcpp: "Modifiers",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc setModifiers*(this: var StepDimTolGeneralDatumReference; theModifiers: Handle[
    StepDimTolHArray1OfDatumReferenceModifier]) {.importcpp: "SetModifiers",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc nbModifiers*(this: StepDimTolGeneralDatumReference): cint {.noSideEffect,
    importcpp: "NbModifiers", header: "StepDimTol_GeneralDatumReference.hxx".}
proc modifiersValue*(this: StepDimTolGeneralDatumReference; theNum: cint): StepDimTolDatumReferenceModifier {.
    noSideEffect, importcpp: "ModifiersValue",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc modifiersValue*(this: var StepDimTolGeneralDatumReference; theNum: cint;
                    theItem: StepDimTolDatumReferenceModifier) {.
    importcpp: "ModifiersValue", header: "StepDimTol_GeneralDatumReference.hxx".}
type
  StepDimTolGeneralDatumReferencebaseType* = StepReprShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeneralDatumReference::get_type_name(@)",
                            header: "StepDimTol_GeneralDatumReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_GeneralDatumReference::get_type_descriptor(@)",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc dynamicType*(this: StepDimTolGeneralDatumReference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeneralDatumReference.hxx".}

























