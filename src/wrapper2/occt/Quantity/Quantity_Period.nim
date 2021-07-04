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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Quantity_PeriodDefinitionError"
type
  Quantity_Period* {.importcpp: "Quantity_Period", header: "Quantity_Period.hxx",
                    bycopy.} = object ## ! Creates a Period
                                   ## ! With:      0 <= dd
                                   ## ! 0 <= hh
                                   ## ! 0 <= mn
                                   ## ! 0 <= ss
                                   ## ! 0 <= mis
                                   ## ! 0 <= mics


proc constructQuantity_Period*(dd: Standard_Integer; hh: Standard_Integer;
                              mn: Standard_Integer; ss: Standard_Integer;
                              mis: Standard_Integer = 0; mics: Standard_Integer = 0): Quantity_Period {.
    constructor, importcpp: "Quantity_Period(@)", header: "Quantity_Period.hxx".}
proc constructQuantity_Period*(ss: Standard_Integer; mics: Standard_Integer = 0): Quantity_Period {.
    constructor, importcpp: "Quantity_Period(@)", header: "Quantity_Period.hxx".}
proc Values*(this: Quantity_Period; dd: var Standard_Integer;
            hh: var Standard_Integer; mn: var Standard_Integer;
            ss: var Standard_Integer; mis: var Standard_Integer;
            mics: var Standard_Integer) {.noSideEffect, importcpp: "Values",
                                       header: "Quantity_Period.hxx".}
proc Values*(this: Quantity_Period; ss: var Standard_Integer;
            mics: var Standard_Integer) {.noSideEffect, importcpp: "Values",
                                       header: "Quantity_Period.hxx".}
proc SetValues*(this: var Quantity_Period; dd: Standard_Integer; hh: Standard_Integer;
               mn: Standard_Integer; ss: Standard_Integer;
               mis: Standard_Integer = 0; mics: Standard_Integer = 0) {.
    importcpp: "SetValues", header: "Quantity_Period.hxx".}
proc SetValues*(this: var Quantity_Period; ss: Standard_Integer;
               mics: Standard_Integer = 0) {.importcpp: "SetValues",
    header: "Quantity_Period.hxx".}
proc Subtract*(this: Quantity_Period; anOther: Quantity_Period): Quantity_Period {.
    noSideEffect, importcpp: "Subtract", header: "Quantity_Period.hxx".}
proc `-`*(this: Quantity_Period; anOther: Quantity_Period): Quantity_Period {.
    noSideEffect, importcpp: "(# - #)", header: "Quantity_Period.hxx".}
proc Add*(this: Quantity_Period; anOther: Quantity_Period): Quantity_Period {.
    noSideEffect, importcpp: "Add", header: "Quantity_Period.hxx".}
proc `+`*(this: Quantity_Period; anOther: Quantity_Period): Quantity_Period {.
    noSideEffect, importcpp: "(# + #)", header: "Quantity_Period.hxx".}
proc IsEqual*(this: Quantity_Period; anOther: Quantity_Period): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Quantity_Period.hxx".}
proc `==`*(this: Quantity_Period; anOther: Quantity_Period): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "Quantity_Period.hxx".}
proc IsShorter*(this: Quantity_Period; anOther: Quantity_Period): Standard_Boolean {.
    noSideEffect, importcpp: "IsShorter", header: "Quantity_Period.hxx".}
proc `<`*(this: Quantity_Period; anOther: Quantity_Period): Standard_Boolean {.
    noSideEffect, importcpp: "(# < #)", header: "Quantity_Period.hxx".}
proc IsLonger*(this: Quantity_Period; anOther: Quantity_Period): Standard_Boolean {.
    noSideEffect, importcpp: "IsLonger", header: "Quantity_Period.hxx".}
proc IsValid*(dd: Standard_Integer; hh: Standard_Integer; mn: Standard_Integer;
             ss: Standard_Integer; mis: Standard_Integer = 0;
             mics: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "Quantity_Period::IsValid(@)", header: "Quantity_Period.hxx".}
proc IsValid*(ss: Standard_Integer; mics: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "Quantity_Period::IsValid(@)", header: "Quantity_Period.hxx".}