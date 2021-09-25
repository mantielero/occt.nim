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

## ! Extension of TDataStd_DataMapOfStringHArray1OfInteger class
## ! to be manipulated by handle.

type
  TDataStdHDataMapOfStringHArray1OfInteger* {.
      importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger",
      header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx", bycopy.} = object of StandardTransient

  TDataStdHDataMapOfStringHArray1OfIntegerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger::get_type_name(@)", header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc dynamicType*(this: TDataStdHDataMapOfStringHArray1OfInteger): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc constructTDataStdHDataMapOfStringHArray1OfInteger*(nbBuckets: int = 1): TDataStdHDataMapOfStringHArray1OfInteger {.
    constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc constructTDataStdHDataMapOfStringHArray1OfInteger*(
    theOther: TDataStdDataMapOfStringHArray1OfInteger): TDataStdHDataMapOfStringHArray1OfInteger {.
    constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc map*(this: TDataStdHDataMapOfStringHArray1OfInteger): TDataStdDataMapOfStringHArray1OfInteger {.
    noSideEffect, importcpp: "Map",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc changeMap*(this: var TDataStdHDataMapOfStringHArray1OfInteger): var TDataStdDataMapOfStringHArray1OfInteger {.
    importcpp: "ChangeMap",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfInteger"
type
  HandleTDataStdHDataMapOfStringHArray1OfInteger* = Handle[
      TDataStdHDataMapOfStringHArray1OfInteger]

