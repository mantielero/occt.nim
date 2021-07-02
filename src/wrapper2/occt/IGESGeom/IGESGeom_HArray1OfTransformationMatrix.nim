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
  IGESGeomHArray1OfTransformationMatrix* {.
      importcpp: "IGESGeom_HArray1OfTransformationMatrix",
      header: "IGESGeom_HArray1OfTransformationMatrix.hxx", bycopy.} = object of IGESGeomArray1OfTransformationMatrix


proc constructIGESGeomHArray1OfTransformationMatrix*(theLower: StandardInteger;
    theUpper: StandardInteger): IGESGeomHArray1OfTransformationMatrix {.
    constructor, importcpp: "IGESGeom_HArray1OfTransformationMatrix(@)",
    header: "IGESGeom_HArray1OfTransformationMatrix.hxx".}
proc constructIGESGeomHArray1OfTransformationMatrix*(theLower: StandardInteger;
    theUpper: StandardInteger; theValue: ValueType): IGESGeomHArray1OfTransformationMatrix {.
    constructor, importcpp: "IGESGeom_HArray1OfTransformationMatrix(@)",
    header: "IGESGeom_HArray1OfTransformationMatrix.hxx".}
proc constructIGESGeomHArray1OfTransformationMatrix*(
    theOther: IGESGeomArray1OfTransformationMatrix): IGESGeomHArray1OfTransformationMatrix {.
    constructor, importcpp: "IGESGeom_HArray1OfTransformationMatrix(@)",
    header: "IGESGeom_HArray1OfTransformationMatrix.hxx".}
proc array1*(this: IGESGeomHArray1OfTransformationMatrix): IGESGeomArray1OfTransformationMatrix {.
    noSideEffect, importcpp: "Array1",
    header: "IGESGeom_HArray1OfTransformationMatrix.hxx".}
proc changeArray1*(this: var IGESGeomHArray1OfTransformationMatrix): var IGESGeomArray1OfTransformationMatrix {.
    importcpp: "ChangeArray1",
    header: "IGESGeom_HArray1OfTransformationMatrix.hxx".}
type
  IGESGeomHArray1OfTransformationMatrixbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESGeom_HArray1OfTransformationMatrix::get_type_name(@)", header: "IGESGeom_HArray1OfTransformationMatrix.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "IGESGeom_HArray1OfTransformationMatrix::get_type_descriptor(@)",
    header: "IGESGeom_HArray1OfTransformationMatrix.hxx".}
proc dynamicType*(this: IGESGeomHArray1OfTransformationMatrix): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGeom_HArray1OfTransformationMatrix.hxx".}

