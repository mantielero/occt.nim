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
  Storage_CallBack, Storage_ArrayOfCallBack,
  ../NCollection/NCollection_DefineHArray1

type
  Storage_HArrayOfCallBack* {.importcpp: "Storage_HArrayOfCallBack",
                             header: "Storage_HArrayOfCallBack.hxx", bycopy.} = object of Storage_ArrayOfCallBack


proc constructStorage_HArrayOfCallBack*(theLower: Standard_Integer;
                                       theUpper: Standard_Integer): Storage_HArrayOfCallBack {.
    constructor, importcpp: "Storage_HArrayOfCallBack(@)",
    header: "Storage_HArrayOfCallBack.hxx".}
proc constructStorage_HArrayOfCallBack*(theLower: Standard_Integer;
                                       theUpper: Standard_Integer;
                                       theValue: value_type): Storage_HArrayOfCallBack {.
    constructor, importcpp: "Storage_HArrayOfCallBack(@)",
    header: "Storage_HArrayOfCallBack.hxx".}
proc constructStorage_HArrayOfCallBack*(theOther: Storage_ArrayOfCallBack): Storage_HArrayOfCallBack {.
    constructor, importcpp: "Storage_HArrayOfCallBack(@)",
    header: "Storage_HArrayOfCallBack.hxx".}
proc Array1*(this: Storage_HArrayOfCallBack): Storage_ArrayOfCallBack {.
    noSideEffect, importcpp: "Array1", header: "Storage_HArrayOfCallBack.hxx".}
proc ChangeArray1*(this: var Storage_HArrayOfCallBack): var Storage_ArrayOfCallBack {.
    importcpp: "ChangeArray1", header: "Storage_HArrayOfCallBack.hxx".}
type
  Storage_HArrayOfCallBackbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Storage_HArrayOfCallBack::get_type_name(@)",
                              header: "Storage_HArrayOfCallBack.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_HArrayOfCallBack::get_type_descriptor(@)",
    header: "Storage_HArrayOfCallBack.hxx".}
proc DynamicType*(this: Storage_HArrayOfCallBack): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Storage_HArrayOfCallBack.hxx".}