{.push header: "gp_Lin.hxx".}


# Constructors and methods
proc constructor_gp_Lin*(): gp_Lin {.constructor,importcpp: "gp_Lin".}
  ## Creates a Line corresponding to Z axis of the reference coordinate
  ## system.

proc constructor_gp_Lin*(A1: gp_Ax1): gp_Lin {.constructor,importcpp: "gp_Lin(@)".}
  ## Creates a line defined by axis A1.

proc constructor_gp_Lin*(P: gp_Pnt, V: gp_Dir): gp_Lin {.constructor,importcpp: "gp_Lin(@)".}
  ## Creates a line passing through point P and parallel to vector V (P and
  ## V are, respectively, the origin and the unit vector of the positioning
  ## axis of the line).

proc ` new`*(this: var gp_Lin, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Lin, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Lin, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Lin, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Lin, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Lin, pointer, pointer)  {.importcpp: "` delete`".}

proc Reverse*(this: var gp_Lin)  {.importcpp: "Reverse".}

proc Reversed*(this: gp_Lin): gp_Lin  {.importcpp: "Reversed".}
  ## Reverses the direction of the line. Note: - Reverse assigns the result
  ## to this line, while - Reversed creates a new one.

proc SetDirection*(this: var gp_Lin, V: gp_Dir)  {.importcpp: "SetDirection".}
  ## Changes the direction of the line.

proc SetLocation*(this: var gp_Lin, P: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the location point (origin) of the line.

proc SetPosition*(this: var gp_Lin, A1: gp_Ax1)  {.importcpp: "SetPosition".}
  ## Complete redefinition of the line. The "Location" point of <A1> is the
  ## origin of the line. The "Direction" of <A1> is the direction of the
  ## line.

proc Direction*(this: gp_Lin): gp_Dir  {.importcpp: "Direction".}
  ## Returns the direction of the line.

proc Location*(this: gp_Lin): gp_Pnt  {.importcpp: "Location".}
  ## Returns the location point (origin) of the line.

proc Position*(this: gp_Lin): gp_Ax1  {.importcpp: "Position".}
  ## Returns the axis placement one axis whith the same location and
  ## direction as <me>.

proc Angle*(this: gp_Lin, Other: gp_Lin): cdouble  {.importcpp: "Angle".}
  ## Computes the angle between two lines in radians.

proc Contains*(this: gp_Lin, P: gp_Pnt, LinearTolerance: cdouble): bool  {.importcpp: "Contains".}
  ## Returns true if this line contains the point P, that is, if the
  ## distance between point P and this line is less than or equal to
  ## LinearTolerance..

proc Distance*(this: gp_Lin, P: gp_Pnt): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between <me> and the point P.

proc Distance*(this: gp_Lin, Other: gp_Lin): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between two lines.

proc SquareDistance*(this: gp_Lin, P: gp_Pnt): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between <me> and the point P.

proc SquareDistance*(this: gp_Lin, Other: gp_Lin): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between two lines.

proc Normal*(this: gp_Lin, P: gp_Pnt): gp_Lin  {.importcpp: "Normal".}
  ## Computes the line normal to the direction of <me>, passing through the
  ## point P. Raises ConstructionError if the distance between <me> and the
  ## point P is lower or equal to Resolution from gp because there is an
  ## infinity of solutions in 3D space.

proc Mirror*(this: var gp_Lin, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Lin, P: gp_Pnt): gp_Lin  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a line with respect to the
  ## point P which is the center of the symmetry.

proc Mirror*(this: var gp_Lin, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Lin, A1: gp_Ax1): gp_Lin  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a line with respect to an
  ## axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Lin, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Lin, A2: gp_Ax2): gp_Lin  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a line with respect to a
  ## plane. The axis placement <A2> locates the plane of the symmetry :
  ## (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Lin, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Lin, A1: gp_Ax1, Ang: cdouble): gp_Lin  {.importcpp: "Rotated".}
  ## Rotates a line. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Lin, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Lin, P: gp_Pnt, S: cdouble): gp_Lin  {.importcpp: "Scaled".}
  ## Scales a line. S is the scaling value. The "Location" point (origin)
  ## of the line is modified. The "Direction" is reversed if the scale is
  ## negative.

proc Transform*(this: var gp_Lin, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Lin, T: gp_Trsf): gp_Lin  {.importcpp: "Transformed".}
  ## Transforms a line with the transformation T from class Trsf.

proc Translate*(this: var gp_Lin, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Lin, V: gp_Vec): gp_Lin  {.importcpp: "Translated".}
  ## Translates a line in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Lin, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Lin, P1: gp_Pnt, P2: gp_Pnt): gp_Lin  {.importcpp: "Translated".}
  ## Translates a line from the point P1 to the point P2.

{.pop.} # header: "gp_Lin.hxx
