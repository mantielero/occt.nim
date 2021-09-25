##  Created on: 1992-11-19
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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
discard "forward decl of TopoDS_Face"
type
  BRepClassEdge* {.importcpp: "BRepClass_Edge", header: "BRepClass_Edge.hxx", bycopy.} = object


proc constructBRepClassEdge*(): BRepClassEdge {.constructor,
    importcpp: "BRepClass_Edge(@)", header: "BRepClass_Edge.hxx".}
proc constructBRepClassEdge*(e: TopoDS_Edge; f: TopoDS_Face): BRepClassEdge {.
    constructor, importcpp: "BRepClass_Edge(@)", header: "BRepClass_Edge.hxx".}
proc edge*(this: var BRepClassEdge): var TopoDS_Edge {.importcpp: "Edge",
    header: "BRepClass_Edge.hxx".}
proc edge*(this: BRepClassEdge): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepClass_Edge.hxx".}
proc face*(this: var BRepClassEdge): var TopoDS_Face {.importcpp: "Face",
    header: "BRepClass_Edge.hxx".}
proc face*(this: BRepClassEdge): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepClass_Edge.hxx".}
