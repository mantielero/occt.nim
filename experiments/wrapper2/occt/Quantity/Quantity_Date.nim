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

discard "forward decl of Quantity_DateDefinitionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Quantity_Period"
type
  Quantity_Date* {.importcpp: "Quantity_Date", header: "Quantity_Date.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructs
                                                                                      ## a
                                                                                      ## default
                                                                                      ## date
                                                                                      ##
                                                                                      ## !
                                                                                      ## (00:00
                                                                                      ## GMT,
                                                                                      ## January
                                                                                      ## 1,
                                                                                      ## 1979
                                                                                      ## (zero
                                                                                      ## hour));
                                                                                      ## use
                                                                                      ## the
                                                                                      ## function
                                                                                      ##
                                                                                      ## !
                                                                                      ## SetValues
                                                                                      ## to
                                                                                      ## define
                                                                                      ## the
                                                                                      ## required
                                                                                      ## date;
                                                                                      ## or


proc constructQuantity_Date*(): Quantity_Date {.constructor,
    importcpp: "Quantity_Date(@)", header: "Quantity_Date.hxx".}
proc constructQuantity_Date*(mm: Standard_Integer; dd: Standard_Integer;
                            yyyy: Standard_Integer; hh: Standard_Integer;
                            mn: Standard_Integer; ss: Standard_Integer;
                            mis: Standard_Integer = 0; mics: Standard_Integer = 0): Quantity_Date {.
    constructor, importcpp: "Quantity_Date(@)", header: "Quantity_Date.hxx".}
proc Values*(this: Quantity_Date; mm: var Standard_Integer; dd: var Standard_Integer;
            yy: var Standard_Integer; hh: var Standard_Integer;
            mn: var Standard_Integer; ss: var Standard_Integer;
            mis: var Standard_Integer; mics: var Standard_Integer) {.noSideEffect,
    importcpp: "Values", header: "Quantity_Date.hxx".}
proc SetValues*(this: var Quantity_Date; mm: Standard_Integer; dd: Standard_Integer;
               yy: Standard_Integer; hh: Standard_Integer; mn: Standard_Integer;
               ss: Standard_Integer; mis: Standard_Integer = 0;
               mics: Standard_Integer = 0) {.importcpp: "SetValues",
    header: "Quantity_Date.hxx".}
proc Difference*(this: var Quantity_Date; anOther: Quantity_Date): Quantity_Period {.
    importcpp: "Difference", header: "Quantity_Date.hxx".}
proc Subtract*(this: var Quantity_Date; aPeriod: Quantity_Period): Quantity_Date {.
    importcpp: "Subtract", header: "Quantity_Date.hxx".}
proc `-`*(this: var Quantity_Date; aPeriod: Quantity_Period): Quantity_Date {.
    importcpp: "(# - #)", header: "Quantity_Date.hxx".}
proc Add*(this: var Quantity_Date; aPeriod: Quantity_Period): Quantity_Date {.
    importcpp: "Add", header: "Quantity_Date.hxx".}
proc `+`*(this: var Quantity_Date; aPeriod: Quantity_Period): Quantity_Date {.
    importcpp: "(# + #)", header: "Quantity_Date.hxx".}
proc Year*(this: var Quantity_Date): Standard_Integer {.importcpp: "Year",
    header: "Quantity_Date.hxx".}
proc Month*(this: var Quantity_Date): Standard_Integer {.importcpp: "Month",
    header: "Quantity_Date.hxx".}
proc Day*(this: var Quantity_Date): Standard_Integer {.importcpp: "Day",
    header: "Quantity_Date.hxx".}
proc Hour*(this: var Quantity_Date): Standard_Integer {.importcpp: "Hour",
    header: "Quantity_Date.hxx".}
proc Minute*(this: var Quantity_Date): Standard_Integer {.importcpp: "Minute",
    header: "Quantity_Date.hxx".}
proc Second*(this: var Quantity_Date): Standard_Integer {.importcpp: "Second",
    header: "Quantity_Date.hxx".}
proc MilliSecond*(this: var Quantity_Date): Standard_Integer {.
    importcpp: "MilliSecond", header: "Quantity_Date.hxx".}
proc MicroSecond*(this: var Quantity_Date): Standard_Integer {.
    importcpp: "MicroSecond", header: "Quantity_Date.hxx".}
proc IsEqual*(this: Quantity_Date; anOther: Quantity_Date): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Quantity_Date.hxx".}
proc `==`*(this: Quantity_Date; anOther: Quantity_Date): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "Quantity_Date.hxx".}
proc IsEarlier*(this: Quantity_Date; anOther: Quantity_Date): Standard_Boolean {.
    noSideEffect, importcpp: "IsEarlier", header: "Quantity_Date.hxx".}
proc `<`*(this: Quantity_Date; anOther: Quantity_Date): Standard_Boolean {.
    noSideEffect, importcpp: "(# < #)", header: "Quantity_Date.hxx".}
proc IsLater*(this: Quantity_Date; anOther: Quantity_Date): Standard_Boolean {.
    noSideEffect, importcpp: "IsLater", header: "Quantity_Date.hxx".}
proc IsValid*(mm: Standard_Integer; dd: Standard_Integer; yy: Standard_Integer;
             hh: Standard_Integer; mn: Standard_Integer; ss: Standard_Integer;
             mis: Standard_Integer = 0; mics: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "Quantity_Date::IsValid(@)", header: "Quantity_Date.hxx".}
proc IsLeap*(yy: Standard_Integer): Standard_Boolean {.
    importcpp: "Quantity_Date::IsLeap(@)", header: "Quantity_Date.hxx".}