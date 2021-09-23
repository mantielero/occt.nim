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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../ShapeAnalysis/ShapeAnalysis_WireVertex,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Wire"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of ShapeAnalysis_WireVertex"
type
  ShapeFix_WireVertex* {.importcpp: "ShapeFix_WireVertex",
                        header: "ShapeFix_WireVertex.hxx", bycopy.} = object


proc constructShapeFix_WireVertex*(): ShapeFix_WireVertex {.constructor,
    importcpp: "ShapeFix_WireVertex(@)", header: "ShapeFix_WireVertex.hxx".}
proc Init*(this: var ShapeFix_WireVertex; wire: TopoDS_Wire; preci: Standard_Real) {.
    importcpp: "Init", header: "ShapeFix_WireVertex.hxx".}
proc Init*(this: var ShapeFix_WireVertex; sbwd: handle[ShapeExtend_WireData];
          preci: Standard_Real) {.importcpp: "Init",
                                header: "ShapeFix_WireVertex.hxx".}
proc Init*(this: var ShapeFix_WireVertex; sawv: ShapeAnalysis_WireVertex) {.
    importcpp: "Init", header: "ShapeFix_WireVertex.hxx".}
proc Analyzer*(this: ShapeFix_WireVertex): ShapeAnalysis_WireVertex {.noSideEffect,
    importcpp: "Analyzer", header: "ShapeFix_WireVertex.hxx".}
proc WireData*(this: ShapeFix_WireVertex): handle[ShapeExtend_WireData] {.
    noSideEffect, importcpp: "WireData", header: "ShapeFix_WireVertex.hxx".}
proc Wire*(this: ShapeFix_WireVertex): TopoDS_Wire {.noSideEffect, importcpp: "Wire",
    header: "ShapeFix_WireVertex.hxx".}
proc FixSame*(this: var ShapeFix_WireVertex): Standard_Integer {.
    importcpp: "FixSame", header: "ShapeFix_WireVertex.hxx".}
proc Fix*(this: var ShapeFix_WireVertex): Standard_Integer {.importcpp: "Fix",
    header: "ShapeFix_WireVertex.hxx".}