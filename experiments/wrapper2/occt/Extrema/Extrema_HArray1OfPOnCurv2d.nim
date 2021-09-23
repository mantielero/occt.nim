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
  Extrema_POnCurv2d, Extrema_Array1OfPOnCurv2d,
  ../NCollection/NCollection_DefineHArray1

type
  Extrema_HArray1OfPOnCurv2d* {.importcpp: "Extrema_HArray1OfPOnCurv2d",
                               header: "Extrema_HArray1OfPOnCurv2d.hxx", bycopy.} = object of Extrema_Array1OfPOnCurv2d


proc constructExtrema_HArray1OfPOnCurv2d*(theLower: Standard_Integer;
    theUpper: Standard_Integer): Extrema_HArray1OfPOnCurv2d {.constructor,
    importcpp: "Extrema_HArray1OfPOnCurv2d(@)",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc constructExtrema_HArray1OfPOnCurv2d*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): Extrema_HArray1OfPOnCurv2d {.
    constructor, importcpp: "Extrema_HArray1OfPOnCurv2d(@)",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc constructExtrema_HArray1OfPOnCurv2d*(theOther: Extrema_Array1OfPOnCurv2d): Extrema_HArray1OfPOnCurv2d {.
    constructor, importcpp: "Extrema_HArray1OfPOnCurv2d(@)",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc Array1*(this: Extrema_HArray1OfPOnCurv2d): Extrema_Array1OfPOnCurv2d {.
    noSideEffect, importcpp: "Array1", header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc ChangeArray1*(this: var Extrema_HArray1OfPOnCurv2d): var Extrema_Array1OfPOnCurv2d {.
    importcpp: "ChangeArray1", header: "Extrema_HArray1OfPOnCurv2d.hxx".}
type
  Extrema_HArray1OfPOnCurv2dbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Extrema_HArray1OfPOnCurv2d::get_type_name(@)",
                              header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Extrema_HArray1OfPOnCurv2d::get_type_descriptor(@)",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc DynamicType*(this: Extrema_HArray1OfPOnCurv2d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}