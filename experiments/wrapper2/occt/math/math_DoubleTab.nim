##  Created on: 1992-02-07
##  Created by: Laurent PAINNOT
##  Copyright (c) 1992-1999 Matra Datavision
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

type
  MathDoubleTab* {.importcpp: "math_DoubleTab", header: "math_DoubleTab.hxx", bycopy.} = object


proc constructMathDoubleTab*(lowerRow: int; upperRow: int; lowerCol: int; upperCol: int): MathDoubleTab {.
    constructor, importcpp: "math_DoubleTab(@)", header: "math_DoubleTab.hxx".}
proc constructMathDoubleTab*(tab: StandardAddress; lowerRow: int; upperRow: int;
                            lowerCol: int; upperCol: int): MathDoubleTab {.
    constructor, importcpp: "math_DoubleTab(@)", header: "math_DoubleTab.hxx".}
proc init*(this: var MathDoubleTab; initValue: float) {.importcpp: "Init",
    header: "math_DoubleTab.hxx".}
proc constructMathDoubleTab*(other: MathDoubleTab): MathDoubleTab {.constructor,
    importcpp: "math_DoubleTab(@)", header: "math_DoubleTab.hxx".}
proc copy*(this: MathDoubleTab; other: var MathDoubleTab) {.noSideEffect,
    importcpp: "Copy", header: "math_DoubleTab.hxx".}
proc setLowerRow*(this: var MathDoubleTab; lowerRow: int) {.importcpp: "SetLowerRow",
    header: "math_DoubleTab.hxx".}
proc setLowerCol*(this: var MathDoubleTab; lowerCol: int) {.importcpp: "SetLowerCol",
    header: "math_DoubleTab.hxx".}
proc value*(this: MathDoubleTab; rowIndex: int; colIndex: int): var float {.noSideEffect,
    importcpp: "Value", header: "math_DoubleTab.hxx".}
proc `()`*(this: MathDoubleTab; rowIndex: int; colIndex: int): var float {.noSideEffect,
    importcpp: "#(@)", header: "math_DoubleTab.hxx".}
proc free*(this: var MathDoubleTab) {.importcpp: "Free", header: "math_DoubleTab.hxx".}
proc destroyMathDoubleTab*(this: var MathDoubleTab) {.
    importcpp: "#.~math_DoubleTab()", header: "math_DoubleTab.hxx".}
