##  Created on: 1999-10-11
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
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_SiUnitAndAreaUnit"
discard "forward decl of StepBasic_SiUnitAndAreaUnit"
type
  HandleStepBasicSiUnitAndAreaUnit* = Handle[StepBasicSiUnitAndAreaUnit]
  StepBasicSiUnitAndAreaUnit* {.importcpp: "StepBasic_SiUnitAndAreaUnit",
                               header: "StepBasic_SiUnitAndAreaUnit.hxx", bycopy.} = object of StepBasicSiUnit ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## SiUnitAndAreaUnit


proc constructStepBasicSiUnitAndAreaUnit*(): StepBasicSiUnitAndAreaUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndAreaUnit(@)",
    header: "StepBasic_SiUnitAndAreaUnit.hxx".}
proc setAreaUnit*(this: var StepBasicSiUnitAndAreaUnit;
                 anAreaUnit: Handle[StepBasicAreaUnit]) {.
    importcpp: "SetAreaUnit", header: "StepBasic_SiUnitAndAreaUnit.hxx".}
proc areaUnit*(this: StepBasicSiUnitAndAreaUnit): Handle[StepBasicAreaUnit] {.
    noSideEffect, importcpp: "AreaUnit", header: "StepBasic_SiUnitAndAreaUnit.hxx".}
type
  StepBasicSiUnitAndAreaUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndAreaUnit::get_type_name(@)",
                            header: "StepBasic_SiUnitAndAreaUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnitAndAreaUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndAreaUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndAreaUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndAreaUnit.hxx".}
