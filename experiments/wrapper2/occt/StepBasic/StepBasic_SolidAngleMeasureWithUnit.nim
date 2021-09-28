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

discard "forward decl of StepBasic_SolidAngleMeasureWithUnit"
discard "forward decl of StepBasic_SolidAngleMeasureWithUnit"
type
  HandleC1C1* = Handle[StepBasicSolidAngleMeasureWithUnit]
  StepBasicSolidAngleMeasureWithUnit* {.importcpp: "StepBasic_SolidAngleMeasureWithUnit", header: "StepBasic_SolidAngleMeasureWithUnit.hxx",
                                       bycopy.} = object of StepBasicMeasureWithUnit ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## a
                                                                                ## SolidAngleMeasureWithUnit


proc constructStepBasicSolidAngleMeasureWithUnit*(): StepBasicSolidAngleMeasureWithUnit {.
    constructor, importcpp: "StepBasic_SolidAngleMeasureWithUnit(@)",
    header: "StepBasic_SolidAngleMeasureWithUnit.hxx".}
type
  StepBasicSolidAngleMeasureWithUnitbaseType* = StepBasicMeasureWithUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SolidAngleMeasureWithUnit::get_type_name(@)",
                            header: "StepBasic_SolidAngleMeasureWithUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SolidAngleMeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_SolidAngleMeasureWithUnit.hxx".}
proc dynamicType*(this: StepBasicSolidAngleMeasureWithUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SolidAngleMeasureWithUnit.hxx".}

























