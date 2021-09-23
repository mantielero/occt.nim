##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGraph_TextFontDef"
discard "forward decl of IGESGraph_TextFontDef"
type
  Handle_IGESGraph_TextFontDef* = handle[IGESGraph_TextFontDef]

## ! defines IGES Text Font Definition Entity, Type <310>
## ! in package IGESGraph
## !
## ! Used to define the appearance of characters in a text font.
## ! It may be used to describe a complete font or a
## ! modification to a subset of characters in another font.

type
  IGESGraph_TextFontDef* {.importcpp: "IGESGraph_TextFontDef",
                          header: "IGESGraph_TextFontDef.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_TextFontDef*(): IGESGraph_TextFontDef {.constructor,
    importcpp: "IGESGraph_TextFontDef(@)", header: "IGESGraph_TextFontDef.hxx".}
proc Init*(this: var IGESGraph_TextFontDef; aFontCode: Standard_Integer;
          aFontName: handle[TCollection_HAsciiString];
          aSupersededFont: Standard_Integer;
          aSupersededEntity: handle[IGESGraph_TextFontDef];
          aScale: Standard_Integer;
          allASCIICodes: handle[TColStd_HArray1OfInteger];
          allNextCharX: handle[TColStd_HArray1OfInteger];
          allNextCharY: handle[TColStd_HArray1OfInteger];
          allPenMotions: handle[TColStd_HArray1OfInteger];
          allPenFlags: handle[IGESBasic_HArray1OfHArray1OfInteger];
          allMovePenToX: handle[IGESBasic_HArray1OfHArray1OfInteger];
          allMovePenToY: handle[IGESBasic_HArray1OfHArray1OfInteger]) {.
    importcpp: "Init", header: "IGESGraph_TextFontDef.hxx".}
proc FontCode*(this: IGESGraph_TextFontDef): Standard_Integer {.noSideEffect,
    importcpp: "FontCode", header: "IGESGraph_TextFontDef.hxx".}
proc FontName*(this: IGESGraph_TextFontDef): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FontName", header: "IGESGraph_TextFontDef.hxx".}
proc IsSupersededFontEntity*(this: IGESGraph_TextFontDef): Standard_Boolean {.
    noSideEffect, importcpp: "IsSupersededFontEntity",
    header: "IGESGraph_TextFontDef.hxx".}
proc SupersededFontCode*(this: IGESGraph_TextFontDef): Standard_Integer {.
    noSideEffect, importcpp: "SupersededFontCode",
    header: "IGESGraph_TextFontDef.hxx".}
proc SupersededFontEntity*(this: IGESGraph_TextFontDef): handle[
    IGESGraph_TextFontDef] {.noSideEffect, importcpp: "SupersededFontEntity",
                            header: "IGESGraph_TextFontDef.hxx".}
proc Scale*(this: IGESGraph_TextFontDef): Standard_Integer {.noSideEffect,
    importcpp: "Scale", header: "IGESGraph_TextFontDef.hxx".}
proc NbCharacters*(this: IGESGraph_TextFontDef): Standard_Integer {.noSideEffect,
    importcpp: "NbCharacters", header: "IGESGraph_TextFontDef.hxx".}
proc ASCIICode*(this: IGESGraph_TextFontDef; Chnum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ASCIICode", header: "IGESGraph_TextFontDef.hxx".}
proc NextCharOrigin*(this: IGESGraph_TextFontDef; Chnum: Standard_Integer;
                    NX: var Standard_Integer; NY: var Standard_Integer) {.
    noSideEffect, importcpp: "NextCharOrigin", header: "IGESGraph_TextFontDef.hxx".}
proc NbPenMotions*(this: IGESGraph_TextFontDef; Chnum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbPenMotions", header: "IGESGraph_TextFontDef.hxx".}
proc IsPenUp*(this: IGESGraph_TextFontDef; Chnum: Standard_Integer;
             Motionnum: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsPenUp", header: "IGESGraph_TextFontDef.hxx".}
proc NextPenPosition*(this: IGESGraph_TextFontDef; Chnum: Standard_Integer;
                     Motionnum: Standard_Integer; IX: var Standard_Integer;
                     IY: var Standard_Integer) {.noSideEffect,
    importcpp: "NextPenPosition", header: "IGESGraph_TextFontDef.hxx".}
type
  IGESGraph_TextFontDefbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_TextFontDef::get_type_name(@)",
                              header: "IGESGraph_TextFontDef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_TextFontDef::get_type_descriptor(@)",
    header: "IGESGraph_TextFontDef.hxx".}
proc DynamicType*(this: IGESGraph_TextFontDef): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_TextFontDef.hxx".}