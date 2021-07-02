##  Created on: 1991-12-02
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
  AppDefHArray1OfMultiPointConstraint* {.importcpp: "AppDef_HArray1OfMultiPointConstraint", header: "AppDef_HArray1OfMultiPointConstraint.hxx",
                                        bycopy.} = object of AppDefArray1OfMultiPointConstraint


proc constructAppDefHArray1OfMultiPointConstraint*(theLower: StandardInteger;
    theUpper: StandardInteger): AppDefHArray1OfMultiPointConstraint {.constructor,
    importcpp: "AppDef_HArray1OfMultiPointConstraint(@)",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc constructAppDefHArray1OfMultiPointConstraint*(theLower: StandardInteger;
    theUpper: StandardInteger; theValue: ValueType): AppDefHArray1OfMultiPointConstraint {.
    constructor, importcpp: "AppDef_HArray1OfMultiPointConstraint(@)",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc constructAppDefHArray1OfMultiPointConstraint*(
    theOther: AppDefArray1OfMultiPointConstraint): AppDefHArray1OfMultiPointConstraint {.
    constructor, importcpp: "AppDef_HArray1OfMultiPointConstraint(@)",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc array1*(this: AppDefHArray1OfMultiPointConstraint): AppDefArray1OfMultiPointConstraint {.
    noSideEffect, importcpp: "Array1",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc changeArray1*(this: var AppDefHArray1OfMultiPointConstraint): var AppDefArray1OfMultiPointConstraint {.
    importcpp: "ChangeArray1", header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
type
  AppDefHArray1OfMultiPointConstraintbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "AppDef_HArray1OfMultiPointConstraint::get_type_name(@)",
                            header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AppDef_HArray1OfMultiPointConstraint::get_type_descriptor(@)",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc dynamicType*(this: AppDefHArray1OfMultiPointConstraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}

