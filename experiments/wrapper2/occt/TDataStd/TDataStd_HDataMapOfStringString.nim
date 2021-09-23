##  Created on: 2007-08-17
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, TDataStd_DataMapOfStringString,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer

## ! Extension of TDataStd_DataMapOfStringString class
## ! to be manipulated by handle.

type
  TDataStd_HDataMapOfStringString* {.importcpp: "TDataStd_HDataMapOfStringString", header: "TDataStd_HDataMapOfStringString.hxx",
                                    bycopy.} = object of Standard_Transient

  TDataStd_HDataMapOfStringStringbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDataStd_HDataMapOfStringString::get_type_name(@)",
                              header: "TDataStd_HDataMapOfStringString.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_HDataMapOfStringString::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringString.hxx".}
proc DynamicType*(this: TDataStd_HDataMapOfStringString): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDataStd_HDataMapOfStringString.hxx".}
proc constructTDataStd_HDataMapOfStringString*(NbBuckets: Standard_Integer = 1): TDataStd_HDataMapOfStringString {.
    constructor, importcpp: "TDataStd_HDataMapOfStringString(@)",
    header: "TDataStd_HDataMapOfStringString.hxx".}
proc constructTDataStd_HDataMapOfStringString*(
    theOther: TDataStd_DataMapOfStringString): TDataStd_HDataMapOfStringString {.
    constructor, importcpp: "TDataStd_HDataMapOfStringString(@)",
    header: "TDataStd_HDataMapOfStringString.hxx".}
proc Map*(this: TDataStd_HDataMapOfStringString): TDataStd_DataMapOfStringString {.
    noSideEffect, importcpp: "Map", header: "TDataStd_HDataMapOfStringString.hxx".}
proc ChangeMap*(this: var TDataStd_HDataMapOfStringString): var TDataStd_DataMapOfStringString {.
    importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringString.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringString"
type
  Handle_TDataStd_HDataMapOfStringString* = handle[TDataStd_HDataMapOfStringString]
