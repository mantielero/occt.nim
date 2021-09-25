##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of ShapeAnalysis_WireVertex"
type
  ShapeFixWireVertex* {.importcpp: "ShapeFix_WireVertex",
                       header: "ShapeFix_WireVertex.hxx", bycopy.} = object


proc constructShapeFixWireVertex*(): ShapeFixWireVertex {.constructor,
    importcpp: "ShapeFix_WireVertex(@)", header: "ShapeFix_WireVertex.hxx".}
proc init*(this: var ShapeFixWireVertex; wire: TopoDS_Wire; preci: float) {.
    importcpp: "Init", header: "ShapeFix_WireVertex.hxx".}
proc init*(this: var ShapeFixWireVertex; sbwd: Handle[ShapeExtendWireData];
          preci: float) {.importcpp: "Init", header: "ShapeFix_WireVertex.hxx".}
proc init*(this: var ShapeFixWireVertex; sawv: ShapeAnalysisWireVertex) {.
    importcpp: "Init", header: "ShapeFix_WireVertex.hxx".}
proc analyzer*(this: ShapeFixWireVertex): ShapeAnalysisWireVertex {.noSideEffect,
    importcpp: "Analyzer", header: "ShapeFix_WireVertex.hxx".}
proc wireData*(this: ShapeFixWireVertex): Handle[ShapeExtendWireData] {.
    noSideEffect, importcpp: "WireData", header: "ShapeFix_WireVertex.hxx".}
proc wire*(this: ShapeFixWireVertex): TopoDS_Wire {.noSideEffect, importcpp: "Wire",
    header: "ShapeFix_WireVertex.hxx".}
proc fixSame*(this: var ShapeFixWireVertex): int {.importcpp: "FixSame",
    header: "ShapeFix_WireVertex.hxx".}
proc fix*(this: var ShapeFixWireVertex): int {.importcpp: "Fix",
    header: "ShapeFix_WireVertex.hxx".}
