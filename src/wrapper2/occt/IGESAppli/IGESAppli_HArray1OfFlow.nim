##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen (Anand NATRAJAN)
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
  IGESAppliHArray1OfFlow* {.importcpp: "IGESAppli_HArray1OfFlow",
                           header: "IGESAppli_HArray1OfFlow.hxx", bycopy.} = object of IGESAppliArray1OfFlow


proc constructIGESAppliHArray1OfFlow*(theLower: StandardInteger;
                                     theUpper: StandardInteger): IGESAppliHArray1OfFlow {.
    constructor, importcpp: "IGESAppli_HArray1OfFlow(@)",
    header: "IGESAppli_HArray1OfFlow.hxx".}
proc constructIGESAppliHArray1OfFlow*(theLower: StandardInteger;
                                     theUpper: StandardInteger;
                                     theValue: ValueType): IGESAppliHArray1OfFlow {.
    constructor, importcpp: "IGESAppli_HArray1OfFlow(@)",
    header: "IGESAppli_HArray1OfFlow.hxx".}
proc constructIGESAppliHArray1OfFlow*(theOther: IGESAppliArray1OfFlow): IGESAppliHArray1OfFlow {.
    constructor, importcpp: "IGESAppli_HArray1OfFlow(@)",
    header: "IGESAppli_HArray1OfFlow.hxx".}
proc array1*(this: IGESAppliHArray1OfFlow): IGESAppliArray1OfFlow {.noSideEffect,
    importcpp: "Array1", header: "IGESAppli_HArray1OfFlow.hxx".}
proc changeArray1*(this: var IGESAppliHArray1OfFlow): var IGESAppliArray1OfFlow {.
    importcpp: "ChangeArray1", header: "IGESAppli_HArray1OfFlow.hxx".}
type
  IGESAppliHArray1OfFlowbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESAppli_HArray1OfFlow::get_type_name(@)",
                            header: "IGESAppli_HArray1OfFlow.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_HArray1OfFlow::get_type_descriptor(@)",
    header: "IGESAppli_HArray1OfFlow.hxx".}
proc dynamicType*(this: IGESAppliHArray1OfFlow): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_HArray1OfFlow.hxx".}

