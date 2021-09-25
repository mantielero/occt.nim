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

discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of Bnd_Box2d"
discard "forward decl of Geom2d_Curve"
type
  ShapeFixIntersectionTool* {.importcpp: "ShapeFix_IntersectionTool",
                             header: "ShapeFix_IntersectionTool.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Constructor


proc constructShapeFixIntersectionTool*(context: Handle[ShapeBuildReShape];
                                       preci: float; maxtol: float = 1.0): ShapeFixIntersectionTool {.
    constructor, importcpp: "ShapeFix_IntersectionTool(@)",
    header: "ShapeFix_IntersectionTool.hxx".}
proc context*(this: ShapeFixIntersectionTool): Handle[ShapeBuildReShape] {.
    noSideEffect, importcpp: "Context", header: "ShapeFix_IntersectionTool.hxx".}
proc splitEdge*(this: ShapeFixIntersectionTool; edge: TopoDS_Edge; param: float;
               vert: TopoDS_Vertex; face: TopoDS_Face; newE1: var TopoDS_Edge;
               newE2: var TopoDS_Edge; preci: float): bool {.noSideEffect,
    importcpp: "SplitEdge", header: "ShapeFix_IntersectionTool.hxx".}
proc cutEdge*(this: ShapeFixIntersectionTool; edge: TopoDS_Edge; pend: float;
             cut: float; face: TopoDS_Face; iscutline: var bool): bool {.noSideEffect,
    importcpp: "CutEdge", header: "ShapeFix_IntersectionTool.hxx".}
proc fixSelfIntersectWire*(this: ShapeFixIntersectionTool;
                          sewd: var Handle[ShapeExtendWireData]; face: TopoDS_Face;
                          nbSplit: var int; nbCut: var int; nbRemoved: var int): bool {.
    noSideEffect, importcpp: "FixSelfIntersectWire",
    header: "ShapeFix_IntersectionTool.hxx".}
proc fixIntersectingWires*(this: ShapeFixIntersectionTool; face: var TopoDS_Face): bool {.
    noSideEffect, importcpp: "FixIntersectingWires",
    header: "ShapeFix_IntersectionTool.hxx".}
