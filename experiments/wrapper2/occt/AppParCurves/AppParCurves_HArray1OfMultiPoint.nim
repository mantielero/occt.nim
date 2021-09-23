##  Created on: 1991-04-11
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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

import
  AppParCurves_MultiPoint, AppParCurves_Array1OfMultiPoint,
  ../NCollection/NCollection_DefineHArray1

type
  AppParCurves_HArray1OfMultiPoint* {.importcpp: "AppParCurves_HArray1OfMultiPoint", header: "AppParCurves_HArray1OfMultiPoint.hxx",
                                     bycopy.} = object of AppParCurves_Array1OfMultiPoint


proc constructAppParCurves_HArray1OfMultiPoint*(theLower: Standard_Integer;
    theUpper: Standard_Integer): AppParCurves_HArray1OfMultiPoint {.constructor,
    importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc constructAppParCurves_HArray1OfMultiPoint*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): AppParCurves_HArray1OfMultiPoint {.
    constructor, importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc constructAppParCurves_HArray1OfMultiPoint*(
    theOther: AppParCurves_Array1OfMultiPoint): AppParCurves_HArray1OfMultiPoint {.
    constructor, importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc Array1*(this: AppParCurves_HArray1OfMultiPoint): AppParCurves_Array1OfMultiPoint {.
    noSideEffect, importcpp: "Array1",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc ChangeArray1*(this: var AppParCurves_HArray1OfMultiPoint): var AppParCurves_Array1OfMultiPoint {.
    importcpp: "ChangeArray1", header: "AppParCurves_HArray1OfMultiPoint.hxx".}
type
  AppParCurves_HArray1OfMultiPointbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "AppParCurves_HArray1OfMultiPoint::get_type_name(@)",
                              header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AppParCurves_HArray1OfMultiPoint::get_type_descriptor(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc DynamicType*(this: AppParCurves_HArray1OfMultiPoint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}