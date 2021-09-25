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

## ! Interface class representing shaped model with deflection.

type
  IMeshDataTessellatedShape* {.importcpp: "IMeshData_TessellatedShape",
                              header: "IMeshData_TessellatedShape.hxx", bycopy.} = object of IMeshDataShape ##
                                                                                                     ## !
                                                                                                     ## Destructor.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Constructor.


proc destroyIMeshDataTessellatedShape*(this: var IMeshDataTessellatedShape) {.
    importcpp: "#.~IMeshData_TessellatedShape()",
    header: "IMeshData_TessellatedShape.hxx".}
proc getDeflection*(this: IMeshDataTessellatedShape): float {.noSideEffect,
    importcpp: "GetDeflection", header: "IMeshData_TessellatedShape.hxx".}
proc setDeflection*(this: var IMeshDataTessellatedShape; theValue: float) {.
    importcpp: "SetDeflection", header: "IMeshData_TessellatedShape.hxx".}
type
  IMeshDataTessellatedShapebaseType* = IMeshDataShape

proc getTypeName*(): cstring {.importcpp: "IMeshData_TessellatedShape::get_type_name(@)",
                            header: "IMeshData_TessellatedShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_TessellatedShape::get_type_descriptor(@)",
    header: "IMeshData_TessellatedShape.hxx".}
proc dynamicType*(this: IMeshDataTessellatedShape): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IMeshData_TessellatedShape.hxx".}
