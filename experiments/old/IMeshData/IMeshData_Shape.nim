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

## ! Interface class representing model with associated TopoDS_Shape.
## ! Intended for inheritance by structures and algorithms keeping
## ! reference TopoDS_Shape.

type
  IMeshDataShape* {.importcpp: "IMeshData_Shape", header: "IMeshData_Shape.hxx",
                   bycopy.} = object of StandardTransient ## ! Destructor.
                                                     ## ! Constructor.


proc destroyIMeshDataShape*(this: var IMeshDataShape) {.
    importcpp: "#.~IMeshData_Shape()", header: "IMeshData_Shape.hxx".}
proc setShape*(this: var IMeshDataShape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: "IMeshData_Shape.hxx".}
proc getShape*(this: IMeshDataShape): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "IMeshData_Shape.hxx".}
type
  IMeshDataShapebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IMeshData_Shape::get_type_name(@)",
                            header: "IMeshData_Shape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_Shape::get_type_descriptor(@)",
    header: "IMeshData_Shape.hxx".}
proc dynamicType*(this: IMeshDataShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Shape.hxx".}

























