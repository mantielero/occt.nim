##  Created on: 1999-10-12
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of StepBasic_AreaUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndAreaUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndAreaUnit"
type
  HandleC1C1* = Handle[StepBasicConversionBasedUnitAndAreaUnit]
  StepBasicConversionBasedUnitAndAreaUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndAreaUnit",
      header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx", bycopy.} = object of StepBasicConversionBasedUnit ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## ConversionBasedUnitAndAreaUnit


proc constructStepBasicConversionBasedUnitAndAreaUnit*(): StepBasicConversionBasedUnitAndAreaUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndAreaUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
proc setAreaUnit*(this: var StepBasicConversionBasedUnitAndAreaUnit;
                 anAreaUnit: Handle[StepBasicAreaUnit]) {.
    importcpp: "SetAreaUnit",
    header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
proc areaUnit*(this: StepBasicConversionBasedUnitAndAreaUnit): Handle[
    StepBasicAreaUnit] {.noSideEffect, importcpp: "AreaUnit",
                        header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
type
  StepBasicConversionBasedUnitAndAreaUnitbaseType* = StepBasicConversionBasedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndAreaUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ConversionBasedUnitAndAreaUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}
proc dynamicType*(this: StepBasicConversionBasedUnitAndAreaUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ConversionBasedUnitAndAreaUnit.hxx".}

























