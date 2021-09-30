##  Created on: 2004-07-14
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeBuild_ReShape"
type
  ShapeFixSplitTool* {.importcpp: "ShapeFix_SplitTool",
                      header: "ShapeFix_SplitTool.hxx", bycopy.} = object ## ! Empty constructor


proc constructShapeFixSplitTool*(): ShapeFixSplitTool {.constructor,
    importcpp: "ShapeFix_SplitTool(@)", header: "ShapeFix_SplitTool.hxx".}
proc splitEdge*(this: ShapeFixSplitTool; edge: TopoDS_Edge; param: cfloat;
               vert: TopoDS_Vertex; face: TopoDS_Face; newE1: var TopoDS_Edge;
               newE2: var TopoDS_Edge; tol3d: cfloat; tol2d: cfloat): bool {.
    noSideEffect, importcpp: "SplitEdge", header: "ShapeFix_SplitTool.hxx".}
proc splitEdge*(this: ShapeFixSplitTool; edge: TopoDS_Edge; param1: cfloat;
               param2: cfloat; vert: TopoDS_Vertex; face: TopoDS_Face;
               newE1: var TopoDS_Edge; newE2: var TopoDS_Edge; tol3d: cfloat;
               tol2d: cfloat): bool {.noSideEffect, importcpp: "SplitEdge",
                                   header: "ShapeFix_SplitTool.hxx".}
proc cutEdge*(this: ShapeFixSplitTool; edge: TopoDS_Edge; pend: cfloat; cut: cfloat;
             face: TopoDS_Face; iscutline: var bool): bool {.noSideEffect,
    importcpp: "CutEdge", header: "ShapeFix_SplitTool.hxx".}
proc splitEdge*(this: ShapeFixSplitTool; edge: TopoDS_Edge; fp: cfloat;
               v1: TopoDS_Vertex; lp: cfloat; v2: TopoDS_Vertex; face: TopoDS_Face;
               seqE: var TopToolsSequenceOfShape; aNum: var cint;
               context: Handle[ShapeBuildReShape]; tol3d: cfloat; tol2d: cfloat): bool {.
    noSideEffect, importcpp: "SplitEdge", header: "ShapeFix_SplitTool.hxx".}

























