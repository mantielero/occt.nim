type
  BRepPrimAPI_MakeCone* {.header: "BRepPrimAPI_MakeCone.hxx", importcpp: "BRepPrimAPI_MakeCone", byref.} = object
  ## Describes functions to build cones or portions of cones. A MakeCone
  ## object provides a framework for: - defining the construction of a
  ## cone, - implementing the construction algorithm, and - consulting the
  ## result.

  BRepPrimAPI_MakeTorus* {.header: "BRepPrimAPI_MakeTorus.hxx", importcpp: "BRepPrimAPI_MakeTorus", byref.} = object
  ## Describes functions to build tori or portions of tori. A MakeTorus
  ## object provides a framework for: - defining the construction of a
  ## torus, - implementing the construction algorithm, and - consulting the
  ## result.

  BRepPrimAPI_MakeSweep* {.header: "BRepPrimAPI_MakeSweep.hxx", importcpp: "BRepPrimAPI_MakeSweep", byref.} = object
  ## The abstract class MakeSweep is the root class of swept primitives.
  ## Sweeps are objects you obtain by sweeping a profile along a path. The
  ## profile can be any topology and the path is usually a curve or a wire.
  ## The profile generates objects according to the following rules: -
  ## Vertices generate Edges - Edges generate Faces. - Wires generate
  ## Shells. - Faces generate Solids. - Shells generate Composite Solids.
  ## You are not allowed to sweep Solids and Composite Solids. Two kinds of
  ## sweeps are implemented in the BRepPrimAPI package: - The linear sweep
  ## called a Prism - The rotational sweep called a Revol Swept
  ## constructions along complex profiles such as BSpline curves are also
  ## available in the BRepOffsetAPI package..

  BRepPrimAPI_MakeSphere* {.header: "BRepPrimAPI_MakeSphere.hxx", importcpp: "BRepPrimAPI_MakeSphere", byref.} = object
  ## Describes functions to build spheres or portions of spheres. A
  ## MakeSphere object provides a framework for: - defining the
  ## construction of a sphere, - implementing the construction algorithm,
  ## and - consulting the result.

  BRepPrimAPI_MakeOneAxis* {.header: "BRepPrimAPI_MakeOneAxis.hxx", importcpp: "BRepPrimAPI_MakeOneAxis", byref.} = object
  ## The abstract class MakeOneAxis is the root class of algorithms used to
  ## construct rotational primitives.

  BRepPrimAPI_MakeCylinder* {.header: "BRepPrimAPI_MakeCylinder.hxx", importcpp: "BRepPrimAPI_MakeCylinder", byref.} = object
  ## Describes functions to build cylinders or portions of cylinders. A
  ## MakeCylinder object provides a framework for: - defining the
  ## construction of a cylinder, - implementing the construction algorithm,
  ## and - consulting the result.

  BRepPrimAPI_MakeRevol* {.header: "BRepPrimAPI_MakeRevol.hxx", importcpp: "BRepPrimAPI_MakeRevol", byref.} = object
  ## Class to make revolved sweep topologies.

  BRepPrimAPI_MakeRevolution* {.header: "BRepPrimAPI_MakeRevolution.hxx", importcpp: "BRepPrimAPI_MakeRevolution", byref.} = object
  ## Describes functions to build revolved shapes. A MakeRevolution object
  ## provides a framework for: - defining the construction of a revolved
  ## shape, - implementing the construction algorithm, and - consulting the
  ## result.

  BRepPrimAPI_MakePrism* {.header: "BRepPrimAPI_MakePrism.hxx", importcpp: "BRepPrimAPI_MakePrism", byref.} = object
  ## Describes functions to build linear swept topologies, called prisms. A
  ## prism is defined by: - a basis shape, which is swept, and - a sweeping
  ## direction, which is: - a vector for finite prisms, or - a direction
  ## for infinite or semi-infinite prisms. The basis shape must not contain
  ## any solids. The profile generates objects according to the following
  ## rules: - Vertices generate Edges - Edges generate Faces. - Wires
  ## generate Shells. - Faces generate Solids. - Shells generate Composite
  ## Solids A MakePrism object provides a framework for: - defining the
  ## construction of a prism, - implementing the construction algorithm,
  ## and - consulting the result.

  BRepPrimAPI_MakeWedge* {.header: "BRepPrimAPI_MakeWedge.hxx", importcpp: "BRepPrimAPI_MakeWedge", byref.} = object
  ## Describes functions to build wedges, i.e. boxes with inclined faces. A
  ## MakeWedge object provides a framework for: - defining the construction
  ## of a wedge, - implementing the construction algorithm, and -
  ## consulting the result.

  BRepPrimAPI_MakeHalfSpace* {.header: "BRepPrimAPI_MakeHalfSpace.hxx", importcpp: "BRepPrimAPI_MakeHalfSpace", byref.} = object
  ## Describes functions to build half-spaces. A half-space is an infinite
  ## solid, limited by a surface. It is built from a face or a shell, which
  ## bounds it, and with a reference point, which specifies the side of the
  ## surface where the matter of the half-space is located. A half-space is
  ## a tool commonly used in topological operations to cut another shape. A
  ## MakeHalfSpace object provides a framework for: - defining and
  ## implementing the construction of a half-space, and - consulting the
  ## result.

  BRepPrimAPI_MakeBox* {.header: "BRepPrimAPI_MakeBox.hxx", importcpp: "BRepPrimAPI_MakeBox", byref.} = object
  ## Describes functions to build parallelepiped boxes. A MakeBox object
  ## provides a framework for: - defining the construction of a box, -
  ## implementing the construction algorithm, and - consulting the result.

  #Handle* {.importcpp: "opencascade::handle", header: "<map>".} [K] = object

include "BRepPrimAPI_MakeCone.nim"
include "BRepPrimAPI_MakeTorus.nim"
include "BRepPrimAPI_MakeSweep.nim"
include "BRepPrimAPI_MakeSphere.nim"
include "BRepPrimAPI_MakeOneAxis.nim"
include "BRepPrimAPI_MakeCylinder.nim"
#include "BRepPrimAPI_MakeRevol.nim"
#include "BRepPrimAPI_MakeRevolution.nim"
#include "BRepPrimAPI_MakePrism.nim"
include "BRepPrimAPI_MakeWedge.nim"
include "BRepPrimAPI_MakeHalfSpace.nim"
include "BRepPrimAPI_MakeBox.nim"
