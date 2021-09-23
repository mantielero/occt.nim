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
discard "forward decl of TopoDS_TFace"
discard "forward decl of TopoDS_TFace"
type
  Handle_TopoDS_TFace* = handle[TopoDS_TFace]

## ! A  topological part  of a surface   or  of the  2D
## ! space.  The  boundary  is  a   set of  wires   and
## ! vertices.

type
  TopoDS_TFace* {.importcpp: "TopoDS_TFace", header: "TopoDS_TFace.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## empty
                                                                                                  ## TFace.


proc constructTopoDS_TFace*(): TopoDS_TFace {.constructor,
    importcpp: "TopoDS_TFace(@)", header: "TopoDS_TFace.hxx".}
proc ShapeType*(this: TopoDS_TFace): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_TFace.hxx".}
proc EmptyCopy*(this: TopoDS_TFace): handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "TopoDS_TFace.hxx".}
type
  TopoDS_TFacebase_type* = TopoDS_TShape

proc get_type_name*(): cstring {.importcpp: "TopoDS_TFace::get_type_name(@)",
                              header: "TopoDS_TFace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopoDS_TFace::get_type_descriptor(@)", header: "TopoDS_TFace.hxx".}
proc DynamicType*(this: TopoDS_TFace): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_TFace.hxx".}