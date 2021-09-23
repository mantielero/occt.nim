##  Created on: 1995-06-28
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, TopoDS_Shape,
  ../Standard/Standard_Transient

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_HShape"
discard "forward decl of TopoDS_HShape"
type
  Handle_TopoDS_HShape* = handle[TopoDS_HShape]

## ! Class to manipulate a Shape with  handle.

type
  TopoDS_HShape* {.importcpp: "TopoDS_HShape", header: "TopoDS_HShape.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## shape
                                                                                                          ## object


proc constructTopoDS_HShape*(): TopoDS_HShape {.constructor,
    importcpp: "TopoDS_HShape(@)", header: "TopoDS_HShape.hxx".}
proc constructTopoDS_HShape*(aShape: TopoDS_Shape): TopoDS_HShape {.constructor,
    importcpp: "TopoDS_HShape(@)", header: "TopoDS_HShape.hxx".}
proc Shape*(this: var TopoDS_HShape; aShape: TopoDS_Shape) {.importcpp: "Shape",
    header: "TopoDS_HShape.hxx".}
proc Shape*(this: TopoDS_HShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "TopoDS_HShape.hxx".}
proc ChangeShape*(this: var TopoDS_HShape): var TopoDS_Shape {.
    importcpp: "ChangeShape", header: "TopoDS_HShape.hxx".}
type
  TopoDS_HShapebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopoDS_HShape::get_type_name(@)",
                              header: "TopoDS_HShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopoDS_HShape::get_type_descriptor(@)",
    header: "TopoDS_HShape.hxx".}
proc DynamicType*(this: TopoDS_HShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_HShape.hxx".}