##  Created on: 2004-03-05
##  Created by: Sergey KUUL
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ShapeFix_DataMapOfShapeBox2d

discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of Bnd_Box2d"
discard "forward decl of Geom2d_Curve"
type
  ShapeFix_IntersectionTool* {.importcpp: "ShapeFix_IntersectionTool",
                              header: "ShapeFix_IntersectionTool.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Constructor


proc constructShapeFix_IntersectionTool*(context: handle[ShapeBuild_ReShape];
                                        preci: Standard_Real;
                                        maxtol: Standard_Real = 1.0): ShapeFix_IntersectionTool {.
    constructor, importcpp: "ShapeFix_IntersectionTool(@)",
    header: "ShapeFix_IntersectionTool.hxx".}
proc Context*(this: ShapeFix_IntersectionTool): handle[ShapeBuild_ReShape] {.
    noSideEffect, importcpp: "Context", header: "ShapeFix_IntersectionTool.hxx".}
proc SplitEdge*(this: ShapeFix_IntersectionTool; edge: TopoDS_Edge;
               param: Standard_Real; vert: TopoDS_Vertex; face: TopoDS_Face;
               newE1: var TopoDS_Edge; newE2: var TopoDS_Edge; preci: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "SplitEdge", header: "ShapeFix_IntersectionTool.hxx".}
proc CutEdge*(this: ShapeFix_IntersectionTool; edge: TopoDS_Edge;
             pend: Standard_Real; cut: Standard_Real; face: TopoDS_Face;
             iscutline: var Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "CutEdge", header: "ShapeFix_IntersectionTool.hxx".}
proc FixSelfIntersectWire*(this: ShapeFix_IntersectionTool;
                          sewd: var handle[ShapeExtend_WireData];
                          face: TopoDS_Face; NbSplit: var Standard_Integer;
                          NbCut: var Standard_Integer;
                          NbRemoved: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "FixSelfIntersectWire",
    header: "ShapeFix_IntersectionTool.hxx".}
proc FixIntersectingWires*(this: ShapeFix_IntersectionTool; face: var TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "FixIntersectingWires",
    header: "ShapeFix_IntersectionTool.hxx".}