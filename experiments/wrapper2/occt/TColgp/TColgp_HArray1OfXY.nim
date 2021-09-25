##  Created on: 1993-03-10
##  Created by: Philippe DAUTRY
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

type
  TColgpHArray1OfXY* {.importcpp: "TColgp_HArray1OfXY",
                      header: "TColgp_HArray1OfXY.hxx", bycopy.} = object of TColgpArray1OfXY


proc constructTColgpHArray1OfXY*(theLower: int; theUpper: int): TColgpHArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: "TColgp_HArray1OfXY.hxx".}
proc constructTColgpHArray1OfXY*(theLower: int; theUpper: int; theValue: ValueType): TColgpHArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: "TColgp_HArray1OfXY.hxx".}
proc constructTColgpHArray1OfXY*(theOther: TColgpArray1OfXY): TColgpHArray1OfXY {.
    constructor, importcpp: "TColgp_HArray1OfXY(@)",
    header: "TColgp_HArray1OfXY.hxx".}
proc array1*(this: TColgpHArray1OfXY): TColgpArray1OfXY {.noSideEffect,
    importcpp: "Array1", header: "TColgp_HArray1OfXY.hxx".}
proc changeArray1*(this: var TColgpHArray1OfXY): var TColgpArray1OfXY {.
    importcpp: "ChangeArray1", header: "TColgp_HArray1OfXY.hxx".}
type
  TColgpHArray1OfXYbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfXY::get_type_name(@)",
                            header: "TColgp_HArray1OfXY.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfXY::get_type_descriptor(@)",
    header: "TColgp_HArray1OfXY.hxx".}
proc dynamicType*(this: TColgpHArray1OfXY): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TColgp_HArray1OfXY.hxx".}
