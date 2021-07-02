##  Created on: 1995-04-24
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Bisector_Bisec"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt2d"
type
  BRepFillTrimEdgeTool* {.importcpp: "BRepFill_TrimEdgeTool",
                         header: "BRepFill_TrimEdgeTool.hxx", bycopy.} = object


proc constructBRepFillTrimEdgeTool*(): BRepFillTrimEdgeTool {.constructor,
    importcpp: "BRepFill_TrimEdgeTool(@)", header: "BRepFill_TrimEdgeTool.hxx".}
proc constructBRepFillTrimEdgeTool*(bisec: BisectorBisec;
                                   s1: Handle[Geom2dGeometry];
                                   s2: Handle[Geom2dGeometry];
                                   offset: StandardReal): BRepFillTrimEdgeTool {.
    constructor, importcpp: "BRepFill_TrimEdgeTool(@)",
    header: "BRepFill_TrimEdgeTool.hxx".}
proc intersectWith*(this: var BRepFillTrimEdgeTool; edge1: TopoDS_Edge;
                   edge2: TopoDS_Edge; initShape1: TopoDS_Shape;
                   initShape2: TopoDS_Shape; end1: TopoDS_Vertex;
                   end2: TopoDS_Vertex; theJoinType: GeomAbsJoinType;
                   isOpenResult: StandardBoolean; params: var TColgpSequenceOfPnt) {.
    importcpp: "IntersectWith", header: "BRepFill_TrimEdgeTool.hxx".}
proc addOrConfuse*(this: BRepFillTrimEdgeTool; start: StandardBoolean;
                  edge1: TopoDS_Edge; edge2: TopoDS_Edge;
                  params: var TColgpSequenceOfPnt) {.noSideEffect,
    importcpp: "AddOrConfuse", header: "BRepFill_TrimEdgeTool.hxx".}
proc isInside*(this: BRepFillTrimEdgeTool; p: GpPnt2d): StandardBoolean {.
    noSideEffect, importcpp: "IsInside", header: "BRepFill_TrimEdgeTool.hxx".}

