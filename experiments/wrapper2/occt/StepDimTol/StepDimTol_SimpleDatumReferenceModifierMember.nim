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

discard "forward decl of StepDimTol_SimpleDatumReferenceModifierMember"
discard "forward decl of StepDimTol_SimpleDatumReferenceModifierMember"
type
  HandleC1C1* = Handle[StepDimTolSimpleDatumReferenceModifierMember]

## ! Defines SimpleDatumReferenceModifier as unique member of DatumReferenceModifier
## ! Works with an EnumTool

type
  StepDimTolSimpleDatumReferenceModifierMember* {.
      importcpp: "StepDimTol_SimpleDatumReferenceModifierMember",
      header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx", bycopy.} = object of StepDataSelectInt


proc constructStepDimTolSimpleDatumReferenceModifierMember*(): StepDimTolSimpleDatumReferenceModifierMember {.
    constructor, importcpp: "StepDimTol_SimpleDatumReferenceModifierMember(@)",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc hasName*(this: StepDimTolSimpleDatumReferenceModifierMember): bool {.
    noSideEffect, importcpp: "HasName",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc name*(this: StepDimTolSimpleDatumReferenceModifierMember): StandardCString {.
    noSideEffect, importcpp: "Name",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc setName*(this: var StepDimTolSimpleDatumReferenceModifierMember; a2: StandardCString): bool {.
    importcpp: "SetName",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
  ## theName
proc kind*(this: StepDimTolSimpleDatumReferenceModifierMember): cint {.noSideEffect,
    importcpp: "Kind", header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc enumText*(this: StepDimTolSimpleDatumReferenceModifierMember): StandardCString {.
    noSideEffect, importcpp: "EnumText",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc setEnumText*(this: var StepDimTolSimpleDatumReferenceModifierMember;
                 theValue: cint; theText: StandardCString) {.
    importcpp: "SetEnumText",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc setValue*(this: var StepDimTolSimpleDatumReferenceModifierMember;
              theValue: StepDimTolSimpleDatumReferenceModifier) {.
    importcpp: "SetValue",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc value*(this: StepDimTolSimpleDatumReferenceModifierMember): StepDimTolSimpleDatumReferenceModifier {.
    noSideEffect, importcpp: "Value",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
type
  StepDimTolSimpleDatumReferenceModifierMemberbaseType* = StepDataSelectInt

proc getTypeName*(): cstring {.importcpp: "StepDimTol_SimpleDatumReferenceModifierMember::get_type_name(@)", header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_SimpleDatumReferenceModifierMember::get_type_descriptor(@)",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc dynamicType*(this: StepDimTolSimpleDatumReferenceModifierMember): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}

























