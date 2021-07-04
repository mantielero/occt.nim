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
  ../Standard/Standard, ../Standard/Standard_Type, TDataStd_DataMapOfStringReal,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer

## ! Extension of TDataStd_DataMapOfStringReal class
## ! to be manipulated by handle.

type
  TDataStd_HDataMapOfStringReal* {.importcpp: "TDataStd_HDataMapOfStringReal",
                                  header: "TDataStd_HDataMapOfStringReal.hxx",
                                  bycopy.} = object of Standard_Transient

  TDataStd_HDataMapOfStringRealbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDataStd_HDataMapOfStringReal::get_type_name(@)",
                              header: "TDataStd_HDataMapOfStringReal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_HDataMapOfStringReal::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc DynamicType*(this: TDataStd_HDataMapOfStringReal): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc constructTDataStd_HDataMapOfStringReal*(NbBuckets: Standard_Integer = 1): TDataStd_HDataMapOfStringReal {.
    constructor, importcpp: "TDataStd_HDataMapOfStringReal(@)",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc constructTDataStd_HDataMapOfStringReal*(
    theOther: TDataStd_DataMapOfStringReal): TDataStd_HDataMapOfStringReal {.
    constructor, importcpp: "TDataStd_HDataMapOfStringReal(@)",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc Map*(this: TDataStd_HDataMapOfStringReal): TDataStd_DataMapOfStringReal {.
    noSideEffect, importcpp: "Map", header: "TDataStd_HDataMapOfStringReal.hxx".}
proc ChangeMap*(this: var TDataStd_HDataMapOfStringReal): var TDataStd_DataMapOfStringReal {.
    importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringReal.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringReal"
type
  Handle_TDataStd_HDataMapOfStringReal* = handle[TDataStd_HDataMapOfStringReal]
