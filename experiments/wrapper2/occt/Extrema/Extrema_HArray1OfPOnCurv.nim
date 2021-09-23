##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
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
  Extrema_POnCurv, Extrema_Array1OfPOnCurv,
  ../NCollection/NCollection_DefineHArray1

type
  Extrema_HArray1OfPOnCurv* {.importcpp: "Extrema_HArray1OfPOnCurv",
                             header: "Extrema_HArray1OfPOnCurv.hxx", bycopy.} = object of Extrema_Array1OfPOnCurv


proc constructExtrema_HArray1OfPOnCurv*(theLower: Standard_Integer;
                                       theUpper: Standard_Integer): Extrema_HArray1OfPOnCurv {.
    constructor, importcpp: "Extrema_HArray1OfPOnCurv(@)",
    header: "Extrema_HArray1OfPOnCurv.hxx".}
proc constructExtrema_HArray1OfPOnCurv*(theLower: Standard_Integer;
                                       theUpper: Standard_Integer;
                                       theValue: value_type): Extrema_HArray1OfPOnCurv {.
    constructor, importcpp: "Extrema_HArray1OfPOnCurv(@)",
    header: "Extrema_HArray1OfPOnCurv.hxx".}
proc constructExtrema_HArray1OfPOnCurv*(theOther: Extrema_Array1OfPOnCurv): Extrema_HArray1OfPOnCurv {.
    constructor, importcpp: "Extrema_HArray1OfPOnCurv(@)",
    header: "Extrema_HArray1OfPOnCurv.hxx".}
proc Array1*(this: Extrema_HArray1OfPOnCurv): Extrema_Array1OfPOnCurv {.
    noSideEffect, importcpp: "Array1", header: "Extrema_HArray1OfPOnCurv.hxx".}
proc ChangeArray1*(this: var Extrema_HArray1OfPOnCurv): var Extrema_Array1OfPOnCurv {.
    importcpp: "ChangeArray1", header: "Extrema_HArray1OfPOnCurv.hxx".}
type
  Extrema_HArray1OfPOnCurvbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Extrema_HArray1OfPOnCurv::get_type_name(@)",
                              header: "Extrema_HArray1OfPOnCurv.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Extrema_HArray1OfPOnCurv::get_type_descriptor(@)",
    header: "Extrema_HArray1OfPOnCurv.hxx".}
proc DynamicType*(this: Extrema_HArray1OfPOnCurv): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Extrema_HArray1OfPOnCurv.hxx".}