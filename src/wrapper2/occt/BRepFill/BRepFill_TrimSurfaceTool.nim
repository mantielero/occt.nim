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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom_Curve"
type
  BRepFillTrimSurfaceTool* {.importcpp: "BRepFill_TrimSurfaceTool",
                            header: "BRepFill_TrimSurfaceTool.hxx", bycopy.} = object


proc constructBRepFillTrimSurfaceTool*(bis: Handle[Geom2dCurve];
                                      face1: TopoDS_Face; face2: TopoDS_Face;
                                      edge1: TopoDS_Edge; edge2: TopoDS_Edge;
                                      inv1: StandardBoolean; inv2: StandardBoolean): BRepFillTrimSurfaceTool {.
    constructor, importcpp: "BRepFill_TrimSurfaceTool(@)",
    header: "BRepFill_TrimSurfaceTool.hxx".}
proc intersectWith*(this: BRepFillTrimSurfaceTool; edgeOnF1: TopoDS_Edge;
                   edgeOnF2: TopoDS_Edge; points: var TColgpSequenceOfPnt) {.
    noSideEffect, importcpp: "IntersectWith",
    header: "BRepFill_TrimSurfaceTool.hxx".}
proc isOnFace*(this: BRepFillTrimSurfaceTool; point: GpPnt2d): StandardBoolean {.
    noSideEffect, importcpp: "IsOnFace", header: "BRepFill_TrimSurfaceTool.hxx".}
proc projOn*(this: BRepFillTrimSurfaceTool; point: GpPnt2d; edge: TopoDS_Edge): StandardReal {.
    noSideEffect, importcpp: "ProjOn", header: "BRepFill_TrimSurfaceTool.hxx".}
proc project*(this: BRepFillTrimSurfaceTool; u1: StandardReal; u2: StandardReal;
             curve: var Handle[GeomCurve]; pCurve1: var Handle[Geom2dCurve];
             pCurve2: var Handle[Geom2dCurve]; myCont: var GeomAbsShape) {.
    noSideEffect, importcpp: "Project", header: "BRepFill_TrimSurfaceTool.hxx".}

