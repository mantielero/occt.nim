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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfReal, ../IGESData/IGESData_LineFontEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGraph_LineFontDefPattern"
discard "forward decl of IGESGraph_LineFontDefPattern"
type
  Handle_IGESGraph_LineFontDefPattern* = handle[IGESGraph_LineFontDefPattern]

## ! defines IGESLineFontDefPattern, Type <304> Form <2>
## ! in package IGESGraph
## !
## ! Line Font may be defined by repetition of a basic pattern
## ! of visible-blank(or, on-off) segments superimposed on
## ! a line or a curve. The line or curve is then displayed
## ! according to the basic pattern.

type
  IGESGraph_LineFontDefPattern* {.importcpp: "IGESGraph_LineFontDefPattern",
                                 header: "IGESGraph_LineFontDefPattern.hxx",
                                 bycopy.} = object of IGESData_LineFontEntity


proc constructIGESGraph_LineFontDefPattern*(): IGESGraph_LineFontDefPattern {.
    constructor, importcpp: "IGESGraph_LineFontDefPattern(@)",
    header: "IGESGraph_LineFontDefPattern.hxx".}
proc Init*(this: var IGESGraph_LineFontDefPattern;
          allSegLength: handle[TColStd_HArray1OfReal];
          aPattern: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESGraph_LineFontDefPattern.hxx".}
proc NbSegments*(this: IGESGraph_LineFontDefPattern): Standard_Integer {.
    noSideEffect, importcpp: "NbSegments",
    header: "IGESGraph_LineFontDefPattern.hxx".}
proc Length*(this: IGESGraph_LineFontDefPattern; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Length", header: "IGESGraph_LineFontDefPattern.hxx".}
proc DisplayPattern*(this: IGESGraph_LineFontDefPattern): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "DisplayPattern",
                               header: "IGESGraph_LineFontDefPattern.hxx".}
proc IsVisible*(this: IGESGraph_LineFontDefPattern; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsVisible",
    header: "IGESGraph_LineFontDefPattern.hxx".}
type
  IGESGraph_LineFontDefPatternbase_type* = IGESData_LineFontEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_LineFontDefPattern::get_type_name(@)",
                              header: "IGESGraph_LineFontDefPattern.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_LineFontDefPattern::get_type_descriptor(@)",
    header: "IGESGraph_LineFontDefPattern.hxx".}
proc DynamicType*(this: IGESGraph_LineFontDefPattern): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_LineFontDefPattern.hxx".}