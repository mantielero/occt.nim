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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../StepRepr/StepRepr_ShapeAspect, StepDimTol_DatumOrCommonDatum,
  StepDimTol_HArray1OfDatumReferenceModifier

discard "forward decl of StepDimTol_GeneralDatumReference"
discard "forward decl of StepDimTol_GeneralDatumReference"
type
  Handle_StepDimTol_GeneralDatumReference* = handle[
      StepDimTol_GeneralDatumReference]

## ! Representation of STEP entity GeneralDatumReference

type
  StepDimTol_GeneralDatumReference* {.importcpp: "StepDimTol_GeneralDatumReference", header: "StepDimTol_GeneralDatumReference.hxx",
                                     bycopy.} = object of StepRepr_ShapeAspect ## ! Empty
                                                                          ## constructor


proc constructStepDimTol_GeneralDatumReference*(): StepDimTol_GeneralDatumReference {.
    constructor, importcpp: "StepDimTol_GeneralDatumReference(@)",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc Init*(this: var StepDimTol_GeneralDatumReference;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theOfShape: handle[StepRepr_ProductDefinitionShape];
          theProductDefinitional: StepData_Logical;
          theBase: StepDimTol_DatumOrCommonDatum;
          theHasModifiers: Standard_Boolean;
          theModifiers: handle[StepDimTol_HArray1OfDatumReferenceModifier]) {.
    importcpp: "Init", header: "StepDimTol_GeneralDatumReference.hxx".}
proc Base*(this: var StepDimTol_GeneralDatumReference): StepDimTol_DatumOrCommonDatum {.
    importcpp: "Base", header: "StepDimTol_GeneralDatumReference.hxx".}
proc SetBase*(this: var StepDimTol_GeneralDatumReference;
             theBase: StepDimTol_DatumOrCommonDatum) {.importcpp: "SetBase",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc HasModifiers*(this: StepDimTol_GeneralDatumReference): Standard_Boolean {.
    noSideEffect, importcpp: "HasModifiers",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc Modifiers*(this: var StepDimTol_GeneralDatumReference): handle[
    StepDimTol_HArray1OfDatumReferenceModifier] {.importcpp: "Modifiers",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc SetModifiers*(this: var StepDimTol_GeneralDatumReference; theModifiers: handle[
    StepDimTol_HArray1OfDatumReferenceModifier]) {.importcpp: "SetModifiers",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc NbModifiers*(this: StepDimTol_GeneralDatumReference): Standard_Integer {.
    noSideEffect, importcpp: "NbModifiers",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc ModifiersValue*(this: StepDimTol_GeneralDatumReference;
                    theNum: Standard_Integer): StepDimTol_DatumReferenceModifier {.
    noSideEffect, importcpp: "ModifiersValue",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc ModifiersValue*(this: var StepDimTol_GeneralDatumReference;
                    theNum: Standard_Integer;
                    theItem: StepDimTol_DatumReferenceModifier) {.
    importcpp: "ModifiersValue", header: "StepDimTol_GeneralDatumReference.hxx".}
type
  StepDimTol_GeneralDatumReferencebase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeneralDatumReference::get_type_name(@)",
                              header: "StepDimTol_GeneralDatumReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_GeneralDatumReference::get_type_descriptor(@)",
    header: "StepDimTol_GeneralDatumReference.hxx".}
proc DynamicType*(this: StepDimTol_GeneralDatumReference): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_GeneralDatumReference.hxx".}