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

discard "forward decl of TopoDS_Edge"
discard "forward decl of Draw_Color"
discard "forward decl of DBRep_Edge"
discard "forward decl of DBRep_Edge"
type
  HandleDBRepEdge* = Handle[DBRepEdge]

## ! Display of an edge. Edge + color.

type
  DBRepEdge* {.importcpp: "DBRep_Edge", header: "DBRep_Edge.hxx", bycopy.} = object of StandardTransient


proc constructDBRepEdge*(e: TopoDS_Edge; c: DrawColor): DBRepEdge {.constructor,
    importcpp: "DBRep_Edge(@)", header: "DBRep_Edge.hxx".}
proc edge*(this: DBRepEdge): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
                                       header: "DBRep_Edge.hxx".}
proc edge*(this: var DBRepEdge; e: TopoDS_Edge) {.importcpp: "Edge",
    header: "DBRep_Edge.hxx".}
proc color*(this: DBRepEdge): DrawColor {.noSideEffect, importcpp: "Color",
                                      header: "DBRep_Edge.hxx".}
proc color*(this: var DBRepEdge; c: DrawColor) {.importcpp: "Color",
    header: "DBRep_Edge.hxx".}
type
  DBRepEdgebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "DBRep_Edge::get_type_name(@)",
                            header: "DBRep_Edge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DBRep_Edge::get_type_descriptor(@)", header: "DBRep_Edge.hxx".}
proc dynamicType*(this: DBRepEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DBRep_Edge.hxx".}

