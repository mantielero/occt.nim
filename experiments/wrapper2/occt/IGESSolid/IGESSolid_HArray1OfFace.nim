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
  IGESSolid_Face, IGESSolid_Array1OfFace, ../NCollection/NCollection_DefineHArray1

type
  IGESSolid_HArray1OfFace* {.importcpp: "IGESSolid_HArray1OfFace",
                            header: "IGESSolid_HArray1OfFace.hxx", bycopy.} = object of IGESSolid_Array1OfFace


proc constructIGESSolid_HArray1OfFace*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): IGESSolid_HArray1OfFace {.
    constructor, importcpp: "IGESSolid_HArray1OfFace(@)",
    header: "IGESSolid_HArray1OfFace.hxx".}
proc constructIGESSolid_HArray1OfFace*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): IGESSolid_HArray1OfFace {.
    constructor, importcpp: "IGESSolid_HArray1OfFace(@)",
    header: "IGESSolid_HArray1OfFace.hxx".}
proc constructIGESSolid_HArray1OfFace*(theOther: IGESSolid_Array1OfFace): IGESSolid_HArray1OfFace {.
    constructor, importcpp: "IGESSolid_HArray1OfFace(@)",
    header: "IGESSolid_HArray1OfFace.hxx".}
proc Array1*(this: IGESSolid_HArray1OfFace): IGESSolid_Array1OfFace {.noSideEffect,
    importcpp: "Array1", header: "IGESSolid_HArray1OfFace.hxx".}
proc ChangeArray1*(this: var IGESSolid_HArray1OfFace): var IGESSolid_Array1OfFace {.
    importcpp: "ChangeArray1", header: "IGESSolid_HArray1OfFace.hxx".}
type
  IGESSolid_HArray1OfFacebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESSolid_HArray1OfFace::get_type_name(@)",
                              header: "IGESSolid_HArray1OfFace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_HArray1OfFace::get_type_descriptor(@)",
    header: "IGESSolid_HArray1OfFace.hxx".}
proc DynamicType*(this: IGESSolid_HArray1OfFace): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_HArray1OfFace.hxx".}