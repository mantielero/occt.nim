##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  IMeshData_Shape, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape

## ! Interface class representing shaped model with deflection.

type
  IMeshData_TessellatedShape* {.importcpp: "IMeshData_TessellatedShape",
                               header: "IMeshData_TessellatedShape.hxx", bycopy.} = object of IMeshData_Shape ##
                                                                                                       ## !
                                                                                                       ## Destructor.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Constructor.


proc destroyIMeshData_TessellatedShape*(this: var IMeshData_TessellatedShape) {.
    importcpp: "#.~IMeshData_TessellatedShape()",
    header: "IMeshData_TessellatedShape.hxx".}
proc GetDeflection*(this: IMeshData_TessellatedShape): Standard_Real {.noSideEffect,
    importcpp: "GetDeflection", header: "IMeshData_TessellatedShape.hxx".}
proc SetDeflection*(this: var IMeshData_TessellatedShape; theValue: Standard_Real) {.
    importcpp: "SetDeflection", header: "IMeshData_TessellatedShape.hxx".}
type
  IMeshData_TessellatedShapebase_type* = IMeshData_Shape

proc get_type_name*(): cstring {.importcpp: "IMeshData_TessellatedShape::get_type_name(@)",
                              header: "IMeshData_TessellatedShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_TessellatedShape::get_type_descriptor(@)",
    header: "IMeshData_TessellatedShape.hxx".}
proc DynamicType*(this: IMeshData_TessellatedShape): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IMeshData_TessellatedShape.hxx".}