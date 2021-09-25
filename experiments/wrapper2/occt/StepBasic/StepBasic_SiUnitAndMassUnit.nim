##  Created on: 2002-12-15
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_SiUnitAndMassUnit"
discard "forward decl of StepBasic_SiUnitAndMassUnit"
type
  HandleStepBasicSiUnitAndMassUnit* = Handle[StepBasicSiUnitAndMassUnit]
  StepBasicSiUnitAndMassUnit* {.importcpp: "StepBasic_SiUnitAndMassUnit",
                               header: "StepBasic_SiUnitAndMassUnit.hxx", bycopy.} = object of StepBasicSiUnit ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## SiUnitAndMassUnit


proc constructStepBasicSiUnitAndMassUnit*(): StepBasicSiUnitAndMassUnit {.
    constructor, importcpp: "StepBasic_SiUnitAndMassUnit(@)",
    header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc init*(this: var StepBasicSiUnitAndMassUnit; hasAprefix: bool;
          aPrefix: StepBasicSiPrefix; aName: StepBasicSiUnitName) {.
    importcpp: "Init", header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc setMassUnit*(this: var StepBasicSiUnitAndMassUnit;
                 aMassUnit: Handle[StepBasicMassUnit]) {.importcpp: "SetMassUnit",
    header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc massUnit*(this: StepBasicSiUnitAndMassUnit): Handle[StepBasicMassUnit] {.
    noSideEffect, importcpp: "MassUnit", header: "StepBasic_SiUnitAndMassUnit.hxx".}
type
  StepBasicSiUnitAndMassUnitbaseType* = StepBasicSiUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_SiUnitAndMassUnit::get_type_name(@)",
                            header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SiUnitAndMassUnit::get_type_descriptor(@)",
    header: "StepBasic_SiUnitAndMassUnit.hxx".}
proc dynamicType*(this: StepBasicSiUnitAndMassUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SiUnitAndMassUnit.hxx".}
