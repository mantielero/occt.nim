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

discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnit"
discard "forward decl of StepBasic_SiUnit"
type
  HandleC1C1* = Handle[StepBasicSiUnit]
  StepBasicSiUnit* {.importcpp: "StepBasic_SiUnit", header: "StepBasic_SiUnit.hxx",
                    bycopy.} = object of StepBasicNamedUnit ## ! Returns a SiUnit


proc constructStepBasicSiUnit*(): StepBasicSiUnit {.constructor,
    importcpp: "StepBasic_SiUnit(@)", header: "StepBasic_SiUnit.hxx".}
proc init*(this: var StepBasicSiUnit; hasAprefix: StandardBoolean;
          aPrefix: StepBasicSiPrefix; aName: StepBasicSiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnit.hxx".}
proc setPrefix*(this: var StepBasicSiUnit; aPrefix: StepBasicSiPrefix) {.
    importcpp: "SetPrefix", header: "StepBasic_SiUnit.hxx".}
proc unSetPrefix*(this: var StepBasicSiUnit) {.importcpp: "UnSetPrefix",
    header: "StepBasic_SiUnit.hxx".}
proc prefix*(this: StepBasicSiUnit): StepBasicSiPrefix {.noSideEffect,
    importcpp: "Prefix", header: "StepBasic_SiUnit.hxx".}
proc hasPrefix*(this: StepBasicSiUnit): StandardBoolean {.noSideEffect,
    importcpp: "HasPrefix", header: "StepBasic_SiUnit.hxx".}
proc setName*(this: var StepBasicSiUnit; aName: StepBasicSiUnitName) {.
    importcpp: "SetName", header: "StepBasic_SiUnit.hxx".}
proc name*(this: StepBasicSiUnit): StepBasicSiUnitName {.noSideEffect,
    importcpp: "Name", header: "StepBasic_SiUnit.hxx".}
proc setDimensions*(this: var StepBasicSiUnit;
                   aDimensions: Handle[StepBasicDimensionalExponents]) {.
    importcpp: "SetDimensions", header: "StepBasic_SiUnit.hxx".}
proc dimensions*(this: StepBasicSiUnit): Handle[StepBasicDimensionalExponents] {.
    noSideEffect, importcpp: "Dimensions", header: "StepBasic_SiUnit.hxx".}
type
  StepBasicSiUnitbaseType* = StepBasicNamedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnit::get_type_name(@)",
                            header: "StepBasic_SiUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_SiUnit.hxx".}