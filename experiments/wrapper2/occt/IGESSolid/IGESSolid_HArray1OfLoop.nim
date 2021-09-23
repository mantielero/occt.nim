##  Created on: 1993-01-11
##  Created by: SIVA
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
  IGESSolid_Loop, IGESSolid_Array1OfLoop, ../NCollection/NCollection_DefineHArray1

type
  IGESSolid_HArray1OfLoop* {.importcpp: "IGESSolid_HArray1OfLoop",
                            header: "IGESSolid_HArray1OfLoop.hxx", bycopy.} = object of IGESSolid_Array1OfLoop


proc constructIGESSolid_HArray1OfLoop*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): IGESSolid_HArray1OfLoop {.
    constructor, importcpp: "IGESSolid_HArray1OfLoop(@)",
    header: "IGESSolid_HArray1OfLoop.hxx".}
proc constructIGESSolid_HArray1OfLoop*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): IGESSolid_HArray1OfLoop {.
    constructor, importcpp: "IGESSolid_HArray1OfLoop(@)",
    header: "IGESSolid_HArray1OfLoop.hxx".}
proc constructIGESSolid_HArray1OfLoop*(theOther: IGESSolid_Array1OfLoop): IGESSolid_HArray1OfLoop {.
    constructor, importcpp: "IGESSolid_HArray1OfLoop(@)",
    header: "IGESSolid_HArray1OfLoop.hxx".}
proc Array1*(this: IGESSolid_HArray1OfLoop): IGESSolid_Array1OfLoop {.noSideEffect,
    importcpp: "Array1", header: "IGESSolid_HArray1OfLoop.hxx".}
proc ChangeArray1*(this: var IGESSolid_HArray1OfLoop): var IGESSolid_Array1OfLoop {.
    importcpp: "ChangeArray1", header: "IGESSolid_HArray1OfLoop.hxx".}
type
  IGESSolid_HArray1OfLoopbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESSolid_HArray1OfLoop::get_type_name(@)",
                              header: "IGESSolid_HArray1OfLoop.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_HArray1OfLoop::get_type_descriptor(@)",
    header: "IGESSolid_HArray1OfLoop.hxx".}
proc DynamicType*(this: IGESSolid_HArray1OfLoop): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_HArray1OfLoop.hxx".}