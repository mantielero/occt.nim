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

## ! Extension of TDataStd_DataMapOfStringReal class
## ! to be manipulated by handle.

type
  TDataStdHDataMapOfStringReal* {.importcpp: "TDataStd_HDataMapOfStringReal",
                                 header: "TDataStd_HDataMapOfStringReal.hxx",
                                 bycopy.} = object of StandardTransient

  TDataStdHDataMapOfStringRealbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDataStd_HDataMapOfStringReal::get_type_name(@)",
                            header: "TDataStd_HDataMapOfStringReal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_HDataMapOfStringReal::get_type_descriptor(@)",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc dynamicType*(this: TDataStdHDataMapOfStringReal): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc constructTDataStdHDataMapOfStringReal*(nbBuckets: cint = 1): TDataStdHDataMapOfStringReal {.
    constructor, importcpp: "TDataStd_HDataMapOfStringReal(@)",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc constructTDataStdHDataMapOfStringReal*(theOther: TDataStdDataMapOfStringReal): TDataStdHDataMapOfStringReal {.
    constructor, importcpp: "TDataStd_HDataMapOfStringReal(@)",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc map*(this: TDataStdHDataMapOfStringReal): TDataStdDataMapOfStringReal {.
    noSideEffect, importcpp: "Map", header: "TDataStd_HDataMapOfStringReal.hxx".}
proc changeMap*(this: var TDataStdHDataMapOfStringReal): var TDataStdDataMapOfStringReal {.
    importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringReal.hxx".}
discard "forward decl of TDataStd_HDataMapOfStringReal"
type
  HandleC1C1* = Handle[TDataStdHDataMapOfStringReal]


























