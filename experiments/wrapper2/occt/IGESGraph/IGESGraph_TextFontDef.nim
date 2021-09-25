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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGraph_TextFontDef"
discard "forward decl of IGESGraph_TextFontDef"
type
  HandleIGESGraphTextFontDef* = Handle[IGESGraphTextFontDef]

## ! defines IGES Text Font Definition Entity, Type <310>
## ! in package IGESGraph
## !
## ! Used to define the appearance of characters in a text font.
## ! It may be used to describe a complete font or a
## ! modification to a subset of characters in another font.

type
  IGESGraphTextFontDef* {.importcpp: "IGESGraph_TextFontDef",
                         header: "IGESGraph_TextFontDef.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphTextFontDef*(): IGESGraphTextFontDef {.constructor,
    importcpp: "IGESGraph_TextFontDef(@)", header: "IGESGraph_TextFontDef.hxx".}
proc init*(this: var IGESGraphTextFontDef; aFontCode: int;
          aFontName: Handle[TCollectionHAsciiString]; aSupersededFont: int;
          aSupersededEntity: Handle[IGESGraphTextFontDef]; aScale: int;
          allASCIICodes: Handle[TColStdHArray1OfInteger];
          allNextCharX: Handle[TColStdHArray1OfInteger];
          allNextCharY: Handle[TColStdHArray1OfInteger];
          allPenMotions: Handle[TColStdHArray1OfInteger];
          allPenFlags: Handle[IGESBasicHArray1OfHArray1OfInteger];
          allMovePenToX: Handle[IGESBasicHArray1OfHArray1OfInteger];
          allMovePenToY: Handle[IGESBasicHArray1OfHArray1OfInteger]) {.
    importcpp: "Init", header: "IGESGraph_TextFontDef.hxx".}
proc fontCode*(this: IGESGraphTextFontDef): int {.noSideEffect,
    importcpp: "FontCode", header: "IGESGraph_TextFontDef.hxx".}
proc fontName*(this: IGESGraphTextFontDef): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FontName", header: "IGESGraph_TextFontDef.hxx".}
proc isSupersededFontEntity*(this: IGESGraphTextFontDef): bool {.noSideEffect,
    importcpp: "IsSupersededFontEntity", header: "IGESGraph_TextFontDef.hxx".}
proc supersededFontCode*(this: IGESGraphTextFontDef): int {.noSideEffect,
    importcpp: "SupersededFontCode", header: "IGESGraph_TextFontDef.hxx".}
proc supersededFontEntity*(this: IGESGraphTextFontDef): Handle[IGESGraphTextFontDef] {.
    noSideEffect, importcpp: "SupersededFontEntity",
    header: "IGESGraph_TextFontDef.hxx".}
proc scale*(this: IGESGraphTextFontDef): int {.noSideEffect, importcpp: "Scale",
    header: "IGESGraph_TextFontDef.hxx".}
proc nbCharacters*(this: IGESGraphTextFontDef): int {.noSideEffect,
    importcpp: "NbCharacters", header: "IGESGraph_TextFontDef.hxx".}
proc aSCIICode*(this: IGESGraphTextFontDef; chnum: int): int {.noSideEffect,
    importcpp: "ASCIICode", header: "IGESGraph_TextFontDef.hxx".}
proc nextCharOrigin*(this: IGESGraphTextFontDef; chnum: int; nx: var int; ny: var int) {.
    noSideEffect, importcpp: "NextCharOrigin", header: "IGESGraph_TextFontDef.hxx".}
proc nbPenMotions*(this: IGESGraphTextFontDef; chnum: int): int {.noSideEffect,
    importcpp: "NbPenMotions", header: "IGESGraph_TextFontDef.hxx".}
proc isPenUp*(this: IGESGraphTextFontDef; chnum: int; motionnum: int): bool {.
    noSideEffect, importcpp: "IsPenUp", header: "IGESGraph_TextFontDef.hxx".}
proc nextPenPosition*(this: IGESGraphTextFontDef; chnum: int; motionnum: int;
                     ix: var int; iy: var int) {.noSideEffect,
    importcpp: "NextPenPosition", header: "IGESGraph_TextFontDef.hxx".}
type
  IGESGraphTextFontDefbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_TextFontDef::get_type_name(@)",
                            header: "IGESGraph_TextFontDef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_TextFontDef::get_type_descriptor(@)",
    header: "IGESGraph_TextFontDef.hxx".}
proc dynamicType*(this: IGESGraphTextFontDef): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_TextFontDef.hxx".}
