{.push header: "BRepPrim_OneAxis.hxx".}


# Constructors and methods
proc constructor_BRepPrim_OneAxis*(B: BRepPrim_Builder, A: gp_Ax2, VMin: cdouble, VMax: cdouble): BRepPrim_OneAxis {.constructor,importcpp: "BRepPrim_OneAxis(@)".}
  ## Creates a OneAxis algorithm. <B> is used to build the Topology. The
  ## angle defaults to 2*PI.
#[
proc ` new`*(this: var BRepPrim_OneAxis, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_OneAxis, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_OneAxis, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_OneAxis, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_OneAxis, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_OneAxis, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc setMeridianOffset*(this: var BRepPrim_OneAxis, MeridianOffset: cdouble)  {.importcpp: "SetMeridianOffset".}
  ## The MeridianOffset is added to the parameters on the meridian curve
  ## and to the V values of the pcurves. This is used for the sphere for
  ## example, to give a range on the meridian edge which is not VMin, VMax.

proc axes*(this: BRepPrim_OneAxis): gp_Ax2  {.importcpp: "Axes".}
  ## Returns the Ax2 from <me>.

proc axes*(this: var BRepPrim_OneAxis, A: gp_Ax2)  {.importcpp: "Axes".}

proc angle*(this: BRepPrim_OneAxis): cdouble  {.importcpp: "Angle".}

proc angle*(this: var BRepPrim_OneAxis, A: cdouble)  {.importcpp: "Angle".}

proc vMin*(this: BRepPrim_OneAxis): cdouble  {.importcpp: "VMin".}

proc vMin*(this: var BRepPrim_OneAxis, V: cdouble)  {.importcpp: "VMin".}

proc vMax*(this: BRepPrim_OneAxis): cdouble  {.importcpp: "VMax".}

proc vMax*(this: var BRepPrim_OneAxis, V: cdouble)  {.importcpp: "VMax".}

proc makeEmptyLateralFace*(this: BRepPrim_OneAxis): TopoDS_Face  {.importcpp: "MakeEmptyLateralFace".}
  ## Returns a face with no edges. The surface is the lateral surface with
  ## normals pointing outward. The U parameter is the angle with the origin
  ## on the X axis. The V parameter is the parameter of the meridian.

proc makeEmptyMeridianEdge*(this: BRepPrim_OneAxis, Ang: cdouble): TopoDS_Edge  {.importcpp: "MakeEmptyMeridianEdge".}
  ## Returns an edge with a 3D curve made from the meridian in the XZ plane
  ## rotated by <Ang> around the Z-axis. Ang may be 0 or myAngle.

proc setMeridianPCurve*(this: BRepPrim_OneAxis, E: var TopoDS_Edge, F: TopoDS_Face)  {.importcpp: "SetMeridianPCurve".}
  ## Sets the parametric curve of the edge <E> in the face <F> to be the 2d
  ## representation of the meridian.

proc meridianValue*(this: BRepPrim_OneAxis, V: cdouble): gp_Pnt2d  {.importcpp: "MeridianValue".}
  ## Returns the meridian point at parameter <V> in the plane XZ.

proc meridianOnAxis*(this: BRepPrim_OneAxis, V: cdouble): bool  {.importcpp: "MeridianOnAxis".}
  ## Returns True if the point of parameter <V> on the meridian is on the
  ## Axis. Default implementation is Abs(MeridianValue(V).X()) <
  ## Precision::Confusion()

proc meridianClosed*(this: BRepPrim_OneAxis): bool  {.importcpp: "MeridianClosed".}
  ## Returns True if the meridian is closed. Default implementation is
  ## MeridianValue(VMin).IsEqual(MeridianValue(VMax),
  ## Precision::Confusion())

proc vMaxInfinite*(this: BRepPrim_OneAxis): bool  {.importcpp: "VMaxInfinite".}
  ## Returns True if VMax is infinite. Default
  ## Precision::IsPositiveInfinite(VMax);

proc vMinInfinite*(this: BRepPrim_OneAxis): bool  {.importcpp: "VMinInfinite".}
  ## Returns True if VMin is infinite. Default
  ## Precision::IsNegativeInfinite(VMax);

proc hasTop*(this: BRepPrim_OneAxis): bool  {.importcpp: "HasTop".}
  ## Returns True if there is a top face.

proc hasBottom*(this: BRepPrim_OneAxis): bool  {.importcpp: "HasBottom".}
  ## Returns True if there is a bottom face.

proc hasSides*(this: BRepPrim_OneAxis): bool  {.importcpp: "HasSides".}
  ## Returns True if there are Start and End faces.

proc shell*(this: var BRepPrim_OneAxis): TopoDS_Shell  {.importcpp: "Shell".}
  ## Returns the Shell containing all the Faces of the primitive.

proc lateralFace*(this: var BRepPrim_OneAxis): TopoDS_Face  {.importcpp: "LateralFace".}
  ## Returns the lateral Face. It is oriented toward the outside of the
  ## primitive.

proc topFace*(this: var BRepPrim_OneAxis): TopoDS_Face  {.importcpp: "TopFace".}
  ## Returns the top planar Face. It is Oriented toward the +Z axis
  ## (outside).

proc bottomFace*(this: var BRepPrim_OneAxis): TopoDS_Face  {.importcpp: "BottomFace".}
  ## Returns the Bottom planar Face. It is Oriented toward the -Z axis
  ## (outside).

proc startFace*(this: var BRepPrim_OneAxis): TopoDS_Face  {.importcpp: "StartFace".}
  ## Returns the Face starting the slice, it is oriented toward the
  ## exterior of the primitive.

proc endFace*(this: var BRepPrim_OneAxis): TopoDS_Face  {.importcpp: "EndFace".}
  ## Returns the Face ending the slice, it is oriented toward the exterior
  ## of the primitive.

proc lateralWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "LateralWire".}
  ## Returns the wire in the lateral face.

