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

import
  AppDef_MultiPointConstraint, AppDef_Array1OfMultiPointConstraint,
  ../NCollection/NCollection_DefineHArray1

type
  AppDef_HArray1OfMultiPointConstraint* {.
      importcpp: "AppDef_HArray1OfMultiPointConstraint",
      header: "AppDef_HArray1OfMultiPointConstraint.hxx", bycopy.} = object of AppDef_Array1OfMultiPointConstraint


proc constructAppDef_HArray1OfMultiPointConstraint*(theLower: Standard_Integer;
    theUpper: Standard_Integer): AppDef_HArray1OfMultiPointConstraint {.
    constructor, importcpp: "AppDef_HArray1OfMultiPointConstraint(@)",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc constructAppDef_HArray1OfMultiPointConstraint*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): AppDef_HArray1OfMultiPointConstraint {.
    constructor, importcpp: "AppDef_HArray1OfMultiPointConstraint(@)",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc constructAppDef_HArray1OfMultiPointConstraint*(
    theOther: AppDef_Array1OfMultiPointConstraint): AppDef_HArray1OfMultiPointConstraint {.
    constructor, importcpp: "AppDef_HArray1OfMultiPointConstraint(@)",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc Array1*(this: AppDef_HArray1OfMultiPointConstraint): AppDef_Array1OfMultiPointConstraint {.
    noSideEffect, importcpp: "Array1",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc ChangeArray1*(this: var AppDef_HArray1OfMultiPointConstraint): var AppDef_Array1OfMultiPointConstraint {.
    importcpp: "ChangeArray1", header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
type
  AppDef_HArray1OfMultiPointConstraintbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "AppDef_HArray1OfMultiPointConstraint::get_type_name(@)", header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AppDef_HArray1OfMultiPointConstraint::get_type_descriptor(@)",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}
proc DynamicType*(this: AppDef_HArray1OfMultiPointConstraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "AppDef_HArray1OfMultiPointConstraint.hxx".}