##  Created on: 1993-01-14
##  Created by: Remi LEQUETTE
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
  TopToolsHArray1OfListOfShape* {.importcpp: "TopTools_HArray1OfListOfShape",
                                 header: "TopTools_HArray1OfListOfShape.hxx",
                                 bycopy.} = object of TopToolsArray1OfListOfShape


proc constructTopToolsHArray1OfListOfShape*(theLower: int; theUpper: int): TopToolsHArray1OfListOfShape {.
    constructor, importcpp: "TopTools_HArray1OfListOfShape(@)",
    header: "TopTools_HArray1OfListOfShape.hxx".}
proc constructTopToolsHArray1OfListOfShape*(theLower: int; theUpper: int;
    theValue: ValueType): TopToolsHArray1OfListOfShape {.constructor,
    importcpp: "TopTools_HArray1OfListOfShape(@)",
    header: "TopTools_HArray1OfListOfShape.hxx".}
proc constructTopToolsHArray1OfListOfShape*(theOther: TopToolsArray1OfListOfShape): TopToolsHArray1OfListOfShape {.
    constructor, importcpp: "TopTools_HArray1OfListOfShape(@)",
    header: "TopTools_HArray1OfListOfShape.hxx".}
proc array1*(this: TopToolsHArray1OfListOfShape): TopToolsArray1OfListOfShape {.
    noSideEffect, importcpp: "Array1", header: "TopTools_HArray1OfListOfShape.hxx".}
proc changeArray1*(this: var TopToolsHArray1OfListOfShape): var TopToolsArray1OfListOfShape {.
    importcpp: "ChangeArray1", header: "TopTools_HArray1OfListOfShape.hxx".}
type
  TopToolsHArray1OfListOfShapebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TopTools_HArray1OfListOfShape::get_type_name(@)",
                            header: "TopTools_HArray1OfListOfShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopTools_HArray1OfListOfShape::get_type_descriptor(@)",
    header: "TopTools_HArray1OfListOfShape.hxx".}
proc dynamicType*(this: TopToolsHArray1OfListOfShape): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopTools_HArray1OfListOfShape.hxx".}
