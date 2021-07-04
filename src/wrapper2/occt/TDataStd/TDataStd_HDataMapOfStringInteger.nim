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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_DataMapOfStringInteger, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

## ! Extension of TColStd_DataMapOfStringInteger class
## ! to be manipulated by handle.

type
  TDataStd_HDataMapOfStringInteger* {.importcpp: "TDataStd_HDataMapOfStringInteger", header: "TDataStd_HDataMapOfStringInteger.hxx",
                                     bycopy.} = object of Standard_Transient

  TDataStd_HDataMapOfStringIntegerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDataStd_HDataMapOfStringInteger::get_type_name(@)",
                              header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_HDataMapOfStringInteger::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc DynamicType*(this: TDataStd_HDataMapOfStringInteger): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc constructTDataStd_HDataMapOfStringInteger*(NbBuckets: Standard_Integer = 1): TDataStd_HDataMapOfStringInteger {.
    constructor, importcpp: "TDataStd_HDataMapOfStringInteger(@)",
    header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc constructTDataStd_HDataMapOfStringInteger*(
    theOther: TColStd_DataMapOfStringInteger): TDataStd_HDataMapOfStringInteger {.
    constructor, importcpp: "TDataStd_HDataMapOfStringInteger(@)",
    header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc Map*(this: TDataStd_HDataMapOfStringInteger): TColStd_DataMapOfStringInteger {.
    noSideEffect, importcpp: "Map", header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc ChangeMap*(this: var TDataStd_HDataMapOfStringInteger): var TColStd_DataMapOfStringInteger {.
    importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringInteger.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringInteger"
type
  Handle_TDataStd_HDataMapOfStringInteger* = handle[
      TDataStd_HDataMapOfStringInteger]
