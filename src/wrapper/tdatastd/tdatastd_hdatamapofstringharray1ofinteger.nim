import tdatastd_types



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



proc newTDataStdHDataMapOfStringHArray1OfInteger*(nbBuckets: cint = 1): TDataStdHDataMapOfStringHArray1OfInteger {.
    cdecl, constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc newTDataStdHDataMapOfStringHArray1OfInteger*(
    theOther: TDataStdDataMapOfStringHArray1OfInteger): TDataStdHDataMapOfStringHArray1OfInteger {.
    cdecl, constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc map*(this: TDataStdHDataMapOfStringHArray1OfInteger): TDataStdDataMapOfStringHArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "Map",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}
proc changeMap*(this: var TDataStdHDataMapOfStringHArray1OfInteger): var TDataStdDataMapOfStringHArray1OfInteger {.
    cdecl, importcpp: "ChangeMap",
    header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx".}


