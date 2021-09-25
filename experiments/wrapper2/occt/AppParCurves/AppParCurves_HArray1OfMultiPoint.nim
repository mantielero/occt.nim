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

type
  AppParCurvesHArray1OfMultiPoint* {.importcpp: "AppParCurves_HArray1OfMultiPoint", header: "AppParCurves_HArray1OfMultiPoint.hxx",
                                    bycopy.} = object of AppParCurvesArray1OfMultiPoint


proc constructAppParCurvesHArray1OfMultiPoint*(theLower: int; theUpper: int): AppParCurvesHArray1OfMultiPoint {.
    constructor, importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc constructAppParCurvesHArray1OfMultiPoint*(theLower: int; theUpper: int;
    theValue: ValueType): AppParCurvesHArray1OfMultiPoint {.constructor,
    importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc constructAppParCurvesHArray1OfMultiPoint*(
    theOther: AppParCurvesArray1OfMultiPoint): AppParCurvesHArray1OfMultiPoint {.
    constructor, importcpp: "AppParCurves_HArray1OfMultiPoint(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc array1*(this: AppParCurvesHArray1OfMultiPoint): AppParCurvesArray1OfMultiPoint {.
    noSideEffect, importcpp: "Array1",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc changeArray1*(this: var AppParCurvesHArray1OfMultiPoint): var AppParCurvesArray1OfMultiPoint {.
    importcpp: "ChangeArray1", header: "AppParCurves_HArray1OfMultiPoint.hxx".}
type
  AppParCurvesHArray1OfMultiPointbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "AppParCurves_HArray1OfMultiPoint::get_type_name(@)",
                            header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AppParCurves_HArray1OfMultiPoint::get_type_descriptor(@)",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
proc dynamicType*(this: AppParCurvesHArray1OfMultiPoint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "AppParCurves_HArray1OfMultiPoint.hxx".}
