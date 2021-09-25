##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGraph_LineFontDefPattern"
discard "forward decl of IGESGraph_LineFontDefPattern"
type
  HandleIGESGraphLineFontDefPattern* = Handle[IGESGraphLineFontDefPattern]

## ! defines IGESLineFontDefPattern, Type <304> Form <2>
## ! in package IGESGraph
## !
## ! Line Font may be defined by repetition of a basic pattern
## ! of visible-blank(or, on-off) segments superimposed on
## ! a line or a curve. The line or curve is then displayed
## ! according to the basic pattern.

type
  IGESGraphLineFontDefPattern* {.importcpp: "IGESGraph_LineFontDefPattern",
                                header: "IGESGraph_LineFontDefPattern.hxx", bycopy.} = object of IGESDataLineFontEntity


proc constructIGESGraphLineFontDefPattern*(): IGESGraphLineFontDefPattern {.
    constructor, importcpp: "IGESGraph_LineFontDefPattern(@)",
    header: "IGESGraph_LineFontDefPattern.hxx".}
proc init*(this: var IGESGraphLineFontDefPattern;
          allSegLength: Handle[TColStdHArray1OfReal];
          aPattern: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESGraph_LineFontDefPattern.hxx".}
proc nbSegments*(this: IGESGraphLineFontDefPattern): int {.noSideEffect,
    importcpp: "NbSegments", header: "IGESGraph_LineFontDefPattern.hxx".}
proc length*(this: IGESGraphLineFontDefPattern; index: int): float {.noSideEffect,
    importcpp: "Length", header: "IGESGraph_LineFontDefPattern.hxx".}
proc displayPattern*(this: IGESGraphLineFontDefPattern): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "DisplayPattern",
                              header: "IGESGraph_LineFontDefPattern.hxx".}
proc isVisible*(this: IGESGraphLineFontDefPattern; index: int): bool {.noSideEffect,
    importcpp: "IsVisible", header: "IGESGraph_LineFontDefPattern.hxx".}
type
  IGESGraphLineFontDefPatternbaseType* = IGESDataLineFontEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_LineFontDefPattern::get_type_name(@)",
                            header: "IGESGraph_LineFontDefPattern.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_LineFontDefPattern::get_type_descriptor(@)",
    header: "IGESGraph_LineFontDefPattern.hxx".}
proc dynamicType*(this: IGESGraphLineFontDefPattern): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_LineFontDefPattern.hxx".}
