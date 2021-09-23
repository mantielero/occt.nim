##  Created on: 1995-03-06
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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
  Poly_Triangle, Poly_Array1OfTriangle, ../NCollection/NCollection_DefineHArray1

type
  Poly_HArray1OfTriangle* {.importcpp: "Poly_HArray1OfTriangle",
                           header: "Poly_HArray1OfTriangle.hxx", bycopy.} = object of Poly_Array1OfTriangle


proc constructPoly_HArray1OfTriangle*(theLower: Standard_Integer;
                                     theUpper: Standard_Integer): Poly_HArray1OfTriangle {.
    constructor, importcpp: "Poly_HArray1OfTriangle(@)",
    header: "Poly_HArray1OfTriangle.hxx".}
proc constructPoly_HArray1OfTriangle*(theLower: Standard_Integer;
                                     theUpper: Standard_Integer;
                                     theValue: value_type): Poly_HArray1OfTriangle {.
    constructor, importcpp: "Poly_HArray1OfTriangle(@)",
    header: "Poly_HArray1OfTriangle.hxx".}
proc constructPoly_HArray1OfTriangle*(theOther: Poly_Array1OfTriangle): Poly_HArray1OfTriangle {.
    constructor, importcpp: "Poly_HArray1OfTriangle(@)",
    header: "Poly_HArray1OfTriangle.hxx".}
proc Array1*(this: Poly_HArray1OfTriangle): Poly_Array1OfTriangle {.noSideEffect,
    importcpp: "Array1", header: "Poly_HArray1OfTriangle.hxx".}
proc ChangeArray1*(this: var Poly_HArray1OfTriangle): var Poly_Array1OfTriangle {.
    importcpp: "ChangeArray1", header: "Poly_HArray1OfTriangle.hxx".}
type
  Poly_HArray1OfTrianglebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Poly_HArray1OfTriangle::get_type_name(@)",
                              header: "Poly_HArray1OfTriangle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Poly_HArray1OfTriangle::get_type_descriptor(@)",
    header: "Poly_HArray1OfTriangle.hxx".}
proc DynamicType*(this: Poly_HArray1OfTriangle): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Poly_HArray1OfTriangle.hxx".}