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

## ! Extension of TDataStd_DataMapOfStringReal class
## ! to be manipulated by handle.



proc newTDataStdHDataMapOfStringReal*(nbBuckets: cint = 1): TDataStdHDataMapOfStringReal {.
    cdecl, constructor, importcpp: "TDataStd_HDataMapOfStringReal(@)",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc newTDataStdHDataMapOfStringReal*(theOther: TDataStdDataMapOfStringReal): TDataStdHDataMapOfStringReal {.
    cdecl, constructor, importcpp: "TDataStd_HDataMapOfStringReal(@)",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc map*(this: TDataStdHDataMapOfStringReal): TDataStdDataMapOfStringReal {.
    noSideEffect, cdecl, importcpp: "Map",
    header: "TDataStd_HDataMapOfStringReal.hxx".}
proc changeMap*(this: var TDataStdHDataMapOfStringReal): var TDataStdDataMapOfStringReal {.
    cdecl, importcpp: "ChangeMap", header: "TDataStd_HDataMapOfStringReal.hxx".}


