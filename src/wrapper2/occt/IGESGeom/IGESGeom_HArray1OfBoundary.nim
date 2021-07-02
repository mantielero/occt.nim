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

type
  IGESGeomHArray1OfBoundary* {.importcpp: "IGESGeom_HArray1OfBoundary",
                              header: "IGESGeom_HArray1OfBoundary.hxx", bycopy.} = object of IGESGeomArray1OfBoundary


proc constructIGESGeomHArray1OfBoundary*(theLower: StandardInteger;
                                        theUpper: StandardInteger): IGESGeomHArray1OfBoundary {.
    constructor, importcpp: "IGESGeom_HArray1OfBoundary(@)",
    header: "IGESGeom_HArray1OfBoundary.hxx".}
proc constructIGESGeomHArray1OfBoundary*(theLower: StandardInteger;
                                        theUpper: StandardInteger;
                                        theValue: ValueType): IGESGeomHArray1OfBoundary {.
    constructor, importcpp: "IGESGeom_HArray1OfBoundary(@)",
    header: "IGESGeom_HArray1OfBoundary.hxx".}
proc constructIGESGeomHArray1OfBoundary*(theOther: IGESGeomArray1OfBoundary): IGESGeomHArray1OfBoundary {.
    constructor, importcpp: "IGESGeom_HArray1OfBoundary(@)",
    header: "IGESGeom_HArray1OfBoundary.hxx".}
proc array1*(this: IGESGeomHArray1OfBoundary): IGESGeomArray1OfBoundary {.
    noSideEffect, importcpp: "Array1", header: "IGESGeom_HArray1OfBoundary.hxx".}
proc changeArray1*(this: var IGESGeomHArray1OfBoundary): var IGESGeomArray1OfBoundary {.
    importcpp: "ChangeArray1", header: "IGESGeom_HArray1OfBoundary.hxx".}
type
  IGESGeomHArray1OfBoundarybaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESGeom_HArray1OfBoundary::get_type_name(@)",
                            header: "IGESGeom_HArray1OfBoundary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_HArray1OfBoundary::get_type_descriptor(@)",
    header: "IGESGeom_HArray1OfBoundary.hxx".}
proc dynamicType*(this: IGESGeomHArray1OfBoundary): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGeom_HArray1OfBoundary.hxx".}

