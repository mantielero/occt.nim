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
  ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape

## ! Interface class representing model with associated TopoDS_Shape.
## ! Intended for inheritance by structures and algorithms keeping
## ! reference TopoDS_Shape.

type
  IMeshData_Shape* {.importcpp: "IMeshData_Shape", header: "IMeshData_Shape.hxx",
                    bycopy.} = object of Standard_Transient ## ! Destructor.
                                                       ## ! Constructor.


proc destroyIMeshData_Shape*(this: var IMeshData_Shape) {.
    importcpp: "#.~IMeshData_Shape()", header: "IMeshData_Shape.hxx".}
proc SetShape*(this: var IMeshData_Shape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: "IMeshData_Shape.hxx".}
proc GetShape*(this: IMeshData_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "IMeshData_Shape.hxx".}
type
  IMeshData_Shapebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IMeshData_Shape::get_type_name(@)",
                              header: "IMeshData_Shape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_Shape::get_type_descriptor(@)",
    header: "IMeshData_Shape.hxx".}
proc DynamicType*(this: IMeshData_Shape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Shape.hxx".}