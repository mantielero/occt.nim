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
  AppParCurvesHArray1OfMultiBSpCurve* {.importcpp: "AppParCurves_HArray1OfMultiBSpCurve", header: "AppParCurves_HArray1OfMultiBSpCurve.hxx",
                                       bycopy.} = object of AppParCurvesArray1OfMultiBSpCurve


proc constructAppParCurvesHArray1OfMultiBSpCurve*(theLower: int; theUpper: int): AppParCurvesHArray1OfMultiBSpCurve {.
    constructor, importcpp: "AppParCurves_HArray1OfMultiBSpCurve(@)",
    header: "AppParCurves_HArray1OfMultiBSpCurve.hxx".}
proc constructAppParCurvesHArray1OfMultiBSpCurve*(theLower: int; theUpper: int;
    theValue: ValueType): AppParCurvesHArray1OfMultiBSpCurve {.constructor,
    importcpp: "AppParCurves_HArray1OfMultiBSpCurve(@)",
    header: "AppParCurves_HArray1OfMultiBSpCurve.hxx".}
proc constructAppParCurvesHArray1OfMultiBSpCurve*(
    theOther: AppParCurvesArray1OfMultiBSpCurve): AppParCurvesHArray1OfMultiBSpCurve {.
    constructor, importcpp: "AppParCurves_HArray1OfMultiBSpCurve(@)",
    header: "AppParCurves_HArray1OfMultiBSpCurve.hxx".}
proc array1*(this: AppParCurvesHArray1OfMultiBSpCurve): AppParCurvesArray1OfMultiBSpCurve {.
    noSideEffect, importcpp: "Array1",
    header: "AppParCurves_HArray1OfMultiBSpCurve.hxx".}
proc changeArray1*(this: var AppParCurvesHArray1OfMultiBSpCurve): var AppParCurvesArray1OfMultiBSpCurve {.
    importcpp: "ChangeArray1", header: "AppParCurves_HArray1OfMultiBSpCurve.hxx".}
type
  AppParCurvesHArray1OfMultiBSpCurvebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "AppParCurves_HArray1OfMultiBSpCurve::get_type_name(@)",
                            header: "AppParCurves_HArray1OfMultiBSpCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AppParCurves_HArray1OfMultiBSpCurve::get_type_descriptor(@)",
    header: "AppParCurves_HArray1OfMultiBSpCurve.hxx".}
proc dynamicType*(this: AppParCurvesHArray1OfMultiBSpCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "AppParCurves_HArray1OfMultiBSpCurve.hxx".}
