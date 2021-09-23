##  Created on: 1993-07-15
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Edge,
  ../Draw/Draw_Color, ../Standard/Standard_Transient

discard "forward decl of TopoDS_Edge"
discard "forward decl of Draw_Color"
discard "forward decl of DBRep_Edge"
discard "forward decl of DBRep_Edge"
type
  Handle_DBRep_Edge* = handle[DBRep_Edge]

## ! Display of an edge. Edge + color.

type
  DBRep_Edge* {.importcpp: "DBRep_Edge", header: "DBRep_Edge.hxx", bycopy.} = object of Standard_Transient


proc constructDBRep_Edge*(E: TopoDS_Edge; C: Draw_Color): DBRep_Edge {.constructor,
    importcpp: "DBRep_Edge(@)", header: "DBRep_Edge.hxx".}
proc Edge*(this: DBRep_Edge): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
                                        header: "DBRep_Edge.hxx".}
proc Edge*(this: var DBRep_Edge; E: TopoDS_Edge) {.importcpp: "Edge",
    header: "DBRep_Edge.hxx".}
proc Color*(this: DBRep_Edge): Draw_Color {.noSideEffect, importcpp: "Color",
                                        header: "DBRep_Edge.hxx".}
proc Color*(this: var DBRep_Edge; C: Draw_Color) {.importcpp: "Color",
    header: "DBRep_Edge.hxx".}
type
  DBRep_Edgebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "DBRep_Edge::get_type_name(@)",
                              header: "DBRep_Edge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DBRep_Edge::get_type_descriptor(@)", header: "DBRep_Edge.hxx".}
proc DynamicType*(this: DBRep_Edge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DBRep_Edge.hxx".}