proc lateralStartWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "LateralStartWire".}
  ## Returns the wire in the lateral face with the start edge.

proc lateralEndWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "LateralEndWire".}
  ## Returns the wire with in lateral face with the end edge.

proc topWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "TopWire".}
  ## Returns the wire in the top face.

proc bottomWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "BottomWire".}
  ## Returns the wire in the bottom face.

proc startWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "StartWire".}
  ## Returns the wire in the start face.

proc axisStartWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "AxisStartWire".}
  ## Returns the wire in the start face with the AxisEdge.

proc endWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "EndWire".}
  ## Returns the Wire in the end face.

proc axisEndWire*(this: var BRepPrim_OneAxis): TopoDS_Wire  {.importcpp: "AxisEndWire".}
  ## Returns the Wire in the end face with the AxisEdge.

proc axisEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "AxisEdge".}
  ## Returns the Edge built along the Axis and oriented on +Z of the Axis.

proc startEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "StartEdge".}
  ## Returns the Edge at angle 0.

proc endEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "EndEdge".}
  ## Returns the Edge at angle Angle. If !HasSides() the StartEdge and the
  ## EndEdge are the same edge.

proc startTopEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "StartTopEdge".}
  ## Returns the linear Edge between start Face and top Face.

proc startBottomEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "StartBottomEdge".}
  ## Returns the linear Edge between start Face and bottom Face.

proc endTopEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "EndTopEdge".}
  ## Returns the linear Edge between end Face and top Face.

proc endBottomEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "EndBottomEdge".}
  ## Returns the linear Edge between end Face and bottom Face.

proc topEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "TopEdge".}
  ## Returns the edge at VMax. If MeridianClosed() the TopEdge and the
  ## BottomEdge are the same edge.

proc bottomEdge*(this: var BRepPrim_OneAxis): TopoDS_Edge  {.importcpp: "BottomEdge".}
  ## Returns the edge at VMin. If MeridianClosed() the TopEdge and the
  ## BottomEdge are the same edge.

proc axisTopVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex  {.importcpp: "AxisTopVertex".}
  ## Returns the Vertex at the Top altitude on the axis.

proc axisBottomVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex  {.importcpp: "AxisBottomVertex".}
  ## Returns the Vertex at the Bottom altitude on the axis.

proc topStartVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex  {.importcpp: "TopStartVertex".}
  ## Returns the vertex (0,VMax)

proc topEndVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex  {.importcpp: "TopEndVertex".}
  ## Returns the vertex (angle,VMax)

proc bottomStartVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex  {.importcpp: "BottomStartVertex".}
  ## Returns the vertex (0,VMin)

proc bottomEndVertex*(this: var BRepPrim_OneAxis): TopoDS_Vertex  {.importcpp: "BottomEndVertex".}
  ## Returns the vertex (angle,VMax)

{.pop.} # header: "BRepPrim_OneAxis.hxx
