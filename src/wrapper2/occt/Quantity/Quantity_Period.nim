##  Created on: 1993-01-04
##  Created by: J.P. BOUDIER - J.P. TIRAULT
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Quantity_PeriodDefinitionError"
type
  QuantityPeriod* {.importcpp: "Quantity_Period", header: "Quantity_Period.hxx",
                   bycopy.} = object ## ! Creates a Period
                                  ## ! With:      0 <= dd
                                  ## ! 0 <= hh
                                  ## ! 0 <= mn
                                  ## ! 0 <= ss
                                  ## ! 0 <= mis
                                  ## ! 0 <= mics


proc constructQuantityPeriod*(dd: StandardInteger; hh: StandardInteger;
                             mn: StandardInteger; ss: StandardInteger;
                             mis: StandardInteger = 0; mics: StandardInteger = 0): QuantityPeriod {.
    constructor, importcpp: "Quantity_Period(@)", header: "Quantity_Period.hxx".}
proc constructQuantityPeriod*(ss: StandardInteger; mics: StandardInteger = 0): QuantityPeriod {.
    constructor, importcpp: "Quantity_Period(@)", header: "Quantity_Period.hxx".}
proc values*(this: QuantityPeriod; dd: var StandardInteger; hh: var StandardInteger;
            mn: var StandardInteger; ss: var StandardInteger;
            mis: var StandardInteger; mics: var StandardInteger) {.noSideEffect,
    importcpp: "Values", header: "Quantity_Period.hxx".}
proc values*(this: QuantityPeriod; ss: var StandardInteger; mics: var StandardInteger) {.
    noSideEffect, importcpp: "Values", header: "Quantity_Period.hxx".}
proc setValues*(this: var QuantityPeriod; dd: StandardInteger; hh: StandardInteger;
               mn: StandardInteger; ss: StandardInteger; mis: StandardInteger = 0;
               mics: StandardInteger = 0) {.importcpp: "SetValues",
                                        header: "Quantity_Period.hxx".}
proc setValues*(this: var QuantityPeriod; ss: StandardInteger;
               mics: StandardInteger = 0) {.importcpp: "SetValues",
                                        header: "Quantity_Period.hxx".}
proc subtract*(this: QuantityPeriod; anOther: QuantityPeriod): QuantityPeriod {.
    noSideEffect, importcpp: "Subtract", header: "Quantity_Period.hxx".}
proc `-`*(this: QuantityPeriod; anOther: QuantityPeriod): QuantityPeriod {.
    noSideEffect, importcpp: "(# - #)", header: "Quantity_Period.hxx".}
proc add*(this: QuantityPeriod; anOther: QuantityPeriod): QuantityPeriod {.
    noSideEffect, importcpp: "Add", header: "Quantity_Period.hxx".}
proc `+`*(this: QuantityPeriod; anOther: QuantityPeriod): QuantityPeriod {.
    noSideEffect, importcpp: "(# + #)", header: "Quantity_Period.hxx".}
proc isEqual*(this: QuantityPeriod; anOther: QuantityPeriod): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "Quantity_Period.hxx".}
proc `==`*(this: QuantityPeriod; anOther: QuantityPeriod): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "Quantity_Period.hxx".}
proc isShorter*(this: QuantityPeriod; anOther: QuantityPeriod): StandardBoolean {.
    noSideEffect, importcpp: "IsShorter", header: "Quantity_Period.hxx".}
proc `<`*(this: QuantityPeriod; anOther: QuantityPeriod): StandardBoolean {.
    noSideEffect, importcpp: "(# < #)", header: "Quantity_Period.hxx".}
proc isLonger*(this: QuantityPeriod; anOther: QuantityPeriod): StandardBoolean {.
    noSideEffect, importcpp: "IsLonger", header: "Quantity_Period.hxx".}
proc isValid*(dd: StandardInteger; hh: StandardInteger; mn: StandardInteger;
             ss: StandardInteger; mis: StandardInteger = 0; mics: StandardInteger = 0): StandardBoolean {.
    importcpp: "Quantity_Period::IsValid(@)", header: "Quantity_Period.hxx".}
proc isValid*(ss: StandardInteger; mics: StandardInteger = 0): StandardBoolean {.
    importcpp: "Quantity_Period::IsValid(@)", header: "Quantity_Period.hxx".}

