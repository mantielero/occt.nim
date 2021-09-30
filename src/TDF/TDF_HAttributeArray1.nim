##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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
  TDF_HAttributeArray1* {.importcpp: "TDF_HAttributeArray1",
                         header: "TDF_HAttributeArray1.hxx", bycopy.} = object of TDF_AttributeArray1


proc constructTDF_HAttributeArray1*(theLower: int; theUpper: int): TDF_HAttributeArray1 {.
    constructor, importcpp: "TDF_HAttributeArray1(@)",
    header: "TDF_HAttributeArray1.hxx".}
proc constructTDF_HAttributeArray1*(theLower: int; theUpper: int; theValue: ValueType): TDF_HAttributeArray1 {.
    constructor, importcpp: "TDF_HAttributeArray1(@)",
    header: "TDF_HAttributeArray1.hxx".}
proc constructTDF_HAttributeArray1*(theOther: TDF_AttributeArray1): TDF_HAttributeArray1 {.
    constructor, importcpp: "TDF_HAttributeArray1(@)",
    header: "TDF_HAttributeArray1.hxx".}
proc array1*(this: TDF_HAttributeArray1): TDF_AttributeArray1 {.noSideEffect,
    importcpp: "Array1", header: "TDF_HAttributeArray1.hxx".}
proc changeArray1*(this: var TDF_HAttributeArray1): var TDF_AttributeArray1 {.
    importcpp: "ChangeArray1", header: "TDF_HAttributeArray1.hxx".}
type
  TDF_HAttributeArray1baseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TDF_HAttributeArray1::get_type_name(@)",
                            header: "TDF_HAttributeArray1.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_HAttributeArray1::get_type_descriptor(@)",
    header: "TDF_HAttributeArray1.hxx".}
proc dynamicType*(this: TDF_HAttributeArray1): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_HAttributeArray1.hxx".}














































