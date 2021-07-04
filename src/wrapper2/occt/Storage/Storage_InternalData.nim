##  Created on: 1997-02-06
##  Created by: Kernel
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

import
  ../Standard/Standard, ../Standard/Standard_Type, Storage_BucketOfPersistent,
  ../Standard/Standard_Integer, Storage_HPArray, Storage_MapOfCallBack,
  ../Standard/Standard_Transient

discard "forward decl of Storage_Schema"
discard "forward decl of Storage_InternalData"
discard "forward decl of Storage_InternalData"
type
  Handle_Storage_InternalData* = handle[Storage_InternalData]
  Storage_InternalData* {.importcpp: "Storage_InternalData",
                         header: "Storage_InternalData.hxx", bycopy.} = object of Standard_Transient


proc ReadArray*(this: var Storage_InternalData): handle[Storage_HPArray] {.
    importcpp: "ReadArray", header: "Storage_InternalData.hxx".}
proc constructStorage_InternalData*(): Storage_InternalData {.constructor,
    importcpp: "Storage_InternalData(@)", header: "Storage_InternalData.hxx".}
proc Clear*(this: var Storage_InternalData) {.importcpp: "Clear",
    header: "Storage_InternalData.hxx".}
type
  Storage_InternalDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_InternalData::get_type_name(@)",
                              header: "Storage_InternalData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_InternalData::get_type_descriptor(@)",
    header: "Storage_InternalData.hxx".}
proc DynamicType*(this: Storage_InternalData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_InternalData.hxx".}