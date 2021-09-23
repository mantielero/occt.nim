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
  AppParCurves_ConstraintCouple, AppParCurves_Array1OfConstraintCouple,
  ../NCollection/NCollection_DefineHArray1

type
  AppParCurves_HArray1OfConstraintCouple* {.
      importcpp: "AppParCurves_HArray1OfConstraintCouple",
      header: "AppParCurves_HArray1OfConstraintCouple.hxx", bycopy.} = object of AppParCurves_Array1OfConstraintCouple


proc constructAppParCurves_HArray1OfConstraintCouple*(theLower: Standard_Integer;
    theUpper: Standard_Integer): AppParCurves_HArray1OfConstraintCouple {.
    constructor, importcpp: "AppParCurves_HArray1OfConstraintCouple(@)",
    header: "AppParCurves_HArray1OfConstraintCouple.hxx".}
proc constructAppParCurves_HArray1OfConstraintCouple*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): AppParCurves_HArray1OfConstraintCouple {.
    constructor, importcpp: "AppParCurves_HArray1OfConstraintCouple(@)",
    header: "AppParCurves_HArray1OfConstraintCouple.hxx".}
proc constructAppParCurves_HArray1OfConstraintCouple*(
    theOther: AppParCurves_Array1OfConstraintCouple): AppParCurves_HArray1OfConstraintCouple {.
    constructor, importcpp: "AppParCurves_HArray1OfConstraintCouple(@)",
    header: "AppParCurves_HArray1OfConstraintCouple.hxx".}
proc Array1*(this: AppParCurves_HArray1OfConstraintCouple): AppParCurves_Array1OfConstraintCouple {.
    noSideEffect, importcpp: "Array1",
    header: "AppParCurves_HArray1OfConstraintCouple.hxx".}
proc ChangeArray1*(this: var AppParCurves_HArray1OfConstraintCouple): var AppParCurves_Array1OfConstraintCouple {.
    importcpp: "ChangeArray1",
    header: "AppParCurves_HArray1OfConstraintCouple.hxx".}
type
  AppParCurves_HArray1OfConstraintCouplebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "AppParCurves_HArray1OfConstraintCouple::get_type_name(@)", header: "AppParCurves_HArray1OfConstraintCouple.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "AppParCurves_HArray1OfConstraintCouple::get_type_descriptor(@)",
    header: "AppParCurves_HArray1OfConstraintCouple.hxx".}
proc DynamicType*(this: AppParCurves_HArray1OfConstraintCouple): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "AppParCurves_HArray1OfConstraintCouple.hxx".}