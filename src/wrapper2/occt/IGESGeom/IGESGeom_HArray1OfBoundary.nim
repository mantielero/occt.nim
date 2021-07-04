##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
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
  IGESGeom_Boundary, IGESGeom_Array1OfBoundary,
  ../NCollection/NCollection_DefineHArray1

type
  IGESGeom_HArray1OfBoundary* {.importcpp: "IGESGeom_HArray1OfBoundary",
                               header: "IGESGeom_HArray1OfBoundary.hxx", bycopy.} = object of IGESGeom_Array1OfBoundary


proc constructIGESGeom_HArray1OfBoundary*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESGeom_HArray1OfBoundary {.constructor,
    importcpp: "IGESGeom_HArray1OfBoundary(@)",
    header: "IGESGeom_HArray1OfBoundary.hxx".}
proc constructIGESGeom_HArray1OfBoundary*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESGeom_HArray1OfBoundary {.
    constructor, importcpp: "IGESGeom_HArray1OfBoundary(@)",
    header: "IGESGeom_HArray1OfBoundary.hxx".}
proc constructIGESGeom_HArray1OfBoundary*(theOther: IGESGeom_Array1OfBoundary): IGESGeom_HArray1OfBoundary {.
    constructor, importcpp: "IGESGeom_HArray1OfBoundary(@)",
    header: "IGESGeom_HArray1OfBoundary.hxx".}
proc Array1*(this: IGESGeom_HArray1OfBoundary): IGESGeom_Array1OfBoundary {.
    noSideEffect, importcpp: "Array1", header: "IGESGeom_HArray1OfBoundary.hxx".}
proc ChangeArray1*(this: var IGESGeom_HArray1OfBoundary): var IGESGeom_Array1OfBoundary {.
    importcpp: "ChangeArray1", header: "IGESGeom_HArray1OfBoundary.hxx".}
type
  IGESGeom_HArray1OfBoundarybase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESGeom_HArray1OfBoundary::get_type_name(@)",
                              header: "IGESGeom_HArray1OfBoundary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_HArray1OfBoundary::get_type_descriptor(@)",
    header: "IGESGeom_HArray1OfBoundary.hxx".}
proc DynamicType*(this: IGESGeom_HArray1OfBoundary): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGeom_HArray1OfBoundary.hxx".}