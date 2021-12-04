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


proc newQuantityPeriod*(dd: cint; hh: cint; mn: cint; ss: cint; mis: cint = 0; mics: cint = 0): QuantityPeriod {.
    cdecl, constructor, importcpp: "Quantity_Period(@)", header: "Quantity_Period.hxx".}
proc newQuantityPeriod*(ss: cint; mics: cint = 0): QuantityPeriod {.cdecl, constructor,
    importcpp: "Quantity_Period(@)", header: "Quantity_Period.hxx".}
proc values*(this: QuantityPeriod; dd: var cint; hh: var cint; mn: var cint; ss: var cint;
            mis: var cint; mics: var cint) {.noSideEffect, cdecl, importcpp: "Values",
                                       header: "Quantity_Period.hxx".}
proc values*(this: QuantityPeriod; ss: var cint; mics: var cint) {.noSideEffect, cdecl,
    importcpp: "Values", header: "Quantity_Period.hxx".}
proc setValues*(this: var QuantityPeriod; dd: cint; hh: cint; mn: cint; ss: cint;
               mis: cint = 0; mics: cint = 0) {.cdecl, importcpp: "SetValues",
                                        header: "Quantity_Period.hxx".}
proc setValues*(this: var QuantityPeriod; ss: cint; mics: cint = 0) {.cdecl,
    importcpp: "SetValues", header: "Quantity_Period.hxx".}
proc subtract*(this: QuantityPeriod; anOther: QuantityPeriod): QuantityPeriod {.
    noSideEffect, cdecl, importcpp: "Subtract", header: "Quantity_Period.hxx".}
proc `-`*(this: QuantityPeriod; anOther: QuantityPeriod): QuantityPeriod {.
    noSideEffect, cdecl, importcpp: "(# - #)", header: "Quantity_Period.hxx".}
proc add*(this: QuantityPeriod; anOther: QuantityPeriod): QuantityPeriod {.
    noSideEffect, cdecl, importcpp: "Add", header: "Quantity_Period.hxx".}
proc `+`*(this: QuantityPeriod; anOther: QuantityPeriod): QuantityPeriod {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "Quantity_Period.hxx".}
proc isEqual*(this: QuantityPeriod; anOther: QuantityPeriod): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "Quantity_Period.hxx".}
proc `==`*(this: QuantityPeriod; anOther: QuantityPeriod): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "Quantity_Period.hxx".}
proc isShorter*(this: QuantityPeriod; anOther: QuantityPeriod): bool {.noSideEffect,
    cdecl, importcpp: "IsShorter", header: "Quantity_Period.hxx".}
proc `<`*(this: QuantityPeriod; anOther: QuantityPeriod): bool {.noSideEffect, cdecl,
    importcpp: "(# < #)", header: "Quantity_Period.hxx".}
proc isLonger*(this: QuantityPeriod; anOther: QuantityPeriod): bool {.noSideEffect,
    cdecl, importcpp: "IsLonger", header: "Quantity_Period.hxx".}
proc isValid*(dd: cint; hh: cint; mn: cint; ss: cint; mis: cint = 0; mics: cint = 0): bool {.
    cdecl, importcpp: "Quantity_Period::IsValid(@)", header: "Quantity_Period.hxx".}
proc isValid*(ss: cint; mics: cint = 0): bool {.cdecl, importcpp: "Quantity_Period::IsValid(@)",
                                        header: "Quantity_Period.hxx".}