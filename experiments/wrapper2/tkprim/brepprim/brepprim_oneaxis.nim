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


proc setMeridianOffset*(this: var BRepPrimOneAxis; meridianOffset: cfloat = 0) {.cdecl,
    importcpp: "SetMeridianOffset", dynlib: tkprim.}
proc axes*(this: BRepPrimOneAxis): Ax2 {.noSideEffect, cdecl, importcpp: "Axes",
                                     dynlib: tkprim.}
proc axes*(this: var BRepPrimOneAxis; a: Ax2) {.cdecl, importcpp: "Axes", dynlib: tkprim.}
proc angle*(this: BRepPrimOneAxis): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
    dynlib: tkprim.}
proc angle*(this: var BRepPrimOneAxis; a: cfloat) {.cdecl, importcpp: "Angle",
    dynlib: tkprim.}
proc vMin*(this: BRepPrimOneAxis): cfloat {.noSideEffect, cdecl, importcpp: "VMin",
                                        dynlib: tkprim.}
proc vMin*(this: var BRepPrimOneAxis; v: cfloat) {.cdecl, importcpp: "VMin",
    dynlib: tkprim.}
proc vMax*(this: BRepPrimOneAxis): cfloat {.noSideEffect, cdecl, importcpp: "VMax",
                                        dynlib: tkprim.}
proc vMax*(this: var BRepPrimOneAxis; v: cfloat) {.cdecl, importcpp: "VMax",
    dynlib: tkprim.}
proc makeEmptyLateralFace*(this: BRepPrimOneAxis): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "MakeEmptyLateralFace", dynlib: tkprim.}
proc makeEmptyMeridianEdge*(this: BRepPrimOneAxis; ang: cfloat): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "MakeEmptyMeridianEdge", dynlib: tkprim.}
proc setMeridianPCurve*(this: BRepPrimOneAxis; e: var TopoDS_Edge; f: TopoDS_Face) {.
    noSideEffect, cdecl, importcpp: "SetMeridianPCurve", dynlib: tkprim.}
proc meridianValue*(this: BRepPrimOneAxis; v: cfloat): Pnt2d {.noSideEffect, cdecl,
    importcpp: "MeridianValue", dynlib: tkprim.}
proc meridianOnAxis*(this: BRepPrimOneAxis; v: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "MeridianOnAxis", dynlib: tkprim.}
proc meridianClosed*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "MeridianClosed", dynlib: tkprim.}
proc vMaxInfinite*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "VMaxInfinite", dynlib: tkprim.}
proc vMinInfinite*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "VMinInfinite", dynlib: tkprim.}
proc hasTop*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl, importcpp: "HasTop",
                                        dynlib: tkprim.}
proc hasBottom*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "HasBottom", dynlib: tkprim.}
proc hasSides*(this: BRepPrimOneAxis): bool {.noSideEffect, cdecl,
    importcpp: "HasSides", dynlib: tkprim.}
proc shell*(this: var BRepPrimOneAxis): TopoDS_Shell {.cdecl, importcpp: "Shell",
    dynlib: tkprim.}
proc lateralFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl,
    importcpp: "LateralFace", dynlib: tkprim.}
proc topFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl, importcpp: "TopFace",
    dynlib: tkprim.}
proc bottomFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl,
    importcpp: "BottomFace", dynlib: tkprim.}
proc startFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl,
    importcpp: "StartFace", dynlib: tkprim.}
proc endFace*(this: var BRepPrimOneAxis): TopoDS_Face {.cdecl, importcpp: "EndFace",
    dynlib: tkprim.}
proc lateralWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "LateralWire", dynlib: tkprim.}
proc lateralStartWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "LateralStartWire", dynlib: tkprim.}
proc lateralEndWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "LateralEndWire", dynlib: tkprim.}
proc topWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl, importcpp: "TopWire",
    dynlib: tkprim.}
proc bottomWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "BottomWire", dynlib: tkprim.}
proc startWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "StartWire", dynlib: tkprim.}
proc axisStartWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "AxisStartWire", dynlib: tkprim.}
proc endWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl, importcpp: "EndWire",
    dynlib: tkprim.}
proc axisEndWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.cdecl,
    importcpp: "AxisEndWire", dynlib: tkprim.}
proc axisEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl, importcpp: "AxisEdge",
    dynlib: tkprim.}
proc startEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "StartEdge", dynlib: tkprim.}
proc endEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl, importcpp: "EndEdge",
    dynlib: tkprim.}
proc startTopEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "StartTopEdge", dynlib: tkprim.}
proc startBottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "StartBottomEdge", dynlib: tkprim.}
proc endTopEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "EndTopEdge", dynlib: tkprim.}
proc endBottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "EndBottomEdge", dynlib: tkprim.}
proc topEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl, importcpp: "TopEdge",
    dynlib: tkprim.}
proc bottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.cdecl,
    importcpp: "BottomEdge", dynlib: tkprim.}
proc axisTopVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "AxisTopVertex", dynlib: tkprim.}
proc axisBottomVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "AxisBottomVertex", dynlib: tkprim.}
proc topStartVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "TopStartVertex", dynlib: tkprim.}
proc topEndVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "TopEndVertex", dynlib: tkprim.}
proc bottomStartVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "BottomStartVertex", dynlib: tkprim.}
proc bottomEndVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.cdecl,
    importcpp: "BottomEndVertex", dynlib: tkprim.}
proc destroyBRepPrimOneAxis*(this: var BRepPrimOneAxis) {.cdecl,
    importcpp: "#.~BRepPrim_OneAxis()", dynlib: tkprim.}