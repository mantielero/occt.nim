##  Created on: 1992-04-06
##  Created by: Christian CAILLET
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
  IGESDataHArray1OfIGESEntity* {.importcpp: "IGESData_HArray1OfIGESEntity",
                                header: "IGESData_HArray1OfIGESEntity.hxx", bycopy.} = object of IGESDataArray1OfIGESEntity


proc constructIGESDataHArray1OfIGESEntity*(theLower: int; theUpper: int): IGESDataHArray1OfIGESEntity {.
    constructor, importcpp: "IGESData_HArray1OfIGESEntity(@)",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
proc constructIGESDataHArray1OfIGESEntity*(theLower: int; theUpper: int;
    theValue: ValueType): IGESDataHArray1OfIGESEntity {.constructor,
    importcpp: "IGESData_HArray1OfIGESEntity(@)",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
proc constructIGESDataHArray1OfIGESEntity*(theOther: IGESDataArray1OfIGESEntity): IGESDataHArray1OfIGESEntity {.
    constructor, importcpp: "IGESData_HArray1OfIGESEntity(@)",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
proc array1*(this: IGESDataHArray1OfIGESEntity): IGESDataArray1OfIGESEntity {.
    noSideEffect, importcpp: "Array1", header: "IGESData_HArray1OfIGESEntity.hxx".}
proc changeArray1*(this: var IGESDataHArray1OfIGESEntity): var IGESDataArray1OfIGESEntity {.
    importcpp: "ChangeArray1", header: "IGESData_HArray1OfIGESEntity.hxx".}
type
  IGESDataHArray1OfIGESEntitybaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESData_HArray1OfIGESEntity::get_type_name(@)",
                            header: "IGESData_HArray1OfIGESEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_HArray1OfIGESEntity::get_type_descriptor(@)",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
proc dynamicType*(this: IGESDataHArray1OfIGESEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
