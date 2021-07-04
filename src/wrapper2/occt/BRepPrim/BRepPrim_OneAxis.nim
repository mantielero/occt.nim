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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepPrim_Builder, ../gp/gp_Ax2,
  ../Standard/Standard_Real, ../TopoDS/TopoDS_Shell, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Vertex, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Wire,
  ../TopoDS/TopoDS_Face

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
  BRepPrim_OneAxis* {.importcpp: "BRepPrim_OneAxis",
                     header: "BRepPrim_OneAxis.hxx", bycopy.} = object ## ! The MeridianOffset is added  to the  parameters on
                                                                  ## ! the meridian curve and  to  the  V values  of  the
                                                                  ## ! pcurves. This is  used for the sphere for example,
                                                                  ## ! to give a range on the meridian  edge which is not
                                                                  ## ! VMin, VMax.
                                                                  ## ! Creates a OneAxis algorithm.  <B> is used to build
                                                                  ## ! the Topology. The angle defaults to 2*PI.


proc SetMeridianOffset*(this: var BRepPrim_OneAxis;
                       MeridianOffset: Standard_Real = 0) {.
    importcpp: "SetMeridianOffset", header: "BRepPrim_OneAxis.hxx".}
proc Axes*(this: BRepPrim_OneAxis): gp_Ax2 {.noSideEffect, importcpp: "Axes",
    header: "BRepPrim_OneAxis.hxx".}
proc Axes*(this: var BRepPrim_OneAxis; A: gp_Ax2) {.importcpp: "Axes",
    header: "BRepPrim_OneAxis.hxx".}
proc Angle*(this: BRepPrim_OneAxis): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "BRepPrim_OneAxis.hxx".}
proc Angle*(this: var BRepPrim_OneAxis; A: Standard_Real) {.importcpp: "Angle",
    header: "BRepPrim_OneAxis.hxx".}
proc VMin*(this: BRepPrim_OneAxis): Standard_Real {.noSideEffect, importcpp: "VMin",
    header: "BRepPrim_OneAxis.hxx".}
proc VMin*(this: var BRepPrim_OneAxis; V: Standard_Real) {.importcpp: "VMin",
    header: "BRepPrim_OneAxis.hxx".}
proc VMax*(this: BRepPrim_OneAxis): Standard_Real {.noSideEffect, importcpp: "VMax",
    header: "BRepPrim_OneAxis.hxx".}
proc VMax*(this: var BRepPrim_OneAxis; V: Standard_Real) {.importcpp: "VMax",
    header: "BRepPrim_OneAxis.hxx".}
proc MakeEmptyLateralFace*(this: BRepPrim_OneAxis): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_OneAxis.hxx".}
proc MakeEmptyMeridianEdge*(this: BRepPrim_OneAxis; Ang: Standard_Real): TopoDS_Edge {.
    noSideEffect, importcpp: "MakeEmptyMeridianEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc SetMeridianPCurve*(this: BRepPrim_OneAxis; E: var TopoDS_Edge; F: TopoDS_Face) {.
    noSideEffect, importcpp: "SetMeridianPCurve", header: "BRepPrim_OneAxis.hxx".}
proc MeridianValue*(this: BRepPrim_OneAxis; V: Standard_Real): gp_Pnt2d {.
    noSideEffect, importcpp: "MeridianValue", header: "BRepPrim_OneAxis.hxx".}
proc MeridianOnAxis*(this: BRepPrim_OneAxis; V: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "MeridianOnAxis", header: "BRepPrim_OneAxis.hxx".}
proc MeridianClosed*(this: BRepPrim_OneAxis): Standard_Boolean {.noSideEffect,
    importcpp: "MeridianClosed", header: "BRepPrim_OneAxis.hxx".}
proc VMaxInfinite*(this: BRepPrim_OneAxis): Standard_Boolean {.noSideEffect,
    importcpp: "VMaxInfinite", header: "BRepPrim_OneAxis.hxx".}
proc VMinInfinite*(this: BRepPrim_OneAxis): Standard_Boolean {.noSideEffect,
    importcpp: "VMinInfinite", header: "BRepPrim_OneAxis.hxx".}
proc HasTop*(this: BRepPrim_OneAxis): Standard_Boolean {.noSideEffect,
    importcpp: "HasTop", header: "BRepPrim_OneAxis.hxx".}
