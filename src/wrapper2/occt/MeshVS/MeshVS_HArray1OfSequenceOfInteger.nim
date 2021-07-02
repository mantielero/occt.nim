##  Created on: 2003-10-10
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  MeshVS_HArray1OfSequenceOfInteger* {.importcpp: "MeshVS_HArray1OfSequenceOfInteger", header: "MeshVS_HArray1OfSequenceOfInteger.hxx",
                                      bycopy.} = object of MeshVS_Array1OfSequenceOfInteger


proc constructMeshVS_HArray1OfSequenceOfInteger*(theLower: StandardInteger;
    theUpper: StandardInteger): MeshVS_HArray1OfSequenceOfInteger {.constructor,
    importcpp: "MeshVS_HArray1OfSequenceOfInteger(@)",
    header: "MeshVS_HArray1OfSequenceOfInteger.hxx".}
proc constructMeshVS_HArray1OfSequenceOfInteger*(theLower: StandardInteger;
    theUpper: StandardInteger; theValue: ValueType): MeshVS_HArray1OfSequenceOfInteger {.
    constructor, importcpp: "MeshVS_HArray1OfSequenceOfInteger(@)",
    header: "MeshVS_HArray1OfSequenceOfInteger.hxx".}
proc constructMeshVS_HArray1OfSequenceOfInteger*(
    theOther: MeshVS_Array1OfSequenceOfInteger): MeshVS_HArray1OfSequenceOfInteger {.
    constructor, importcpp: "MeshVS_HArray1OfSequenceOfInteger(@)",
    header: "MeshVS_HArray1OfSequenceOfInteger.hxx".}
proc array1*(this: MeshVS_HArray1OfSequenceOfInteger): MeshVS_Array1OfSequenceOfInteger {.
    noSideEffect, importcpp: "Array1",
    header: "MeshVS_HArray1OfSequenceOfInteger.hxx".}
proc changeArray1*(this: var MeshVS_HArray1OfSequenceOfInteger): var MeshVS_Array1OfSequenceOfInteger {.
    importcpp: "ChangeArray1", header: "MeshVS_HArray1OfSequenceOfInteger.hxx".}
type
  MeshVS_HArray1OfSequenceOfIntegerbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "MeshVS_HArray1OfSequenceOfInteger::get_type_name(@)",
                            header: "MeshVS_HArray1OfSequenceOfInteger.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_HArray1OfSequenceOfInteger::get_type_descriptor(@)",
    header: "MeshVS_HArray1OfSequenceOfInteger.hxx".}
proc dynamicType*(this: MeshVS_HArray1OfSequenceOfInteger): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_HArray1OfSequenceOfInteger.hxx".}

