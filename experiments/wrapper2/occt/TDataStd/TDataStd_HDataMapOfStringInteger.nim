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

## ! Extension of TColStd_DataMapOfStringInteger class
## ! to be manipulated by handle.

type
  TDataStdHDataMapOfStringInteger* {.importcpp: "TDataStd_HDataMapOfStringInteger", header: "TDataStd_HDataMapOfStringInteger.hxx",
                                    bycopy.} = object of StandardTransient

  TDataStdHDataMapOfStringIntegerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDataStd_HDataMapOfStringInteger::get_type_name(@)",
                            header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_HDataMapOfStringInteger::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc dynamicType*(this: TDataStdHDataMapOfStringInteger): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc constructTDataStdHDataMapOfStringInteger*(nbBuckets: int = 1): TDataStdHDataMapOfStringInteger {.
    constructor, importcpp: "TDataStd_HDataMapOfStringInteger(@)",
    header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc constructTDataStdHDataMapOfStringInteger*(
    theOther: TColStdDataMapOfStringInteger): TDataStdHDataMapOfStringInteger {.
    constructor, importcpp: "TDataStd_HDataMapOfStringInteger(@)",
    header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc map*(this: TDataStdHDataMapOfStringInteger): TColStdDataMapOfStringInteger {.
    noSideEffect, importcpp: "Map", header: "TDataStd_HDataMapOfStringInteger.hxx".}
proc changeMap*(this: var TDataStdHDataMapOfStringInteger): var TColStdDataMapOfStringInteger {.
    importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringInteger.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringInteger"
type
  HandleTDataStdHDataMapOfStringInteger* = Handle[TDataStdHDataMapOfStringInteger]

