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
  IGESAppliHArray1OfNode* {.importcpp: "IGESAppli_HArray1OfNode",
                           header: "IGESAppli_HArray1OfNode.hxx", bycopy.} = object of IGESAppliArray1OfNode


proc constructIGESAppliHArray1OfNode*(theLower: StandardInteger;
                                     theUpper: StandardInteger): IGESAppliHArray1OfNode {.
    constructor, importcpp: "IGESAppli_HArray1OfNode(@)",
    header: "IGESAppli_HArray1OfNode.hxx".}
proc constructIGESAppliHArray1OfNode*(theLower: StandardInteger;
                                     theUpper: StandardInteger;
                                     theValue: ValueType): IGESAppliHArray1OfNode {.
    constructor, importcpp: "IGESAppli_HArray1OfNode(@)",
    header: "IGESAppli_HArray1OfNode.hxx".}
proc constructIGESAppliHArray1OfNode*(theOther: IGESAppliArray1OfNode): IGESAppliHArray1OfNode {.
    constructor, importcpp: "IGESAppli_HArray1OfNode(@)",
    header: "IGESAppli_HArray1OfNode.hxx".}
proc array1*(this: IGESAppliHArray1OfNode): IGESAppliArray1OfNode {.noSideEffect,
    importcpp: "Array1", header: "IGESAppli_HArray1OfNode.hxx".}
proc changeArray1*(this: var IGESAppliHArray1OfNode): var IGESAppliArray1OfNode {.
    importcpp: "ChangeArray1", header: "IGESAppli_HArray1OfNode.hxx".}
type
  IGESAppliHArray1OfNodebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESAppli_HArray1OfNode::get_type_name(@)",
                            header: "IGESAppli_HArray1OfNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_HArray1OfNode::get_type_descriptor(@)",
    header: "IGESAppli_HArray1OfNode.hxx".}
proc dynamicType*(this: IGESAppliHArray1OfNode): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_HArray1OfNode.hxx".}

