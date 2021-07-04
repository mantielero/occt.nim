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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Pnt2d,
  ../Standard/Standard_Real, ../Bisector/Bisector_Bisec,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve, ../GeomAbs/GeomAbs_JoinType,
  ../TColgp/TColgp_SequenceOfPnt

discard "forward decl of Geom2d_Curve"
discard "forward decl of Bisector_Bisec"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt2d"
type
  BRepFill_TrimEdgeTool* {.importcpp: "BRepFill_TrimEdgeTool",
                          header: "BRepFill_TrimEdgeTool.hxx", bycopy.} = object


proc constructBRepFill_TrimEdgeTool*(): BRepFill_TrimEdgeTool {.constructor,
    importcpp: "BRepFill_TrimEdgeTool(@)", header: "BRepFill_TrimEdgeTool.hxx".}
proc constructBRepFill_TrimEdgeTool*(Bisec: Bisector_Bisec;
                                    S1: handle[Geom2d_Geometry];
                                    S2: handle[Geom2d_Geometry];
                                    Offset: Standard_Real): BRepFill_TrimEdgeTool {.
    constructor, importcpp: "BRepFill_TrimEdgeTool(@)",
    header: "BRepFill_TrimEdgeTool.hxx".}
proc IntersectWith*(this: var BRepFill_TrimEdgeTool; Edge1: TopoDS_Edge;
                   Edge2: TopoDS_Edge; InitShape1: TopoDS_Shape;
                   InitShape2: TopoDS_Shape; End1: TopoDS_Vertex;
                   End2: TopoDS_Vertex; theJoinType: GeomAbs_JoinType;
                   IsOpenResult: Standard_Boolean;
                   Params: var TColgp_SequenceOfPnt) {.importcpp: "IntersectWith",
    header: "BRepFill_TrimEdgeTool.hxx".}
proc AddOrConfuse*(this: BRepFill_TrimEdgeTool; Start: Standard_Boolean;
                  Edge1: TopoDS_Edge; Edge2: TopoDS_Edge;
                  Params: var TColgp_SequenceOfPnt) {.noSideEffect,
    importcpp: "AddOrConfuse", header: "BRepFill_TrimEdgeTool.hxx".}
proc IsInside*(this: BRepFill_TrimEdgeTool; P: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsInside", header: "BRepFill_TrimEdgeTool.hxx".}