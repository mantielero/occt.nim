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

## ! Extension of TDataStd_DataMapOfStringHArray1OfReal class
## ! to be manipulated by handle.

type
  TDataStdHDataMapOfStringHArray1OfReal* {.
      importcpp: "TDataStd_HDataMapOfStringHArray1OfReal",
      header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx", bycopy.} = object of StandardTransient


proc newTDataStdHDataMapOfStringHArray1OfReal*(nbBuckets: cint = 1): TDataStdHDataMapOfStringHArray1OfReal {.
    cdecl, constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfReal(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc newTDataStdHDataMapOfStringHArray1OfReal*(
    theOther: TDataStdDataMapOfStringHArray1OfReal): TDataStdHDataMapOfStringHArray1OfReal {.
    cdecl, constructor, importcpp: "TDataStd_HDataMapOfStringHArray1OfReal(@)",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc map*(this: TDataStdHDataMapOfStringHArray1OfReal): TDataStdDataMapOfStringHArray1OfReal {.
    noSideEffect, cdecl, importcpp: "Map",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
proc changeMap*(this: var TDataStdHDataMapOfStringHArray1OfReal): var TDataStdDataMapOfStringHArray1OfReal {.
    cdecl, importcpp: "ChangeMap",
    header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx".}
type
  HandleTDataStdHDataMapOfStringHArray1OfReal* = Handle[
      TDataStdHDataMapOfStringHArray1OfReal]
