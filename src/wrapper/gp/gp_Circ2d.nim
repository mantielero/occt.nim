{.push header: "gp_Circ2d.hxx".}


# Constructors and methods
proc constructor_gp_Circ2d*(): gp_Circ2d {.constructor,importcpp: "gp_Circ2d".}
  ## creates an indefinite circle.

proc constructor_gp_Circ2d*(XAxis: gp_Ax2d, Radius: Standard_Real, Sense: Standard_Boolean): gp_Circ2d {.constructor,importcpp: "gp_Circ2d(@)".}
  ## The location point of XAxis is the center of the circle. Warnings : It
  ## is not forbidden to create a circle with Radius = 0.0 Raises
  ## ConstructionError if Radius < 0.0. Raised if Radius < 0.0.

proc constructor_gp_Circ2d*(Axis: gp_Ax22d, Radius: Standard_Real): gp_Circ2d {.constructor,importcpp: "gp_Circ2d(@)".}
  ## Axis defines the Xaxis and Yaxis of the circle which defines the
  ## origin and the sense of parametrization. The location point of Axis is
  ## the center of the circle. Warnings : It is not forbidden to create a
  ## circle with Radius = 0.0 Raises ConstructionError if Radius < 0.0.
  ## Raised if Radius < 0.0.

proc ` new`*(this: var gp_Circ2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Circ2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Circ2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Circ2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Circ2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Circ2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetLocation*(this: var gp_Circ2d, P: gp_Pnt2d)  {.importcpp: "SetLocation".}
  ## Changes the location point (center) of the circle.

proc SetXAxis*(this: var gp_Circ2d, A: gp_Ax2d)  {.importcpp: "SetXAxis".}
  ## Changes the X axis of the circle.

proc SetAxis*(this: var gp_Circ2d, A: gp_Ax22d)  {.importcpp: "SetAxis".}
  ## Changes the X axis of the circle.

proc SetYAxis*(this: var gp_Circ2d, A: gp_Ax2d)  {.importcpp: "SetYAxis".}
  ## Changes the Y axis of the circle.

proc SetRadius*(this: var gp_Circ2d, Radius: Standard_Real)  {.importcpp: "SetRadius".}
  ## Modifies the radius of this circle. This class does not prevent the
  ## creation of a circle where Radius is null. Exceptions
  ## Standard_ConstructionError if Radius is negative.

proc Area*(this: gp_Circ2d): Standard_Real  {.importcpp: "Area".}
  ## Computes the area of the circle.

proc Coefficients*(this: gp_Circ2d, A: var Standard_Real, B: var Standard_Real, C: var Standard_Real, D: var Standard_Real, E: var Standard_Real, F: var Standard_Real)  {.importcpp: "Coefficients".}
  ## Returns the normalized coefficients from the implicit equation of the
  ## circle : A * (X**2) + B * (Y**2) + 2*C*(X*Y) + 2*D*X + 2*E*Y + F = 0.0

proc Contains*(this: gp_Circ2d, P: gp_Pnt2d, LinearTolerance: Standard_Real): Standard_Boolean  {.importcpp: "Contains".}
  ## Does <me> contain P ? Returns True if the distance between P and any
  ## point on the circumference of the circle is lower of equal to
  ## <LinearTolerance>.

proc Distance*(this: gp_Circ2d, P: gp_Pnt2d): Standard_Real  {.importcpp: "Distance".}
  ## Computes the minimum of distance between the point P and any point on
  ## the circumference of the circle.

proc SquareDistance*(this: gp_Circ2d, P: gp_Pnt2d): Standard_Real  {.importcpp: "SquareDistance".}
  ## Computes the square distance between <me> and the point P.

proc Length*(this: gp_Circ2d): Standard_Real  {.importcpp: "Length".}
  ## computes the circumference of the circle.

proc Location*(this: gp_Circ2d): gp_Pnt2d  {.importcpp: "Location".}
  ## Returns the location point (center) of the circle.

proc Radius*(this: gp_Circ2d): Standard_Real  {.importcpp: "Radius".}
  ## Returns the radius value of the circle.

proc Axis*(this: gp_Circ2d): gp_Ax22d  {.importcpp: "Axis".}
  ## returns the position of the circle.

proc Position*(this: gp_Circ2d): gp_Ax22d  {.importcpp: "Position".}
  ## returns the position of the circle. Idem Axis(me).

proc XAxis*(this: gp_Circ2d): gp_Ax2d  {.importcpp: "XAxis".}
  ## returns the X axis of the circle.

proc YAxis*(this: gp_Circ2d): gp_Ax2d  {.importcpp: "YAxis".}
  ## Returns the Y axis of the circle. Reverses the direction of the
  ## circle.

proc Reverse*(this: var gp_Circ2d)  {.importcpp: "Reverse".}
  ## Reverses the orientation of the local coordinate system of this circle
  ## (the "Y Direction" is reversed) and therefore changes the implicit
  ## orientation of this circle. Reverse assigns the result to this circle,

proc Reversed*(this: gp_Circ2d): gp_Circ2d  {.importcpp: "Reversed".}
  ## Reverses the orientation of the local coordinate system of this circle
  ## (the "Y Direction" is reversed) and therefore changes the implicit
  ## orientation of this circle. Reversed creates a new circle.

proc IsDirect*(this: gp_Circ2d): Standard_Boolean  {.importcpp: "IsDirect".}
  ## Returns true if the local coordinate system is direct and false in the
  ## other case.

proc Mirror*(this: var gp_Circ2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Circ2d, P: gp_Pnt2d): gp_Circ2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a circle with respect to
  ## the point P which is the center of the symmetry

proc Mirror*(this: var gp_Circ2d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Circ2d, A: gp_Ax2d): gp_Circ2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a circle with respect to an
  ## axis placement which is the axis of the symmetry.

proc Rotate*(this: var gp_Circ2d, P: gp_Pnt2d, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Circ2d, P: gp_Pnt2d, Ang: Standard_Real): gp_Circ2d  {.importcpp: "Rotated".}
  ## Rotates a circle. P is the center of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Circ2d, P: gp_Pnt2d, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Circ2d, P: gp_Pnt2d, S: Standard_Real): gp_Circ2d  {.importcpp: "Scaled".}
  ## Scales a circle. S is the scaling value. Warnings : If S is negative
  ## the radius stay positive but the "XAxis" and the "YAxis" are reversed
  ## as for an ellipse.

proc Transform*(this: var gp_Circ2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Circ2d, T: gp_Trsf2d): gp_Circ2d  {.importcpp: "Transformed".}
  ## Transforms a circle with the transformation T from class Trsf2d.

proc Translate*(this: var gp_Circ2d, V: gp_Vec2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Circ2d, V: gp_Vec2d): gp_Circ2d  {.importcpp: "Translated".}
  ## Translates a circle in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Circ2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Circ2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Circ2d  {.importcpp: "Translated".}
  ## Translates a circle from the point P1 to the point P2.

{.pop.} # header: "gp_Circ2d.hxx
