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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepPrim_Builder"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
type
  BRepPrimOneAxis* {.importcpp: "BRepPrim_OneAxis", header: "BRepPrim_OneAxis.hxx",
                    bycopy.} = object ## ! The MeridianOffset is added  to the  parameters on
                                   ## ! the meridian curve and  to  the  V values  of  the
                                   ## ! pcurves. This is  used for the sphere for example,
                                   ## ! to give a range on the meridian  edge which is not
                                   ## ! VMin, VMax.
                                   ## ! Creates a OneAxis algorithm.  <B> is used to build
                                   ## ! the Topology. The angle defaults to 2*PI.


proc setMeridianOffset*(this: var BRepPrimOneAxis; meridianOffset: StandardReal = 0) {.
    importcpp: "SetMeridianOffset", header: "BRepPrim_OneAxis.hxx".}
proc axes*(this: BRepPrimOneAxis): GpAx2 {.noSideEffect, importcpp: "Axes",
                                       header: "BRepPrim_OneAxis.hxx".}
proc axes*(this: var BRepPrimOneAxis; a: GpAx2) {.importcpp: "Axes",
    header: "BRepPrim_OneAxis.hxx".}
proc angle*(this: BRepPrimOneAxis): StandardReal {.noSideEffect, importcpp: "Angle",
    header: "BRepPrim_OneAxis.hxx".}
proc angle*(this: var BRepPrimOneAxis; a: StandardReal) {.importcpp: "Angle",
    header: "BRepPrim_OneAxis.hxx".}
proc vMin*(this: BRepPrimOneAxis): StandardReal {.noSideEffect, importcpp: "VMin",
    header: "BRepPrim_OneAxis.hxx".}
proc vMin*(this: var BRepPrimOneAxis; v: StandardReal) {.importcpp: "VMin",
    header: "BRepPrim_OneAxis.hxx".}
proc vMax*(this: BRepPrimOneAxis): StandardReal {.noSideEffect, importcpp: "VMax",
    header: "BRepPrim_OneAxis.hxx".}
proc vMax*(this: var BRepPrimOneAxis; v: StandardReal) {.importcpp: "VMax",
    header: "BRepPrim_OneAxis.hxx".}
proc makeEmptyLateralFace*(this: BRepPrimOneAxis): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_OneAxis.hxx".}
proc makeEmptyMeridianEdge*(this: BRepPrimOneAxis; ang: StandardReal): TopoDS_Edge {.
    noSideEffect, importcpp: "MakeEmptyMeridianEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc setMeridianPCurve*(this: BRepPrimOneAxis; e: var TopoDS_Edge; f: TopoDS_Face) {.
    noSideEffect, importcpp: "SetMeridianPCurve", header: "BRepPrim_OneAxis.hxx".}
proc meridianValue*(this: BRepPrimOneAxis; v: StandardReal): GpPnt2d {.noSideEffect,
    importcpp: "MeridianValue", header: "BRepPrim_OneAxis.hxx".}
proc meridianOnAxis*(this: BRepPrimOneAxis; v: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "MeridianOnAxis", header: "BRepPrim_OneAxis.hxx".}
proc meridianClosed*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "MeridianClosed", header: "BRepPrim_OneAxis.hxx".}
proc vMaxInfinite*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "VMaxInfinite", header: "BRepPrim_OneAxis.hxx".}
proc vMinInfinite*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "VMinInfinite", header: "BRepPrim_OneAxis.hxx".}
proc hasTop*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "HasTop", header: "BRepPrim_OneAxis.hxx".}
proc hasBottom*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "HasBottom", header: "BRepPrim_OneAxis.hxx".}
proc hasSides*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "HasSides", header: "BRepPrim_OneAxis.hxx".}
proc shell*(this: var BRepPrimOneAxis): TopoDS_Shell {.importcpp: "Shell",
    header: "BRepPrim_OneAxis.hxx".}
proc lateralFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "LateralFace",
    header: "BRepPrim_OneAxis.hxx".}
proc topFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "TopFace",
    header: "BRepPrim_OneAxis.hxx".}
proc bottomFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "BottomFace",
    header: "BRepPrim_OneAxis.hxx".}
proc startFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "StartFace",
    header: "BRepPrim_OneAxis.hxx".}
proc endFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "EndFace",
    header: "BRepPrim_OneAxis.hxx".}
proc lateralWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "LateralWire",
    header: "BRepPrim_OneAxis.hxx".}
proc lateralStartWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.
    importcpp: "LateralStartWire", header: "BRepPrim_OneAxis.hxx".}
proc lateralEndWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.
    importcpp: "LateralEndWire", header: "BRepPrim_OneAxis.hxx".}
proc topWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "TopWire",
    header: "BRepPrim_OneAxis.hxx".}
proc bottomWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "BottomWire",
    header: "BRepPrim_OneAxis.hxx".}
proc startWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "StartWire",
    header: "BRepPrim_OneAxis.hxx".}
proc axisStartWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.
    importcpp: "AxisStartWire", header: "BRepPrim_OneAxis.hxx".}
proc endWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "EndWire",
    header: "BRepPrim_OneAxis.hxx".}
proc axisEndWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "AxisEndWire",
    header: "BRepPrim_OneAxis.hxx".}
proc axisEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "AxisEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc startEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "StartEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc endEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "EndEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc startTopEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.
    importcpp: "StartTopEdge", header: "BRepPrim_OneAxis.hxx".}
proc startBottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.
    importcpp: "StartBottomEdge", header: "BRepPrim_OneAxis.hxx".}
proc endTopEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "EndTopEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc endBottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.
    importcpp: "EndBottomEdge", header: "BRepPrim_OneAxis.hxx".}
proc topEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "TopEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc bottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "BottomEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc axisTopVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "AxisTopVertex", header: "BRepPrim_OneAxis.hxx".}
proc axisBottomVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "AxisBottomVertex", header: "BRepPrim_OneAxis.hxx".}
proc topStartVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "TopStartVertex", header: "BRepPrim_OneAxis.hxx".}
proc topEndVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "TopEndVertex", header: "BRepPrim_OneAxis.hxx".}
proc bottomStartVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "BottomStartVertex", header: "BRepPrim_OneAxis.hxx".}
proc bottomEndVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "BottomEndVertex", header: "BRepPrim_OneAxis.hxx".}
proc destroyBRepPrimOneAxis*(this: var BRepPrimOneAxis) {.
    importcpp: "#.~BRepPrim_OneAxis()", header: "BRepPrim_OneAxis.hxx".}

