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
  IGESAppli_Flow, IGESAppli_Array1OfFlow, ../NCollection/NCollection_DefineHArray1

type
  IGESAppli_HArray1OfFlow* {.importcpp: "IGESAppli_HArray1OfFlow",
                            header: "IGESAppli_HArray1OfFlow.hxx", bycopy.} = object of IGESAppli_Array1OfFlow


proc constructIGESAppli_HArray1OfFlow*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): IGESAppli_HArray1OfFlow {.
    constructor, importcpp: "IGESAppli_HArray1OfFlow(@)",
    header: "IGESAppli_HArray1OfFlow.hxx".}
proc constructIGESAppli_HArray1OfFlow*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): IGESAppli_HArray1OfFlow {.
    constructor, importcpp: "IGESAppli_HArray1OfFlow(@)",
    header: "IGESAppli_HArray1OfFlow.hxx".}
proc constructIGESAppli_HArray1OfFlow*(theOther: IGESAppli_Array1OfFlow): IGESAppli_HArray1OfFlow {.
    constructor, importcpp: "IGESAppli_HArray1OfFlow(@)",
    header: "IGESAppli_HArray1OfFlow.hxx".}
proc Array1*(this: IGESAppli_HArray1OfFlow): IGESAppli_Array1OfFlow {.noSideEffect,
    importcpp: "Array1", header: "IGESAppli_HArray1OfFlow.hxx".}
proc ChangeArray1*(this: var IGESAppli_HArray1OfFlow): var IGESAppli_Array1OfFlow {.
    importcpp: "ChangeArray1", header: "IGESAppli_HArray1OfFlow.hxx".}
type
  IGESAppli_HArray1OfFlowbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESAppli_HArray1OfFlow::get_type_name(@)",
                              header: "IGESAppli_HArray1OfFlow.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_HArray1OfFlow::get_type_descriptor(@)",
    header: "IGESAppli_HArray1OfFlow.hxx".}
proc DynamicType*(this: IGESAppli_HArray1OfFlow): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_HArray1OfFlow.hxx".}