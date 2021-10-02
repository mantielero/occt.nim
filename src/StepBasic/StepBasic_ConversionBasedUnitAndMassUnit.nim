##  Created on: 2003-02-10
##  Created by: Sergey KUUL
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of StepBasic_MassUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndMassUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndMassUnit"
type
  HandleC1C1* = Handle[StepBasicConversionBasedUnitAndMassUnit]
  StepBasicConversionBasedUnitAndMassUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndMassUnit",
      header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx", bycopy.} = object of StepBasicConversionBasedUnit ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## ConversionBasedUnitAndLengthUnit


proc constructStepBasicConversionBasedUnitAndMassUnit*(): StepBasicConversionBasedUnitAndMassUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndMassUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc init*(this: var StepBasicConversionBasedUnitAndMassUnit;
          aDimensions: Handle[StepBasicDimensionalExponents];
          aName: Handle[TCollectionHAsciiString];
          aConversionFactor: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc setMassUnit*(this: var StepBasicConversionBasedUnitAndMassUnit;
                 aMassUnit: Handle[StepBasicMassUnit]) {.importcpp: "SetMassUnit",
    header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc massUnit*(this: StepBasicConversionBasedUnitAndMassUnit): Handle[
    StepBasicMassUnit] {.noSideEffect, importcpp: "MassUnit",
                        header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
type
  StepBasicConversionBasedUnitAndMassUnitbaseType* = StepBasicConversionBasedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndMassUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ConversionBasedUnitAndMassUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc dynamicType*(this: StepBasicConversionBasedUnitAndMassUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}