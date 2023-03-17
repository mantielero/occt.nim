# https://replicad.xyz/docs/tutorial-overview/using-the-workbench
import occt
# sketchOnPlane() not used

proc main =
  ellipse(30,20).extrude(50).fillet(2).toStep("replicad_01.stp")

main()



#[
In replicad.xyz, the "sketchOnPlane" function is used to create a 2D sketch on a specific plane in 3D space.

The function takes three arguments:

The first argument is a reference to the "plane" object which defines the plane on which the sketch will be created.
The second argument is a list of "SketchItem" objects which describe the geometry of the sketch.
The third argument is a dictionary of options which can be used to customize the behavior of the sketch.
The "SketchItem" objects can include lines, arcs, circles, rectangles, and other geometric primitives that can be used to create complex 2D shapes.

The options dictionary can include settings such as the color and thickness of the sketch lines, the fill style of the sketch, and whether the sketch should be mirrored or scaled.

Once the sketch is created, it can be used to create a 3D object by extruding, sweeping, or lofting the sketch along a path or between other shapes.

Overall, the "sketchOnPlane" function is an important tool for creating 2D sketches that can be used to design and fabricate 3D objects in replicad.xyz.

]#

#[
sketchOnPlane(
  inputPlane?: PlaneName | Plane,
  origin?: Point | number
): Sketch {
  const plane =
    inputPlane instanceof Plane
      ? makePlane(inputPlane)
      : makePlane(inputPlane, origin);

  const edges = curvesAsEdgesOnPlane(this.curves, plane);
  const wire = assembleWire(edges);

  return new Sketch(wire, {
    defaultOrigin: plane.origin,
    defaultDirection: plane.zDir,
  });
}
]#
