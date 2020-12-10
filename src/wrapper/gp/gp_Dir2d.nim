{.push header: "gp_Dir2d.hxx".}


# Constructors and methods
proc constructor_gp_Dir2d*(): gp_Dir2d {.constructor,importcpp: "gp_Dir2d".}
  ## Creates a direction corresponding to X axis.

proc constructor_gp_Dir2d*(V: gp_Vec2d): gp_Dir2d {.constructor,importcpp: "gp_Dir2d(@)".}
  ## Normalizes the vector V and creates a Direction. Raises
  ## ConstructionError if V.Magnitude() <= Resolution from gp.

proc constructor_gp_Dir2d*(Coord: gp_XY): gp_Dir2d {.constructor,importcpp: "gp_Dir2d(@)".}
  ## Creates a Direction from a doublet of coordinates. Raises
  ## ConstructionError if Coord.Modulus() <= Resolution from gp.

proc constructor_gp_Dir2d*(Xv: cdouble, Yv: cdouble): gp_Dir2d {.constructor,importcpp: "gp_Dir2d(@)".}
  ## Creates a Direction with its 2 cartesian coordinates. Raises
  ## ConstructionError if Sqrt(Xv*Xv + Yv*Yv) <= Resolution from gp.

proc ` new`*(this: var gp_Dir2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Dir2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Dir2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Dir2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Dir2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Dir2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCoord*(this: var gp_Dir2d, Index: cint, Xi: cdouble)  {.importcpp: "SetCoord".}
  ## For this unit vector, assigns: the value Xi to: - the X coordinate if
  ## Index is 1, or - the Y coordinate if Index is 2, and then normalizes
  ## it. Warning Remember that all the coordinates of a unit vector are
  ## implicitly modified when any single one is changed directly.
  ## Exceptions Standard_OutOfRange if Index is not 1 or 2.
  ## Standard_ConstructionError if either of the following is less than or
  ## equal to gp::Resolution(): - Sqrt(Xv*Xv + Yv*Yv), or - the modulus of
  ## the number pair formed by the new value Xi and the other coordinate of
  ## this vector that was not directly modified. Raises OutOfRange if Index
  ## != {1, 2}.

proc SetCoord*(this: var gp_Dir2d, Xv: cdouble, Yv: cdouble)  {.importcpp: "SetCoord".}
  ## For this unit vector, assigns: - the values Xv and Yv to its two
  ## coordinates, Warning Remember that all the coordinates of a unit
  ## vector are implicitly modified when any single one is changed
  ## directly. Exceptions Standard_OutOfRange if Index is not 1 or 2.
  ## Standard_ConstructionError if either of the following is less than or
  ## equal to gp::Resolution(): - Sqrt(Xv*Xv + Yv*Yv), or - the modulus of
  ## the number pair formed by the new value Xi and the other coordinate of
  ## this vector that was not directly modified. Raises OutOfRange if Index
  ## != {1, 2}.

proc SetX*(this: var gp_Dir2d, X: cdouble)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this unit vector, and
  ## then normalizes it. Warning Remember that all the coordinates of a
  ## unit vector are implicitly modified when any single one is changed
  ## directly. Exceptions Standard_ConstructionError if either of the
  ## following is less than or equal to gp::Resolution(): - the modulus of
  ## Coord, or - the modulus of the number pair formed from the new X or Y
  ## coordinate and the other coordinate of this vector that was not
  ## directly modified.

proc SetY*(this: var gp_Dir2d, Y: cdouble)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate of this unit vector, and
  ## then normalizes it. Warning Remember that all the coordinates of a
  ## unit vector are implicitly modified when any single one is changed
  ## directly. Exceptions Standard_ConstructionError if either of the
  ## following is less than or equal to gp::Resolution(): - the modulus of
  ## Coord, or - the modulus of the number pair formed from the new X or Y
  ## coordinate and the other coordinate of this vector that was not
  ## directly modified.

proc SetXY*(this: var gp_Dir2d, Coord: gp_XY)  {.importcpp: "SetXY".}
  ## Assigns: - the two coordinates of Coord to this unit vector, and then
  ## normalizes it. Warning Remember that all the coordinates of a unit
  ## vector are implicitly modified when any single one is changed
  ## directly. Exceptions Standard_ConstructionError if either of the
  ## following is less than or equal to gp::Resolution(): - the modulus of
  ## Coord, or - the modulus of the number pair formed from the new X or Y
  ## coordinate and the other coordinate of this vector that was not
  ## directly modified.

proc Coord*(this: gp_Dir2d, Index: cint): cdouble  {.importcpp: "Coord".}
  ## For this unit vector returns the coordinate of range Index : Index = 1
  ## => X is returned Index = 2 => Y is returned Raises OutOfRange if Index
  ## != {1, 2}.

proc Coord*(this: gp_Dir2d, Xv: var cdouble, Yv: var cdouble)  {.importcpp: "Coord".}
  ## For this unit vector returns its two coordinates Xv and Yv. Raises
  ## OutOfRange if Index != {1, 2}.

proc X*(this: gp_Dir2d): cdouble  {.importcpp: "X".}
  ## For this unit vector, returns its X coordinate.

proc Y*(this: gp_Dir2d): cdouble  {.importcpp: "Y".}
  ## For this unit vector, returns its Y coordinate.

proc XY*(this: gp_Dir2d): gp_XY  {.importcpp: "XY".}
  ## For this unit vector, returns its two coordinates as a number pair.
  ## Comparison between Directions The precision value is an input data.

proc IsEqual*(this: gp_Dir2d, Other: gp_Dir2d, AngularTolerance: cdouble): bool  {.importcpp: "IsEqual".}
  ## Returns True if the two vectors have the same direction i.e. the angle
  ## between this unit vector and the unit vector Other is less than or
  ## equal to AngularTolerance.

proc IsNormal*(this: gp_Dir2d, Other: gp_Dir2d, AngularTolerance: cdouble): bool  {.importcpp: "IsNormal".}
  ## Returns True if the angle between this unit vector and the unit vector
  ## Other is equal to Pi/2 or -Pi/2 (normal) i.e.
  ## Abs(Abs(<me>.Angle(Other)) - PI/2.) <= AngularTolerance

proc IsOpposite*(this: gp_Dir2d, Other: gp_Dir2d, AngularTolerance: cdouble): bool  {.importcpp: "IsOpposite".}
  ## Returns True if the angle between this unit vector and the unit vector
  ## Other is equal to Pi or -Pi (opposite). i.e. PI -
  ## Abs(<me>.Angle(Other)) <= AngularTolerance

proc IsParallel*(this: gp_Dir2d, Other: gp_Dir2d, AngularTolerance: cdouble): bool  {.importcpp: "IsParallel".}
  ## returns true if if the angle between this unit vector and unit vector
  ## Other is equal to 0, Pi or -Pi. i.e. Abs(Angle(<me>, Other)) <=
  ## AngularTolerance or PI - Abs(Angle(<me>, Other)) <= AngularTolerance

proc Angle*(this: gp_Dir2d, Other: gp_Dir2d): cdouble  {.importcpp: "Angle".}
  ## Computes the angular value in radians between <me> and <Other>.
  ## Returns the angle in the range [-PI, PI].

proc Crossed*(this: gp_Dir2d, Right: gp_Dir2d): cdouble  {.importcpp: "Crossed".}
  ## Computes the cross product between two directions.

proc `^`*(this: gp_Dir2d, Right: gp_Dir2d): cdouble  {.importcpp: "`^`".}

proc Dot*(this: gp_Dir2d, Other: gp_Dir2d): cdouble  {.importcpp: "Dot".}
  ## Computes the scalar product

proc `*`*(this: gp_Dir2d, Other: gp_Dir2d): cdouble  {.importcpp: "`*`".}

proc Reverse*(this: var gp_Dir2d)  {.importcpp: "Reverse".}

proc Reversed*(this: gp_Dir2d): gp_Dir2d  {.importcpp: "Reversed".}
  ## Reverses the orientation of a direction

proc `-`*(this: gp_Dir2d): gp_Dir2d  {.importcpp: "`-`".}

proc Mirror*(this: var gp_Dir2d, V: gp_Dir2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Dir2d, V: gp_Dir2d): gp_Dir2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a direction with respect to
  ## the direction V which is the center of the symmetry.

proc Mirror*(this: var gp_Dir2d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Dir2d, A: gp_Ax2d): gp_Dir2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a direction with respect to
  ## an axis placement which is the axis of the symmetry.

proc Rotate*(this: var gp_Dir2d, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Dir2d, Ang: cdouble): gp_Dir2d  {.importcpp: "Rotated".}
  ## Rotates a direction. Ang is the angular value of the rotation in
  ## radians.

proc Transform*(this: var gp_Dir2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Dir2d, T: gp_Trsf2d): gp_Dir2d  {.importcpp: "Transformed".}
  ## Transforms a direction with the "Trsf" T. Warnings : If the scale
  ## factor of the "Trsf" T is negative then the direction <me> is
  ## reversed.

{.pop.} # header: "gp_Dir2d.hxx
