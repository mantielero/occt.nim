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

import
  IGESAppli_Node, IGESAppli_Array1OfNode, ../NCollection/NCollection_DefineHArray1

type
  IGESAppli_HArray1OfNode* {.importcpp: "IGESAppli_HArray1OfNode",
                            header: "IGESAppli_HArray1OfNode.hxx", bycopy.} = object of IGESAppli_Array1OfNode


proc constructIGESAppli_HArray1OfNode*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): IGESAppli_HArray1OfNode {.
    constructor, importcpp: "IGESAppli_HArray1OfNode(@)",
    header: "IGESAppli_HArray1OfNode.hxx".}
proc constructIGESAppli_HArray1OfNode*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): IGESAppli_HArray1OfNode {.
    constructor, importcpp: "IGESAppli_HArray1OfNode(@)",
    header: "IGESAppli_HArray1OfNode.hxx".}
proc constructIGESAppli_HArray1OfNode*(theOther: IGESAppli_Array1OfNode): IGESAppli_HArray1OfNode {.
    constructor, importcpp: "IGESAppli_HArray1OfNode(@)",
    header: "IGESAppli_HArray1OfNode.hxx".}
proc Array1*(this: IGESAppli_HArray1OfNode): IGESAppli_Array1OfNode {.noSideEffect,
    importcpp: "Array1", header: "IGESAppli_HArray1OfNode.hxx".}
proc ChangeArray1*(this: var IGESAppli_HArray1OfNode): var IGESAppli_Array1OfNode {.
    importcpp: "ChangeArray1", header: "IGESAppli_HArray1OfNode.hxx".}
type
  IGESAppli_HArray1OfNodebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESAppli_HArray1OfNode::get_type_name(@)",
                              header: "IGESAppli_HArray1OfNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_HArray1OfNode::get_type_descriptor(@)",
    header: "IGESAppli_HArray1OfNode.hxx".}
proc DynamicType*(this: IGESAppli_HArray1OfNode): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_HArray1OfNode.hxx".}