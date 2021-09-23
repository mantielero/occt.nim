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
  ../Standard/Standard, ../Standard/Standard_Type, TDataStd_DataMapOfStringByte,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer

## ! Extension of TDataStd_DataMapOfStringByte class
## ! to be manipulated by handle.

type
  TDataStd_HDataMapOfStringByte* {.importcpp: "TDataStd_HDataMapOfStringByte",
                                  header: "TDataStd_HDataMapOfStringByte.hxx",
                                  bycopy.} = object of Standard_Transient

  TDataStd_HDataMapOfStringBytebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDataStd_HDataMapOfStringByte::get_type_name(@)",
                              header: "TDataStd_HDataMapOfStringByte.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_HDataMapOfStringByte::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringByte.hxx".}
proc DynamicType*(this: TDataStd_HDataMapOfStringByte): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDataStd_HDataMapOfStringByte.hxx".}
proc constructTDataStd_HDataMapOfStringByte*(NbBuckets: Standard_Integer = 1): TDataStd_HDataMapOfStringByte {.
    constructor, importcpp: "TDataStd_HDataMapOfStringByte(@)",
    header: "TDataStd_HDataMapOfStringByte.hxx".}
proc constructTDataStd_HDataMapOfStringByte*(
    theOther: TDataStd_DataMapOfStringByte): TDataStd_HDataMapOfStringByte {.
    constructor, importcpp: "TDataStd_HDataMapOfStringByte(@)",
    header: "TDataStd_HDataMapOfStringByte.hxx".}
proc Map*(this: TDataStd_HDataMapOfStringByte): TDataStd_DataMapOfStringByte {.
    noSideEffect, importcpp: "Map", header: "TDataStd_HDataMapOfStringByte.hxx".}
proc ChangeMap*(this: var TDataStd_HDataMapOfStringByte): var TDataStd_DataMapOfStringByte {.
    importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringByte.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringByte"
type
  Handle_TDataStd_HDataMapOfStringByte* = handle[TDataStd_HDataMapOfStringByte]
