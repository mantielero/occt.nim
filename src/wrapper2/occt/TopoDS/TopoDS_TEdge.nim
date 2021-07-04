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

discard "forward decl of TopoDS_TEdge"
discard "forward decl of TopoDS_TEdge"
type
  Handle_TopoDS_TEdge* = handle[TopoDS_TEdge]

## ! A topological part  of a  curve  in 2D or 3D,  the
## ! boundary    is   a   set  of oriented    Vertices.

type
  TopoDS_TEdge* {.importcpp: "TopoDS_TEdge", header: "TopoDS_TEdge.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## EDGE.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Construct
                                                                                                  ## an
                                                                                                  ## edge.


proc ShapeType*(this: TopoDS_TEdge): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_TEdge.hxx".}
type
  TopoDS_TEdgebase_type* = TopoDS_TShape

proc get_type_name*(): cstring {.importcpp: "TopoDS_TEdge::get_type_name(@)",
                              header: "TopoDS_TEdge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopoDS_TEdge::get_type_descriptor(@)", header: "TopoDS_TEdge.hxx".}
proc DynamicType*(this: TopoDS_TEdge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_TEdge.hxx".}