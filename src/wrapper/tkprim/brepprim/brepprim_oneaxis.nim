import ../../tkmath/gp/gp_types
import brepprim_types
import ../../tkbrep/topods/topods_types





##  Created on: 1991-07-23
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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



proc setMeridianOffset*(this: var BRepPrimOneAxis; meridianOffset: cfloat = 0) {.cdecl,
    importcpp: "SetMeridianOffset", header: "BRepPrim_OneAxis.hxx".}
proc axes*(this: BRepPrimOneAxis): Ax2Obj {.noSideEffect, cdecl, importcpp: "Axes",
                                     header: "BRepPrim_OneAxis.hxx".}
proc axes*(this: var BRepPrimOneAxis; a: Ax2Obj) {.cdecl, importcpp: "Axes", header: "BRepPrim_OneAxis.hxx".}
proc angle*(this: BRepPrimOneAxis): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
    header: "BRepPrim_OneAxis.hxx".}
proc angle*(this: var BRepPrimOneAxis; a: cfloat) {.cdecl, importcpp: "Angle",
    header: "BRepPrim_OneAxis.hxx".}
proc vMin*(this: BRepPrimOneAxis): cfloat {.noSideEffect, cdecl, importcpp: "VMin",
                                        header: "BRepPrim_OneAxis.hxx".}
proc vMin*(this: var BRepPrimOneAxis; v: cfloat) {.cdecl, importcpp: "VMin",
    header: "BRepPrim_OneAxis.hxx".}
proc vMax*(this: BRepPrimOneAxis): cfloat {.noSideEffect, cdecl, importcpp: "VMax",
                                        header: "BRepPrim_OneAxis.hxx".}
proc vMax*(this: var BRepPrimOneAxis; v: cfloat) {.cdecl, importcpp: "VMax",
    header: "BRepPrim_OneAxis.hxx".}
proc makeEmptyLateralFace*(this: BRepPrimOneAxis): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_OneAxis.hxx".}
proc makeEmptyMeridianEdge*(this: BRepPrimOneAxis; ang: cfloat): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "MakeEmptyMeridianEdge", header: "BRepPrim_OneAxis.hxx".}
proc setMeridianPCurve*(this: BRepPrimOneAxis; e: var TopoDS_Edge; f: TopoDS_Face) {.
    noSideEffect, cdecl, importcpp: "SetMeridianPCurve", header: "BRepPrim_OneAxis.hxx".}
proc meridianValue*(this: BRepPrimOneAxis; v: cfloat): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "MeridianValue", header: "BRepPrim_OneAxis.hxx".}
proc meridianOnAxis*(this: BRepPrimOneAxis; v: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "MeridianOnAxis", header: "BRepPrim_OneAxis.hxx".}
proc meridianClosed*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "MeridianClosed", header: "BRepPrim_OneAxis.hxx".}
proc vMaxInfinite*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "VMaxInfinite", header: "BRepPrim_OneAxis.hxx".}
proc vMinInfinite*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "VMinInfinite", header: "BRepPrim_OneAxis.hxx".}
proc hasTop*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl, importcpp: "HasTop",
                                        header: "BRepPrim_OneAxis.hxx".}
proc hasBottom*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "HasBottom", header: "BRepPrim_OneAxis.hxx".}
proc hasSides*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "HasSides", header: "BRepPrim_OneAxis.hxx".}
proc shell*(this: var BRepPrimOneAxis): TopoDS_Shell {.cdecl, importcpp: "Shell",
    header: "BRepPrim_OneAxis.hxx".}
proc lateralFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl,
    importcpp: "LateralFace", header: "BRepPrim_OneAxis.hxx".}
proc topFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl, importcpp: "TopFace",
    header: "BRepPrim_OneAxis.hxx".}
proc bottomFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl,
    importcpp: "BottomFace", header: "BRepPrim_OneAxis.hxx".}
proc startFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl,
    importcpp: "StartFace", header: "BRepPrim_OneAxis.hxx".}
proc endFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl, importcpp: "EndFace",
    header: "BRepPrim_OneAxis.hxx".}
proc lateralWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "LateralWire", header: "BRepPrim_OneAxis.hxx".}
proc lateralStartWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "LateralStartWire", header: "BRepPrim_OneAxis.hxx".}
proc lateralEndWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "LateralEndWire", header: "BRepPrim_OneAxis.hxx".}
proc topWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl, importcpp: "TopWire",
    header: "BRepPrim_OneAxis.hxx".}
proc bottomWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "BottomWire", header: "BRepPrim_OneAxis.hxx".}
proc startWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "StartWire", header: "BRepPrim_OneAxis.hxx".}
proc axisStartWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "AxisStartWire", header: "BRepPrim_OneAxis.hxx".}
proc endWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl, importcpp: "EndWire",
    header: "BRepPrim_OneAxis.hxx".}
proc axisEndWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "AxisEndWire", header: "BRepPrim_OneAxis.hxx".}
proc axisEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl, importcpp: "AxisEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc startEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "StartEdge", header: "BRepPrim_OneAxis.hxx".}
proc endEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl, importcpp: "EndEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc startTopEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "StartTopEdge", header: "BRepPrim_OneAxis.hxx".}
proc startBottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "StartBottomEdge", header: "BRepPrim_OneAxis.hxx".}
proc endTopEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "EndTopEdge", header: "BRepPrim_OneAxis.hxx".}
proc endBottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "EndBottomEdge", header: "BRepPrim_OneAxis.hxx".}
proc topEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl, importcpp: "TopEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc bottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "BottomEdge", header: "BRepPrim_OneAxis.hxx".}
proc axisTopVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "AxisTopVertex", header: "BRepPrim_OneAxis.hxx".}
proc axisBottomVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "AxisBottomVertex", header: "BRepPrim_OneAxis.hxx".}
proc topStartVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "TopStartVertex", header: "BRepPrim_OneAxis.hxx".}
proc topEndVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "TopEndVertex", header: "BRepPrim_OneAxis.hxx".}
proc bottomStartVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "BottomStartVertex", header: "BRepPrim_OneAxis.hxx".}
proc bottomEndVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "BottomEndVertex", header: "BRepPrim_OneAxis.hxx".}
proc destroyBRepPrimOneAxis*(this: var BRepPrimOneAxis) {.cdecl,
    importcpp: "#.~BRepPrim_OneAxis()", header: "BRepPrim_OneAxis.hxx".}


