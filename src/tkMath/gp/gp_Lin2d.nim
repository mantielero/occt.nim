{.push header: "gp_Lin2d.hxx".}


# Constructors and methods
proc constructor_gp_Lin2d*(): gp_Lin2d {.constructor,importcpp: "gp_Lin2d".}
  ## Creates a Line corresponding to X axis of the reference coordinate
  ## system.

proc constructor_gp_Lin2d*(A: gp_Ax2d): gp_Lin2d {.constructor,importcpp: "gp_Lin2d(@)".}
  ## Creates a line located with A.

proc constructor_gp_Lin2d*(P: gp_Pnt2d, V: gp_Dir2d): gp_Lin2d {.constructor,importcpp: "gp_Lin2d(@)".}
  ## <P> is the location point (origin) of the line and <V> is the
  ## direction of the line.

proc constructor_gp_Lin2d*(A: cdouble, B: cdouble, C: cdouble): gp_Lin2d {.constructor,importcpp: "gp_Lin2d(@)".}
  ## Creates the line from the equation A*X + B*Y + C = 0.0 Raises
  ## ConstructionError if Sqrt(A*A + B*B) <= Resolution from gp. Raised if
  ## Sqrt(A*A + B*B) <= Resolution from gp.

proc ` new`*(this: var gp_Lin2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Lin2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Lin2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Lin2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Lin2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Lin2d, pointer, pointer)  {.importcpp: "` delete`".}

proc Reverse*(this: var gp_Lin2d)  {.importcpp: "Reverse".}

proc Reversed*(this: gp_Lin2d): gp_Lin2d  {.importcpp: "Reversed".}
  ## Reverses the positioning axis of this line. Note: - Reverse assigns
  ## the result to this line, while - Reversed creates a new one.

proc SetDirection*(this: var gp_Lin2d, V: gp_Dir2d)  {.importcpp: "SetDirection".}
  ## Changes the direction of the line.

proc SetLocation*(this: var gp_Lin2d, P: gp_Pnt2d)  {.importcpp: "SetLocation".}
  ## Changes the origin of the line.

proc SetPosition*(this: var gp_Lin2d, A: gp_Ax2d)  {.importcpp: "SetPosition".}
  ## Complete redefinition of the line. The "Location" point of <A> is the
  ## origin of the line. The "Direction" of <A> is the direction of the
  ## line.

proc Coefficients*(this: gp_Lin2d, A: var cdouble, B: var cdouble, C: var cdouble)  {.importcpp: "Coefficients".}
  ## Returns the normalized coefficients of the line : A * X + B * Y + C =
  ## 0.

proc Direction*(this: gp_Lin2d): gp_Dir2d  {.importcpp: "Direction".}
  ## Returns the direction of the line.

proc Location*(this: gp_Lin2d): gp_Pnt2d  {.importcpp: "Location".}
  ## Returns the location point (origin) of the line.

proc Position*(this: gp_Lin2d): gp_Ax2d  {.importcpp: "Position".}
  ## Returns the axis placement one axis whith the same location and
  ## direction as <me>.

proc Angle*(this: gp_Lin2d, Other: gp_Lin2d): cdouble  {.importcpp: "Angle".}
  ## Computes the angle between two lines in radians.

proc Contains*(this: gp_Lin2d, P: gp_Pnt2d, LinearTolerance: cdouble): bool  {.importcpp: "Contains".}
  ## Returns true if this line contains the point P, that is, if the
  ## distance between point P and this line is less than or equal to
  ## LinearTolerance.

proc Distance*(this: gp_Lin2d, P: gp_Pnt2d): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between <me> and the point <P>.

proc Distance*(this: gp_Lin2d, Other: gp_Lin2d): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between two lines.

proc SquareDistance*(this: gp_Lin2d, P: gp_Pnt2d): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between <me> and the point <P>.

proc SquareDistance*(this: gp_Lin2d, Other: gp_Lin2d): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between two lines.

proc Normal*(this: gp_Lin2d, P: gp_Pnt2d): gp_Lin2d  {.importcpp: "Normal".}
  ## Computes the line normal to the direction of <me>, passing through the
  ## point <P>.

proc Mirror*(this: var gp_Lin2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Lin2d, P: gp_Pnt2d): gp_Lin2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a line with respect to the
  ## point <P> which is the center of the symmetry

proc Mirror*(this: var gp_Lin2d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Lin2d, A: gp_Ax2d): gp_Lin2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a line with respect to an
  ## axis placement which is the axis of the symmetry.

proc Rotate*(this: var gp_Lin2d, P: gp_Pnt2d, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Lin2d, P: gp_Pnt2d, Ang: cdouble): gp_Lin2d  {.importcpp: "Rotated".}
  ## Rotates a line. P is the center of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Lin2d, P: gp_Pnt2d, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Lin2d, P: gp_Pnt2d, S: cdouble): gp_Lin2d  {.importcpp: "Scaled".}
  ## Scales a line. S is the scaling value. Only the origin of the line is
  ## modified.

proc Transform*(this: var gp_Lin2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Lin2d, T: gp_Trsf2d): gp_Lin2d  {.importcpp: "Transformed".}
  ## Transforms a line with the transformation T from class Trsf2d.

proc Translate*(this: var gp_Lin2d, V: gp_Vec2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Lin2d, V: gp_Vec2d): gp_Lin2d  {.importcpp: "Translated".}
  ## Translates a line in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Lin2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Lin2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Lin2d  {.importcpp: "Translated".}
  ## Translates a line from the point P1 to the point P2.

{.pop.} # header: "gp_Lin2d.hxx
