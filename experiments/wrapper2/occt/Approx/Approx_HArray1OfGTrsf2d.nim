##  Created on: 1993-01-26
##  Created by: Laurent PAINNOT
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

import
  ../gp/gp_GTrsf2d, Approx_Array1OfGTrsf2d,
  ../NCollection/NCollection_DefineHArray1

type
  Approx_HArray1OfGTrsf2d* {.importcpp: "Approx_HArray1OfGTrsf2d",
                            header: "Approx_HArray1OfGTrsf2d.hxx", bycopy.} = object of Approx_Array1OfGTrsf2d


proc constructApprox_HArray1OfGTrsf2d*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): Approx_HArray1OfGTrsf2d {.
    constructor, importcpp: "Approx_HArray1OfGTrsf2d(@)",
    header: "Approx_HArray1OfGTrsf2d.hxx".}
proc constructApprox_HArray1OfGTrsf2d*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): Approx_HArray1OfGTrsf2d {.
    constructor, importcpp: "Approx_HArray1OfGTrsf2d(@)",
    header: "Approx_HArray1OfGTrsf2d.hxx".}
proc constructApprox_HArray1OfGTrsf2d*(theOther: Approx_Array1OfGTrsf2d): Approx_HArray1OfGTrsf2d {.
    constructor, importcpp: "Approx_HArray1OfGTrsf2d(@)",
    header: "Approx_HArray1OfGTrsf2d.hxx".}
proc Array1*(this: Approx_HArray1OfGTrsf2d): Approx_Array1OfGTrsf2d {.noSideEffect,
    importcpp: "Array1", header: "Approx_HArray1OfGTrsf2d.hxx".}
proc ChangeArray1*(this: var Approx_HArray1OfGTrsf2d): var Approx_Array1OfGTrsf2d {.
    importcpp: "ChangeArray1", header: "Approx_HArray1OfGTrsf2d.hxx".}
type
  Approx_HArray1OfGTrsf2dbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Approx_HArray1OfGTrsf2d::get_type_name(@)",
                              header: "Approx_HArray1OfGTrsf2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Approx_HArray1OfGTrsf2d::get_type_descriptor(@)",
    header: "Approx_HArray1OfGTrsf2d.hxx".}
proc DynamicType*(this: Approx_HArray1OfGTrsf2d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Approx_HArray1OfGTrsf2d.hxx".}