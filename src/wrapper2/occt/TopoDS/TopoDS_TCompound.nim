##  Created on: 1990-12-17
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, TopoDS_TShape,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TCompound"
discard "forward decl of TopoDS_TCompound"
type
  Handle_TopoDS_TCompound* = handle[TopoDS_TCompound]

## ! A TCompound is an all-purpose set of Shapes.

type
  TopoDS_TCompound* {.importcpp: "TopoDS_TCompound",
                     header: "TopoDS_TCompound.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## TCompound.


proc constructTopoDS_TCompound*(): TopoDS_TCompound {.constructor,
    importcpp: "TopoDS_TCompound(@)", header: "TopoDS_TCompound.hxx".}
proc ShapeType*(this: TopoDS_TCompound): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_TCompound.hxx".}
proc EmptyCopy*(this: TopoDS_TCompound): handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "TopoDS_TCompound.hxx".}
type
  TopoDS_TCompoundbase_type* = TopoDS_TShape

proc get_type_name*(): cstring {.importcpp: "TopoDS_TCompound::get_type_name(@)",
                              header: "TopoDS_TCompound.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopoDS_TCompound::get_type_descriptor(@)",
    header: "TopoDS_TCompound.hxx".}
proc DynamicType*(this: TopoDS_TCompound): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_TCompound.hxx".}