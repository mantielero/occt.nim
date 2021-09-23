##  Created on: 1994-10-21
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Edge,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_SequenceOfPnt,
  ../Standard/Standard_Real, ../GeomAbs/GeomAbs_Shape

discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom_Curve"
type
  BRepFill_TrimSurfaceTool* {.importcpp: "BRepFill_TrimSurfaceTool",
                             header: "BRepFill_TrimSurfaceTool.hxx", bycopy.} = object


proc constructBRepFill_TrimSurfaceTool*(Bis: handle[Geom2d_Curve];
                                       Face1: TopoDS_Face; Face2: TopoDS_Face;
                                       Edge1: TopoDS_Edge; Edge2: TopoDS_Edge;
                                       Inv1: Standard_Boolean;
                                       Inv2: Standard_Boolean): BRepFill_TrimSurfaceTool {.
    constructor, importcpp: "BRepFill_TrimSurfaceTool(@)",
    header: "BRepFill_TrimSurfaceTool.hxx".}
proc IntersectWith*(this: BRepFill_TrimSurfaceTool; EdgeOnF1: TopoDS_Edge;
                   EdgeOnF2: TopoDS_Edge; Points: var TColgp_SequenceOfPnt) {.
    noSideEffect, importcpp: "IntersectWith",
    header: "BRepFill_TrimSurfaceTool.hxx".}
proc IsOnFace*(this: BRepFill_TrimSurfaceTool; Point: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnFace", header: "BRepFill_TrimSurfaceTool.hxx".}
proc ProjOn*(this: BRepFill_TrimSurfaceTool; Point: gp_Pnt2d; Edge: TopoDS_Edge): Standard_Real {.
    noSideEffect, importcpp: "ProjOn", header: "BRepFill_TrimSurfaceTool.hxx".}
proc Project*(this: BRepFill_TrimSurfaceTool; U1: Standard_Real; U2: Standard_Real;
             Curve: var handle[Geom_Curve]; PCurve1: var handle[Geom2d_Curve];
             PCurve2: var handle[Geom2d_Curve]; myCont: var GeomAbs_Shape) {.
    noSideEffect, importcpp: "Project", header: "BRepFill_TrimSurfaceTool.hxx".}