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
  TopToolsHArray1OfShape* {.importcpp: "TopTools_HArray1OfShape",
                           header: "TopTools_HArray1OfShape.hxx", bycopy.} = object of TopToolsArray1OfShape


proc constructTopToolsHArray1OfShape*(theLower: int; theUpper: int): TopToolsHArray1OfShape {.
    constructor, importcpp: "TopTools_HArray1OfShape(@)",
    header: "TopTools_HArray1OfShape.hxx".}
proc constructTopToolsHArray1OfShape*(theLower: int; theUpper: int;
                                     theValue: ValueType): TopToolsHArray1OfShape {.
    constructor, importcpp: "TopTools_HArray1OfShape(@)",
    header: "TopTools_HArray1OfShape.hxx".}
proc constructTopToolsHArray1OfShape*(theOther: TopToolsArray1OfShape): TopToolsHArray1OfShape {.
    constructor, importcpp: "TopTools_HArray1OfShape(@)",
    header: "TopTools_HArray1OfShape.hxx".}
proc array1*(this: TopToolsHArray1OfShape): TopToolsArray1OfShape {.noSideEffect,
    importcpp: "Array1", header: "TopTools_HArray1OfShape.hxx".}
proc changeArray1*(this: var TopToolsHArray1OfShape): var TopToolsArray1OfShape {.
    importcpp: "ChangeArray1", header: "TopTools_HArray1OfShape.hxx".}
type
  TopToolsHArray1OfShapebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TopTools_HArray1OfShape::get_type_name(@)",
                            header: "TopTools_HArray1OfShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopTools_HArray1OfShape::get_type_descriptor(@)",
    header: "TopTools_HArray1OfShape.hxx".}
proc dynamicType*(this: TopToolsHArray1OfShape): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TopTools_HArray1OfShape.hxx".}














































