##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen (TCD)
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
  IGESGraph_TextFontDef, IGESGraph_Array1OfTextFontDef,
  ../NCollection/NCollection_DefineHArray1

type
  IGESGraph_HArray1OfTextFontDef* {.importcpp: "IGESGraph_HArray1OfTextFontDef", header: "IGESGraph_HArray1OfTextFontDef.hxx",
                                   bycopy.} = object of IGESGraph_Array1OfTextFontDef


proc constructIGESGraph_HArray1OfTextFontDef*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESGraph_HArray1OfTextFontDef {.constructor,
    importcpp: "IGESGraph_HArray1OfTextFontDef(@)",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc constructIGESGraph_HArray1OfTextFontDef*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESGraph_HArray1OfTextFontDef {.
    constructor, importcpp: "IGESGraph_HArray1OfTextFontDef(@)",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc constructIGESGraph_HArray1OfTextFontDef*(
    theOther: IGESGraph_Array1OfTextFontDef): IGESGraph_HArray1OfTextFontDef {.
    constructor, importcpp: "IGESGraph_HArray1OfTextFontDef(@)",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc Array1*(this: IGESGraph_HArray1OfTextFontDef): IGESGraph_Array1OfTextFontDef {.
    noSideEffect, importcpp: "Array1", header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc ChangeArray1*(this: var IGESGraph_HArray1OfTextFontDef): var IGESGraph_Array1OfTextFontDef {.
    importcpp: "ChangeArray1", header: "IGESGraph_HArray1OfTextFontDef.hxx".}
type
  IGESGraph_HArray1OfTextFontDefbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESGraph_HArray1OfTextFontDef::get_type_name(@)",
                              header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_HArray1OfTextFontDef::get_type_descriptor(@)",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc DynamicType*(this: IGESGraph_HArray1OfTextFontDef): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}