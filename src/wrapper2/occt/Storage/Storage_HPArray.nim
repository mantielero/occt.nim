##  Created on: 1996-04-30
##  Created by: cle
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Persistent, Storage_PArray,
  ../NCollection/NCollection_DefineHArray1

type
  Storage_HPArray* {.importcpp: "Storage_HPArray", header: "Storage_HPArray.hxx",
                    bycopy.} = object of Storage_PArray


proc constructStorage_HPArray*(theLower: Standard_Integer;
                              theUpper: Standard_Integer): Storage_HPArray {.
    constructor, importcpp: "Storage_HPArray(@)", header: "Storage_HPArray.hxx".}
proc constructStorage_HPArray*(theLower: Standard_Integer;
                              theUpper: Standard_Integer; theValue: value_type): Storage_HPArray {.
    constructor, importcpp: "Storage_HPArray(@)", header: "Storage_HPArray.hxx".}
proc constructStorage_HPArray*(theOther: Storage_PArray): Storage_HPArray {.
    constructor, importcpp: "Storage_HPArray(@)", header: "Storage_HPArray.hxx".}
proc Array1*(this: Storage_HPArray): Storage_PArray {.noSideEffect,
    importcpp: "Array1", header: "Storage_HPArray.hxx".}
proc ChangeArray1*(this: var Storage_HPArray): var Storage_PArray {.
    importcpp: "ChangeArray1", header: "Storage_HPArray.hxx".}
type
  Storage_HPArraybase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Storage_HPArray::get_type_name(@)",
                              header: "Storage_HPArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_HPArray::get_type_descriptor(@)",
    header: "Storage_HPArray.hxx".}
proc DynamicType*(this: Storage_HPArray): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_HPArray.hxx".}