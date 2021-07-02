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

type
  IGESGraphHArray1OfTextFontDef* {.importcpp: "IGESGraph_HArray1OfTextFontDef",
                                  header: "IGESGraph_HArray1OfTextFontDef.hxx",
                                  bycopy.} = object of IGESGraphArray1OfTextFontDef


proc constructIGESGraphHArray1OfTextFontDef*(theLower: StandardInteger;
    theUpper: StandardInteger): IGESGraphHArray1OfTextFontDef {.constructor,
    importcpp: "IGESGraph_HArray1OfTextFontDef(@)",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc constructIGESGraphHArray1OfTextFontDef*(theLower: StandardInteger;
    theUpper: StandardInteger; theValue: ValueType): IGESGraphHArray1OfTextFontDef {.
    constructor, importcpp: "IGESGraph_HArray1OfTextFontDef(@)",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc constructIGESGraphHArray1OfTextFontDef*(
    theOther: IGESGraphArray1OfTextFontDef): IGESGraphHArray1OfTextFontDef {.
    constructor, importcpp: "IGESGraph_HArray1OfTextFontDef(@)",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc array1*(this: IGESGraphHArray1OfTextFontDef): IGESGraphArray1OfTextFontDef {.
    noSideEffect, importcpp: "Array1", header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc changeArray1*(this: var IGESGraphHArray1OfTextFontDef): var IGESGraphArray1OfTextFontDef {.
    importcpp: "ChangeArray1", header: "IGESGraph_HArray1OfTextFontDef.hxx".}
type
  IGESGraphHArray1OfTextFontDefbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESGraph_HArray1OfTextFontDef::get_type_name(@)",
                            header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_HArray1OfTextFontDef::get_type_descriptor(@)",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}
proc dynamicType*(this: IGESGraphHArray1OfTextFontDef): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_HArray1OfTextFontDef.hxx".}

