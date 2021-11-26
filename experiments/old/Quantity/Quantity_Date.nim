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

discard "forward decl of Quantity_DateDefinitionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Quantity_Period"
type
  QuantityDate* {.importcpp: "Quantity_Date", header: "Quantity_Date.hxx", bycopy.} = object ##
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


proc constructQuantityDate*(): QuantityDate {.constructor,
    importcpp: "Quantity_Date(@)", header: "Quantity_Date.hxx".}
proc constructQuantityDate*(mm: cint; dd: cint; yyyy: cint; hh: cint; mn: cint; ss: cint;
                           mis: cint = 0; mics: cint = 0): QuantityDate {.constructor,
    importcpp: "Quantity_Date(@)", header: "Quantity_Date.hxx".}
proc values*(this: QuantityDate; mm: var cint; dd: var cint; yy: var cint; hh: var cint;
            mn: var cint; ss: var cint; mis: var cint; mics: var cint) {.noSideEffect,
    importcpp: "Values", header: "Quantity_Date.hxx".}
proc setValues*(this: var QuantityDate; mm: cint; dd: cint; yy: cint; hh: cint; mn: cint;
               ss: cint; mis: cint = 0; mics: cint = 0) {.importcpp: "SetValues",
    header: "Quantity_Date.hxx".}
proc difference*(this: var QuantityDate; anOther: QuantityDate): QuantityPeriod {.
    importcpp: "Difference", header: "Quantity_Date.hxx".}
proc subtract*(this: var QuantityDate; aPeriod: QuantityPeriod): QuantityDate {.
    importcpp: "Subtract", header: "Quantity_Date.hxx".}
proc `-`*(this: var QuantityDate; aPeriod: QuantityPeriod): QuantityDate {.
    importcpp: "(# - #)", header: "Quantity_Date.hxx".}
proc add*(this: var QuantityDate; aPeriod: QuantityPeriod): QuantityDate {.
    importcpp: "Add", header: "Quantity_Date.hxx".}
proc `+`*(this: var QuantityDate; aPeriod: QuantityPeriod): QuantityDate {.
    importcpp: "(# + #)", header: "Quantity_Date.hxx".}
proc year*(this: var QuantityDate): cint {.importcpp: "Year",
                                      header: "Quantity_Date.hxx".}
proc month*(this: var QuantityDate): cint {.importcpp: "Month",
                                       header: "Quantity_Date.hxx".}
proc day*(this: var QuantityDate): cint {.importcpp: "Day", header: "Quantity_Date.hxx".}
proc hour*(this: var QuantityDate): cint {.importcpp: "Hour",
                                      header: "Quantity_Date.hxx".}
proc minute*(this: var QuantityDate): cint {.importcpp: "Minute",
                                        header: "Quantity_Date.hxx".}
proc second*(this: var QuantityDate): cint {.importcpp: "Second",
                                        header: "Quantity_Date.hxx".}
proc milliSecond*(this: var QuantityDate): cint {.importcpp: "MilliSecond",
    header: "Quantity_Date.hxx".}
proc microSecond*(this: var QuantityDate): cint {.importcpp: "MicroSecond",
    header: "Quantity_Date.hxx".}
proc isEqual*(this: QuantityDate; anOther: QuantityDate): bool {.noSideEffect,
    importcpp: "IsEqual", header: "Quantity_Date.hxx".}
proc `==`*(this: QuantityDate; anOther: QuantityDate): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Quantity_Date.hxx".}
proc isEarlier*(this: QuantityDate; anOther: QuantityDate): bool {.noSideEffect,
    importcpp: "IsEarlier", header: "Quantity_Date.hxx".}
proc `<`*(this: QuantityDate; anOther: QuantityDate): bool {.noSideEffect,
    importcpp: "(# < #)", header: "Quantity_Date.hxx".}
proc isLater*(this: QuantityDate; anOther: QuantityDate): bool {.noSideEffect,
    importcpp: "IsLater", header: "Quantity_Date.hxx".}
proc isValid*(mm: cint; dd: cint; yy: cint; hh: cint; mn: cint; ss: cint; mis: cint = 0;
             mics: cint = 0): bool {.importcpp: "Quantity_Date::IsValid(@)",
                                header: "Quantity_Date.hxx".}
proc isLeap*(yy: cint): bool {.importcpp: "Quantity_Date::IsLeap(@)",
                           header: "Quantity_Date.hxx".}

























