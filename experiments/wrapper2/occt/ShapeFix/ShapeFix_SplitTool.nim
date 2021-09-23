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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../TopTools/TopTools_SequenceOfShape,
  ../Standard/Standard_Integer

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeBuild_ReShape"
type
  ShapeFix_SplitTool* {.importcpp: "ShapeFix_SplitTool",
                       header: "ShapeFix_SplitTool.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor


proc constructShapeFix_SplitTool*(): ShapeFix_SplitTool {.constructor,
    importcpp: "ShapeFix_SplitTool(@)", header: "ShapeFix_SplitTool.hxx".}
proc SplitEdge*(this: ShapeFix_SplitTool; edge: TopoDS_Edge; param: Standard_Real;
               vert: TopoDS_Vertex; face: TopoDS_Face; newE1: var TopoDS_Edge;
               newE2: var TopoDS_Edge; tol3d: Standard_Real; tol2d: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "SplitEdge", header: "ShapeFix_SplitTool.hxx".}
proc SplitEdge*(this: ShapeFix_SplitTool; edge: TopoDS_Edge; param1: Standard_Real;
               param2: Standard_Real; vert: TopoDS_Vertex; face: TopoDS_Face;
               newE1: var TopoDS_Edge; newE2: var TopoDS_Edge; tol3d: Standard_Real;
               tol2d: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "SplitEdge", header: "ShapeFix_SplitTool.hxx".}
proc CutEdge*(this: ShapeFix_SplitTool; edge: TopoDS_Edge; pend: Standard_Real;
             cut: Standard_Real; face: TopoDS_Face; iscutline: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "CutEdge", header: "ShapeFix_SplitTool.hxx".}
proc SplitEdge*(this: ShapeFix_SplitTool; edge: TopoDS_Edge; fp: Standard_Real;
               V1: TopoDS_Vertex; lp: Standard_Real; V2: TopoDS_Vertex;
               face: TopoDS_Face; SeqE: var TopTools_SequenceOfShape;
               aNum: var Standard_Integer; context: handle[ShapeBuild_ReShape];
               tol3d: Standard_Real; tol2d: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "SplitEdge", header: "ShapeFix_SplitTool.hxx".}