proc HasBottom*(this: BRepPrim_OneAxis): Standard_Boolean {.noSideEffect,
    importcpp: "HasBottom", header: "BRepPrim_OneAxis.hxx".}
proc HasSides*(this: BRepPrim_OneAxis): Standard_Boolean {.noSideEffect,
    importcpp: "HasSides", header: "BRepPrim_OneAxis.hxx".}
proc Shell*(this: var BRepPrim_OneAxis): TopoDS_Shell {.importcpp: "Shell",
    header: "BRepPrim_OneAxis.hxx".}
proc LateralFace*(this: var BRepPrim_OneAxis): TopoDS_Face {.
    importcpp: "LateralFace", header: "BRepPrim_OneAxis.hxx".}
proc TopFace*(this: var BRepPrim_OneAxis): TopoDS_Face {.importcpp: "TopFace",
    header: "BRepPrim_OneAxis.hxx".}
proc BottomFace*(this: var BRepPrim_OneAxis): TopoDS_Face {.importcpp: "BottomFace",
    header: "BRepPrim_OneAxis.hxx".}
proc StartFace*(this: var BRepPrim_OneAxis): TopoDS_Face {.importcpp: "StartFace",
    header: "BRepPrim_OneAxis.hxx".}
proc EndFace*(this: var BRepPrim_OneAxis): TopoDS_Face {.importcpp: "EndFace",
    header: "BRepPrim_OneAxis.hxx".}
proc LateralWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.
    importcpp: "LateralWire", header: "BRepPrim_OneAxis.hxx".}
proc LateralStartWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.
    importcpp: "LateralStartWire", header: "BRepPrim_OneAxis.hxx".}
proc LateralEndWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.
    importcpp: "LateralEndWire", header: "BRepPrim_OneAxis.hxx".}
proc TopWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.importcpp: "TopWire",
    header: "BRepPrim_OneAxis.hxx".}
proc BottomWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.importcpp: "BottomWire",
    header: "BRepPrim_OneAxis.hxx".}
proc StartWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.importcpp: "StartWire",
    header: "BRepPrim_OneAxis.hxx".}
proc AxisStartWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.
    importcpp: "AxisStartWire", header: "BRepPrim_OneAxis.hxx".}
proc EndWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.importcpp: "EndWire",
    header: "BRepPrim_OneAxis.hxx".}
proc AxisEndWire*(this: var BRepPrim_OneAxis): TopoDS_Wire {.
    importcpp: "AxisEndWire", header: "BRepPrim_OneAxis.hxx".}
proc AxisEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.importcpp: "AxisEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc StartEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.importcpp: "StartEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc EndEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.importcpp: "EndEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc StartTopEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.
    importcpp: "StartTopEdge", header: "BRepPrim_OneAxis.hxx".}
proc StartBottomEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.
    importcpp: "StartBottomEdge", header: "BRepPrim_OneAxis.hxx".}
proc EndTopEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.importcpp: "EndTopEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc EndBottomEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.
    importcpp: "EndBottomEdge", header: "BRepPrim_OneAxis.hxx".}
proc TopEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.importcpp: "TopEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc BottomEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge {.importcpp: "BottomEdge",
    header: "BRepPrim_OneAxis.hxx".}
proc AxisTopVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex {.
    importcpp: "AxisTopVertex", header: "BRepPrim_OneAxis.hxx".}
proc AxisBottomVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex {.
    importcpp: "AxisBottomVertex", header: "BRepPrim_OneAxis.hxx".}
proc TopStartVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex {.
    importcpp: "TopStartVertex", header: "BRepPrim_OneAxis.hxx".}
proc TopEndVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex {.
    importcpp: "TopEndVertex", header: "BRepPrim_OneAxis.hxx".}
proc BottomStartVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex {.
    importcpp: "BottomStartVertex", header: "BRepPrim_OneAxis.hxx".}
proc BottomEndVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex {.
    importcpp: "BottomEndVertex", header: "BRepPrim_OneAxis.hxx".}
proc destroyBRepPrim_OneAxis*(this: var BRepPrim_OneAxis) {.
    importcpp: "#.~BRepPrim_OneAxis()", header: "BRepPrim_OneAxis.hxx".}