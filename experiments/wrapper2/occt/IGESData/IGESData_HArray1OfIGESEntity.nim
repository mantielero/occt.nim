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

import
  IGESData_IGESEntity, IGESData_Array1OfIGESEntity,
  ../NCollection/NCollection_DefineHArray1

type
  IGESData_HArray1OfIGESEntity* {.importcpp: "IGESData_HArray1OfIGESEntity",
                                 header: "IGESData_HArray1OfIGESEntity.hxx",
                                 bycopy.} = object of IGESData_Array1OfIGESEntity


proc constructIGESData_HArray1OfIGESEntity*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESData_HArray1OfIGESEntity {.constructor,
    importcpp: "IGESData_HArray1OfIGESEntity(@)",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
proc constructIGESData_HArray1OfIGESEntity*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESData_HArray1OfIGESEntity {.
    constructor, importcpp: "IGESData_HArray1OfIGESEntity(@)",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
proc constructIGESData_HArray1OfIGESEntity*(theOther: IGESData_Array1OfIGESEntity): IGESData_HArray1OfIGESEntity {.
    constructor, importcpp: "IGESData_HArray1OfIGESEntity(@)",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
proc Array1*(this: IGESData_HArray1OfIGESEntity): IGESData_Array1OfIGESEntity {.
    noSideEffect, importcpp: "Array1", header: "IGESData_HArray1OfIGESEntity.hxx".}
proc ChangeArray1*(this: var IGESData_HArray1OfIGESEntity): var IGESData_Array1OfIGESEntity {.
    importcpp: "ChangeArray1", header: "IGESData_HArray1OfIGESEntity.hxx".}
type
  IGESData_HArray1OfIGESEntitybase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESData_HArray1OfIGESEntity::get_type_name(@)",
                              header: "IGESData_HArray1OfIGESEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_HArray1OfIGESEntity::get_type_descriptor(@)",
    header: "IGESData_HArray1OfIGESEntity.hxx".}
proc DynamicType*(this: IGESData_HArray1OfIGESEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESData_HArray1OfIGESEntity.hxx".}