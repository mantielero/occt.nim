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
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_ConversionBasedUnit"
discard "forward decl of StepBasic_ConversionBasedUnit"
type
  HandleC1C1* = Handle[StepBasicConversionBasedUnit]
  StepBasicConversionBasedUnit* {.importcpp: "StepBasic_ConversionBasedUnit",
                                 header: "StepBasic_ConversionBasedUnit.hxx",
                                 bycopy.} = object of StepBasicNamedUnit ## ! Returns a
                                                                    ## ConversionBasedUnit


proc constructStepBasicConversionBasedUnit*(): StepBasicConversionBasedUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnit(@)",
    header: "StepBasic_ConversionBasedUnit.hxx".}
proc init*(this: var StepBasicConversionBasedUnit;
          aDimensions: Handle[StepBasicDimensionalExponents];
          aName: Handle[TCollectionHAsciiString];
          aConversionFactor: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnit.hxx".}
proc setName*(this: var StepBasicConversionBasedUnit;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ConversionBasedUnit.hxx".}
proc name*(this: StepBasicConversionBasedUnit): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ConversionBasedUnit.hxx".}
proc setConversionFactor*(this: var StepBasicConversionBasedUnit;
                         aConversionFactor: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "SetConversionFactor", header: "StepBasic_ConversionBasedUnit.hxx".}
proc conversionFactor*(this: StepBasicConversionBasedUnit): Handle[
    StepBasicMeasureWithUnit] {.noSideEffect, importcpp: "ConversionFactor",
                               header: "StepBasic_ConversionBasedUnit.hxx".}
type
  StepBasicConversionBasedUnitbaseType* = StepBasicNamedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ConversionBasedUnit::get_type_name(@)",
                            header: "StepBasic_ConversionBasedUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ConversionBasedUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnit.hxx".}
proc dynamicType*(this: StepBasicConversionBasedUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ConversionBasedUnit.hxx".}