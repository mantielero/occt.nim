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
  TDataStd_DataMapOfStringHArray1OfInteger, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

## ! Extension of TDataStd_DataMapOfStringHArray1OfInteger class
## ! to be manipulated by handle.

type
  TDataStd_HDataMapOfStringHArray1OfInteger* {.
      importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger",
      header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx", bycopy.} = object of Standard_Transient

  TDataStd_HDataMapOfStringHArray1OfIntegerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger::get_type_name(@)", header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc DynamicType*(this: TDataStd_HDataMapOfStringHArray1OfInteger): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc constructTDataStd_HDataMapOfStringHArray1OfInteger*(
    NbBuckets: Standard_Integer = 1): TDataStd_HDataMapOfStringHArray1OfInteger {.
    constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc constructTDataStd_HDataMapOfStringHArray1OfInteger*(
    theOther: TDataStd_DataMapOfStringHArray1OfInteger): TDataStd_HDataMapOfStringHArray1OfInteger {.
    constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc Map*(this: TDataStd_HDataMapOfStringHArray1OfInteger): TDataStd_DataMapOfStringHArray1OfInteger {.
    noSideEffect, importcpp: "Map",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc ChangeMap*(this: var TDataStd_HDataMapOfStringHArray1OfInteger): var TDataStd_DataMapOfStringHArray1OfInteger {.
    importcpp: "ChangeMap",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfInteger"
type
  Handle_TDataStd_HDataMapOfStringHArray1OfInteger* = handle[
      TDataStd_HDataMapOfStringHArray1OfInteger]
