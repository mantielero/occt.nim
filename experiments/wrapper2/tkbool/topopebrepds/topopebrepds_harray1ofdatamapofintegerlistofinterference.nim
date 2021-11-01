##  Created on: 1993-06-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

type
  TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference* {.
      importcpp: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference",
      header: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference.hxx",
      bycopy.} = object of TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference


proc newTopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference*(theLower: cint;
    theUpper: cint): TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference {.
    cdecl, constructor,
    importcpp: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference(@)",
    dynlib: tkbool.}
proc newTopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference*(theLower: cint;
    theUpper: cint; theValue: ValueType): TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference {.
    cdecl, constructor,
    importcpp: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference(@)",
    dynlib: tkbool.}
proc newTopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference*(
    theOther: TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference): TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference {.
    cdecl, constructor,
    importcpp: "TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference(@)",
    dynlib: tkbool.}
proc array1*(this: TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference): TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference {.
    noSideEffect, cdecl, importcpp: "Array1", dynlib: tkbool.}