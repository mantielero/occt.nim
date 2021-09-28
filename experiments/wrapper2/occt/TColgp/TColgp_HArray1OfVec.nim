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
  TColgpHArray1OfVec* {.importcpp: "TColgp_HArray1OfVec",
                       header: "TColgp_HArray1OfVec.hxx", bycopy.} = object of TColgpArray1OfVec


proc constructTColgpHArray1OfVec*(theLower: int; theUpper: int): TColgpHArray1OfVec {.
    constructor, importcpp: "TColgp_HArray1OfVec(@)",
    header: "TColgp_HArray1OfVec.hxx".}
proc constructTColgpHArray1OfVec*(theLower: int; theUpper: int; theValue: ValueType): TColgpHArray1OfVec {.
    constructor, importcpp: "TColgp_HArray1OfVec(@)",
    header: "TColgp_HArray1OfVec.hxx".}
proc constructTColgpHArray1OfVec*(theOther: TColgpArray1OfVec): TColgpHArray1OfVec {.
    constructor, importcpp: "TColgp_HArray1OfVec(@)",
    header: "TColgp_HArray1OfVec.hxx".}
proc array1*(this: TColgpHArray1OfVec): TColgpArray1OfVec {.noSideEffect,
    importcpp: "Array1", header: "TColgp_HArray1OfVec.hxx".}
proc changeArray1*(this: var TColgpHArray1OfVec): var TColgpArray1OfVec {.
    importcpp: "ChangeArray1", header: "TColgp_HArray1OfVec.hxx".}
type
  TColgpHArray1OfVecbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfVec::get_type_name(@)",
                            header: "TColgp_HArray1OfVec.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfVec::get_type_descriptor(@)",
    header: "TColgp_HArray1OfVec.hxx".}
proc dynamicType*(this: TColgpHArray1OfVec): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TColgp_HArray1OfVec.hxx".}














































