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

import
  ../TopoDS/TopoDS_Shape, TopTools_Array1OfShape,
  ../NCollection/NCollection_DefineHArray1

type
  TopTools_HArray1OfShape* {.importcpp: "TopTools_HArray1OfShape",
                            header: "TopTools_HArray1OfShape.hxx", bycopy.} = object of TopTools_Array1OfShape


proc constructTopTools_HArray1OfShape*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): TopTools_HArray1OfShape {.
    constructor, importcpp: "TopTools_HArray1OfShape(@)",
    header: "TopTools_HArray1OfShape.hxx".}
proc constructTopTools_HArray1OfShape*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): TopTools_HArray1OfShape {.
    constructor, importcpp: "TopTools_HArray1OfShape(@)",
    header: "TopTools_HArray1OfShape.hxx".}
proc constructTopTools_HArray1OfShape*(theOther: TopTools_Array1OfShape): TopTools_HArray1OfShape {.
    constructor, importcpp: "TopTools_HArray1OfShape(@)",
    header: "TopTools_HArray1OfShape.hxx".}
proc Array1*(this: TopTools_HArray1OfShape): TopTools_Array1OfShape {.noSideEffect,
    importcpp: "Array1", header: "TopTools_HArray1OfShape.hxx".}
proc ChangeArray1*(this: var TopTools_HArray1OfShape): var TopTools_Array1OfShape {.
    importcpp: "ChangeArray1", header: "TopTools_HArray1OfShape.hxx".}
type
  TopTools_HArray1OfShapebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TopTools_HArray1OfShape::get_type_name(@)",
                              header: "TopTools_HArray1OfShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopTools_HArray1OfShape::get_type_descriptor(@)",
    header: "TopTools_HArray1OfShape.hxx".}
proc DynamicType*(this: TopTools_HArray1OfShape): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TopTools_HArray1OfShape.hxx".}