{.push header: "gp_Ax2d.hxx".}


# Constructors and methods
proc constructor_gp_Ax2d*(): gp_Ax2d {.constructor,importcpp: "gp_Ax2d".}
  ## Creates an axis object representing X axis of the reference co-
  ## ordinate system.

proc constructor_gp_Ax2d*(P: gp_Pnt2d, V: gp_Dir2d): gp_Ax2d {.constructor,importcpp: "gp_Ax2d(@)".}
  ## Creates an Ax2d. <P> is the "Location" point of the axis placement and
  ## V is the "Direction" of the axis placement.

proc ` new`*(this: var gp_Ax2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Ax2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Ax2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Ax2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetLocation*(this: var gp_Ax2d, Locat: gp_Pnt2d)  {.importcpp: "SetLocation".}
  ## Changes the "Location" point (origin) of <me>.

proc SetDirection*(this: var gp_Ax2d, V: gp_Dir2d)  {.importcpp: "SetDirection".}
  ## Changes the direction of <me>.

proc Location*(this: gp_Ax2d): gp_Pnt2d  {.importcpp: "Location".}
  ## Returns the origin of <me>.

proc Direction*(this: gp_Ax2d): gp_Dir2d  {.importcpp: "Direction".}
  ## Returns the direction of <me>.

proc IsCoaxial*(this: gp_Ax2d, Other: gp_Ax2d, AngularTolerance: cdouble, LinearTolerance: cdouble): bool  {.importcpp: "IsCoaxial".}
  ## Returns True if : . the angle between <me> and <Other> is lower or
  ## equal to <AngularTolerance> and . the distance between <me>.Location()
  ## and <Other> is lower or equal to <LinearTolerance> and . the distance
  ## between <Other>.Location() and <me> is lower or equal to
  ## LinearTolerance.

proc IsNormal*(this: gp_Ax2d, Other: gp_Ax2d, AngularTolerance: cdouble): bool  {.importcpp: "IsNormal".}
  ## Returns true if this axis and the axis Other are normal to each other.
  ## That is, if the angle between the two axes is equal to Pi/2 or -Pi/2.
  ## Note: the tolerance criterion is given by AngularTolerance.

proc IsOpposite*(this: gp_Ax2d, Other: gp_Ax2d, AngularTolerance: cdouble): bool  {.importcpp: "IsOpposite".}
  ## Returns true if this axis and the axis Other are parallel, and have
  ## opposite orientations. That is, if the angle between the two axes is
  ## equal to Pi or -Pi. Note: the tolerance criterion is given by
  ## AngularTolerance.

proc IsParallel*(this: gp_Ax2d, Other: gp_Ax2d, AngularTolerance: cdouble): bool  {.importcpp: "IsParallel".}
  ## Returns true if this axis and the axis Other are parallel, and have
  ## either the same or opposite orientations. That is, if the angle
  ## between the two axes is equal to 0, Pi or -Pi. Note: the tolerance
  ## criterion is given by AngularTolerance.

proc Angle*(this: gp_Ax2d, Other: gp_Ax2d): cdouble  {.importcpp: "Angle".}
  ## Computes the angle, in radians, between this axis and the axis Other.
  ## The value of the angle is between -Pi and Pi.

proc Reverse*(this: var gp_Ax2d)  {.importcpp: "Reverse".}
  ## Reverses the direction of <me> and assigns the result to this axis.

proc Reversed*(this: gp_Ax2d): gp_Ax2d  {.importcpp: "Reversed".}
  ## Computes a new axis placement with a direction opposite to the
  ## direction of <me>.

proc Mirror*(this: var gp_Ax2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Ax2d, P: gp_Pnt2d): gp_Ax2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to the point P which is the center of the symmetry.

proc Mirror*(this: var gp_Ax2d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Ax2d, A: gp_Ax2d): gp_Ax2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to an axis placement which is the axis of the symmetry.

proc Rotate*(this: var gp_Ax2d, P: gp_Pnt2d, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Ax2d, P: gp_Pnt2d, Ang: cdouble): gp_Ax2d  {.importcpp: "Rotated".}
  ## Rotates an axis placement. <P> is the center of the rotation . Ang is
  ## the angular value of the rotation in radians.

proc Scale*(this: var gp_Ax2d, P: gp_Pnt2d, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Ax2d, P: gp_Pnt2d, S: cdouble): gp_Ax2d  {.importcpp: "Scaled".}
  ## Applies a scaling transformation on the axis placement. The "Location"
  ## point of the axisplacement is modified. The "Direction" is reversed if
  ## the scale is negative.

proc Transform*(this: var gp_Ax2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Ax2d, T: gp_Trsf2d): gp_Ax2d  {.importcpp: "Transformed".}
  ## Transforms an axis placement with a Trsf.

proc Translate*(this: var gp_Ax2d, V: gp_Vec2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Ax2d, V: gp_Vec2d): gp_Ax2d  {.importcpp: "Translated".}
  ## Translates an axis placement in the direction of the vector <V>. The
  ## magnitude of the translation is the vector's magnitude.

proc Translate*(this: var gp_Ax2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Ax2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Ax2d  {.importcpp: "Translated".}
  ## Translates an axis placement from the point <P1> to the point <P2>.

{.pop.} # header: "gp_Ax2d.hxx
