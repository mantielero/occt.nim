{.push header: "gp_Circ.hxx".}


# Constructors and methods
proc Circ*(): gp_Circ {.constructor,importcpp: "gp_Circ".}
  ## Creates an indefinite circle.

proc Circ*(A2: gp_Ax2, Radius: cdouble): gp_Circ {.constructor,importcpp: "gp_Circ(@)".}
  ## A2 locates the circle and gives its orientation in 3D space. Warnings
  ## : It is not forbidden to create a circle with Radius = 0.0 Raises
  ## ConstructionError if Radius < 0.0
#[
proc ` new`*(this: var gp_Circ, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Circ, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Circ, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Circ, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Circ, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Circ, pointer, pointer)  {.importcpp: "` delete`".}
]#
proc setAxis*(this: var gp_Circ, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Changes the main axis of the circle. It is the axis perpendicular to
  ## the plane of the circle. Raises ConstructionError if the direction of
  ## A1 is parallel to the "XAxis" of the circle.

proc setLocation*(this: var gp_Circ, P: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the "Location" point (center) of the circle.

proc setPosition*(this: var gp_Circ, A2: gp_Ax2)  {.importcpp: "SetPosition".}
  ## Changes the position of the circle.

proc setRadius*(this: var gp_Circ, Radius: cdouble)  {.importcpp: "SetRadius".}
  ## Modifies the radius of this circle. Warning. This class does not
  ## prevent the creation of a circle where Radius is null. Exceptions
  ## Standard_ConstructionError if Radius is negative.

proc area*(this: gp_Circ): cdouble  {.importcpp: "Area".}
  ## Computes the area of the circle.

proc axis*(this: gp_Circ): gp_Ax1  {.importcpp: "Axis".}
  ## Returns the main axis of the circle. It is the axis perpendicular to
  ## the plane of the circle, passing through the "Location" point (center)
  ## of the circle.

proc length*(this: gp_Circ): cdouble  {.importcpp: "Length".}
  ## Computes the circumference of the circle.

proc location*(this: gp_Circ): gp_Pnt  {.importcpp: "Location".}
  ## Returns the center of the circle. It is the "Location" point of the
  ## local coordinate system of the circle

proc position*(this: gp_Circ): gp_Ax2  {.importcpp: "Position".}
  ## Returns the position of the circle. It is the local coordinate system
  ## of the circle.

proc radius*(this: gp_Circ): cdouble  {.importcpp: "Radius".}
  ## Returns the radius of this circle.

proc xAxis*(this: gp_Circ): gp_Ax1  {.importcpp: "XAxis".}
  ## Returns the "XAxis" of the circle. This axis is perpendicular to the
  ## axis of the conic. This axis and the "Yaxis" define the plane of the
  ## conic.

proc yAxis*(this: gp_Circ): gp_Ax1  {.importcpp: "YAxis".}
  ## Returns the "YAxis" of the circle. This axis and the "Xaxis" define
  ## the plane of the conic. The "YAxis" is perpendicular to the "Xaxis".

proc distance*(this: gp_Circ, P: gp_Pnt): cdouble  {.importcpp: "Distance".}
  ## Computes the minimum of distance between the point P and any point on
  ## the circumference of the circle.

proc squareDistance*(this: gp_Circ, P: gp_Pnt): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between <me> and the point P.

proc contains*(this: gp_Circ, P: gp_Pnt, LinearTolerance: cdouble): bool  {.importcpp: "Contains".}
  ## Returns True if the point P is on the circumference. The distance
  ## between <me> and <P> must be lower or equal to LinearTolerance.

proc mirror*(this: var gp_Circ, P: gp_Pnt)  {.importcpp: "Mirror".}

proc mirrored*(this: gp_Circ, P: gp_Pnt): gp_Circ  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a circle with respect to
  ## the point P which is the center of the symmetry.

proc mirror*(this: var gp_Circ, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc mirrored*(this: gp_Circ, A1: gp_Ax1): gp_Circ  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a circle with respect to an
  ## axis placement which is the axis of the symmetry.

proc mirror*(this: var gp_Circ, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc mirrored*(this: gp_Circ, A2: gp_Ax2): gp_Circ  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a circle with respect to a
  ## plane. The axis placement A2 locates the plane of the of the symmetry
  ## : (Location, XDirection, YDirection).

proc rotate*(this: var gp_Circ, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc rotated*(this: gp_Circ, A1: gp_Ax1, Ang: cdouble): gp_Circ  {.importcpp: "Rotated".}
  ## Rotates a circle. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc scale*(this: var gp_Circ, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}

proc scaled*(this: gp_Circ, P: gp_Pnt, S: cdouble): gp_Circ  {.importcpp: "Scaled".}
  ## Scales a circle. S is the scaling value. Warnings : If S is negative
  ## the radius stay positive but the "XAxis" and the "YAxis" are reversed
  ## as for an ellipse.

proc transform*(this: var gp_Circ, T: gp_Trsf)  {.importcpp: "Transform".}

proc transformed*(this: gp_Circ, T: gp_Trsf): gp_Circ  {.importcpp: "Transformed".}
  ## Transforms a circle with the transformation T from class Trsf.

proc translate*(this: var gp_Circ, V: gp_Vec)  {.importcpp: "Translate".}

proc translated*(this: gp_Circ, V: gp_Vec): gp_Circ  {.importcpp: "Translated".}
  ## Translates a circle in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc translate*(this: var gp_Circ, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc translated*(this: gp_Circ, P1: gp_Pnt, P2: gp_Pnt): gp_Circ  {.importcpp: "Translated".}
  ## Translates a circle from the point P1 to the point P2.

{.pop.} # header: "gp_Circ.hxx
