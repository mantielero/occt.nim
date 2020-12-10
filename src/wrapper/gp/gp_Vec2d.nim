{.push header: "gp_Vec2d.hxx".}


# Constructors and methods
proc constructor_gp_Vec2d*(): gp_Vec2d {.constructor,importcpp: "gp_Vec2d".}
  ## Creates a zero vector.

proc constructor_gp_Vec2d*(V: gp_Dir2d): gp_Vec2d {.constructor,importcpp: "gp_Vec2d(@)".}
  ## Creates a unitary vector from a direction V.

proc constructor_gp_Vec2d*(Coord: gp_XY): gp_Vec2d {.constructor,importcpp: "gp_Vec2d(@)".}
  ## Creates a vector with a doublet of coordinates.

proc constructor_gp_Vec2d*(Xv: Standard_Real, Yv: Standard_Real): gp_Vec2d {.constructor,importcpp: "gp_Vec2d(@)".}
  ## Creates a point with its two Cartesian coordinates.

proc constructor_gp_Vec2d*(P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Vec2d {.constructor,importcpp: "gp_Vec2d(@)".}
  ## Creates a vector from two points. The length of the vector is the
  ## distance between P1 and P2

proc ` new`*(this: var gp_Vec2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Vec2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Vec2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Vec2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Vec2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Vec2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCoord*(this: var gp_Vec2d, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
  ## Changes the coordinate of range Index Index = 1 => X is modified Index
  ## = 2 => Y is modified Raises OutOfRange if Index != {1, 2}.

proc SetCoord*(this: var gp_Vec2d, Xv: Standard_Real, Yv: Standard_Real)  {.importcpp: "SetCoord".}
  ## For this vector, assigns the values Xv and Yv to its two coordinates

proc SetX*(this: var gp_Vec2d, X: Standard_Real)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this vector.

proc SetY*(this: var gp_Vec2d, Y: Standard_Real)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate of this vector.

proc SetXY*(this: var gp_Vec2d, Coord: gp_XY)  {.importcpp: "SetXY".}
  ## Assigns the two coordinates of Coord to this vector.

proc Coord*(this: gp_Vec2d, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
  ## Returns the coordinate of range Index : Index = 1 => X is returned
  ## Index = 2 => Y is returned Raised if Index != {1, 2}.

proc Coord*(this: gp_Vec2d, Xv: var Standard_Real, Yv: var Standard_Real)  {.importcpp: "Coord".}
  ## For this vector, returns its two coordinates Xv and Yv

proc X*(this: gp_Vec2d): Standard_Real  {.importcpp: "X".}
  ## For this vector, returns its X coordinate.

proc Y*(this: gp_Vec2d): Standard_Real  {.importcpp: "Y".}
  ## For this vector, returns its Y coordinate.

proc XY*(this: gp_Vec2d): gp_XY  {.importcpp: "XY".}
  ## For this vector, returns its two coordinates as a number pair

proc IsEqual*(this: gp_Vec2d, Other: gp_Vec2d, LinearTolerance: Standard_Real, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
  ## Returns True if the two vectors have the same magnitude value and the
  ## same direction. The precision values are LinearTolerance for the
  ## magnitude and AngularTolerance for the direction.

proc IsNormal*(this: gp_Vec2d, Other: gp_Vec2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsNormal".}
  ## Returns True if abs(Abs(<me>.Angle(Other)) - PI/2.) <=
  ## AngularTolerance Raises VectorWithNullMagnitude if <me>.Magnitude() <=
  ## Resolution or Other.Magnitude() <= Resolution from gp.

proc IsOpposite*(this: gp_Vec2d, Other: gp_Vec2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsOpposite".}
  ## Returns True if PI - Abs(<me>.Angle(Other)) <= AngularTolerance Raises
  ## VectorWithNullMagnitude if <me>.Magnitude() <= Resolution or
  ## Other.Magnitude() <= Resolution from gp.

proc IsParallel*(this: gp_Vec2d, Other: gp_Vec2d, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsParallel".}
  ## Returns true if Abs(Angle(<me>, Other)) <= AngularTolerance or PI -
  ## Abs(Angle(<me>, Other)) <= AngularTolerance Two vectors with opposite
  ## directions are considered as parallel. Raises VectorWithNullMagnitude
  ## if <me>.Magnitude() <= Resolution or Other.Magnitude() <= Resolution
  ## from gp

proc Angle*(this: gp_Vec2d, Other: gp_Vec2d): Standard_Real  {.importcpp: "Angle".}
  ## Computes the angular value between <me> and <Other> returns the angle
  ## value between -PI and PI in radian. The orientation is from <me> to
  ## Other. The positive sense is the trigonometric sense. Raises
  ## VectorWithNullMagnitude if <me>.Magnitude() <= Resolution from gp or
  ## Other.Magnitude() <= Resolution because the angular value is
  ## indefinite if one of the vectors has a null magnitude.

proc Magnitude*(this: gp_Vec2d): Standard_Real  {.importcpp: "Magnitude".}
  ## Computes the magnitude of this vector.

proc SquareMagnitude*(this: gp_Vec2d): Standard_Real  {.importcpp: "SquareMagnitude".}
  ## Computes the square magnitude of this vector.

proc Add*(this: var gp_Vec2d, Other: gp_Vec2d)  {.importcpp: "Add".}

proc `+=`*(this: var gp_Vec2d, Other: gp_Vec2d)  {.importcpp: "`+=`".}

proc Added*(this: gp_Vec2d, Other: gp_Vec2d): gp_Vec2d  {.importcpp: "Added".}
  ## Adds two vectors

proc `+`*(this: gp_Vec2d, Other: gp_Vec2d): gp_Vec2d  {.importcpp: "`+`".}

proc Crossed*(this: gp_Vec2d, Right: gp_Vec2d): Standard_Real  {.importcpp: "Crossed".}
  ## Computes the crossing product between two vectors

proc `^`*(this: gp_Vec2d, Right: gp_Vec2d): Standard_Real  {.importcpp: "`^`".}

proc CrossMagnitude*(this: gp_Vec2d, Right: gp_Vec2d): Standard_Real  {.importcpp: "CrossMagnitude".}
  ## Computes the magnitude of the cross product between <me> and Right.
  ## Returns || <me> ^ Right ||

proc CrossSquareMagnitude*(this: gp_Vec2d, Right: gp_Vec2d): Standard_Real  {.importcpp: "CrossSquareMagnitude".}
  ## Computes the square magnitude of the cross product between <me> and
  ## Right. Returns || <me> ^ Right ||**2

proc Divide*(this: var gp_Vec2d, Scalar: Standard_Real)  {.importcpp: "Divide".}

proc `/=`*(this: var gp_Vec2d, Scalar: Standard_Real)  {.importcpp: "`/=`".}

proc Divided*(this: gp_Vec2d, Scalar: Standard_Real): gp_Vec2d  {.importcpp: "Divided".}
  ## divides a vector by a scalar

proc `/`*(this: gp_Vec2d, Scalar: Standard_Real): gp_Vec2d  {.importcpp: "`/`".}

proc Dot*(this: gp_Vec2d, Other: gp_Vec2d): Standard_Real  {.importcpp: "Dot".}
  ## Computes the scalar product

proc `*`*(this: gp_Vec2d, Other: gp_Vec2d): Standard_Real  {.importcpp: "`*`".}

proc GetNormal*(this: gp_Vec2d): gp_Vec2d  {.importcpp: "GetNormal".}

proc Multiply*(this: var gp_Vec2d, Scalar: Standard_Real)  {.importcpp: "Multiply".}

proc `*=`*(this: var gp_Vec2d, Scalar: Standard_Real)  {.importcpp: "`*=`".}

proc Multiplied*(this: gp_Vec2d, Scalar: Standard_Real): gp_Vec2d  {.importcpp: "Multiplied".}
  ## Normalizes a vector Raises an exception if the magnitude of the vector
  ## is lower or equal to Resolution from package gp.

proc `*`*(this: gp_Vec2d, Scalar: Standard_Real): gp_Vec2d  {.importcpp: "`*`".}

proc Normalize*(this: var gp_Vec2d)  {.importcpp: "Normalize".}

proc Normalized*(this: gp_Vec2d): gp_Vec2d  {.importcpp: "Normalized".}
  ## Normalizes a vector Raises an exception if the magnitude of the vector
  ## is lower or equal to Resolution from package gp. Reverses the
  ## direction of a vector

proc Reverse*(this: var gp_Vec2d)  {.importcpp: "Reverse".}

proc Reversed*(this: gp_Vec2d): gp_Vec2d  {.importcpp: "Reversed".}
  ## Reverses the direction of a vector

proc `-`*(this: gp_Vec2d): gp_Vec2d  {.importcpp: "`-`".}

proc Subtract*(this: var gp_Vec2d, Right: gp_Vec2d)  {.importcpp: "Subtract".}
  ## Subtracts two vectors

proc `-=`*(this: var gp_Vec2d, Right: gp_Vec2d)  {.importcpp: "`-=`".}

proc Subtracted*(this: gp_Vec2d, Right: gp_Vec2d): gp_Vec2d  {.importcpp: "Subtracted".}
  ## Subtracts two vectors

proc `-`*(this: gp_Vec2d, Right: gp_Vec2d): gp_Vec2d  {.importcpp: "`-`".}

proc SetLinearForm*(this: var gp_Vec2d, A1: Standard_Real, V1: gp_Vec2d, A2: Standard_Real, V2: gp_Vec2d, V3: gp_Vec2d)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2 + V3

proc SetLinearForm*(this: var gp_Vec2d, A1: Standard_Real, V1: gp_Vec2d, A2: Standard_Real, V2: gp_Vec2d)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2

proc SetLinearForm*(this: var gp_Vec2d, A1: Standard_Real, V1: gp_Vec2d, V2: gp_Vec2d)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + V2

proc SetLinearForm*(this: var gp_Vec2d, Left: gp_Vec2d, Right: gp_Vec2d)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : Left + Right

proc Mirror*(this: var gp_Vec2d, V: gp_Vec2d)  {.importcpp: "Mirror".}
  ## Performs the symmetrical transformation of a vector with respect to
  ## the vector V which is the center of the symmetry.

proc Mirrored*(this: gp_Vec2d, V: gp_Vec2d): gp_Vec2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a vector with respect to
  ## the vector V which is the center of the symmetry.

proc Mirror*(this: var gp_Vec2d, A1: gp_Ax2d)  {.importcpp: "Mirror".}
  ## Performs the symmetrical transformation of a vector with respect to an
  ## axis placement which is the axis of the symmetry.

proc Mirrored*(this: gp_Vec2d, A1: gp_Ax2d): gp_Vec2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a vector with respect to an
  ## axis placement which is the axis of the symmetry.

proc Rotate*(this: var gp_Vec2d, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Vec2d, Ang: Standard_Real): gp_Vec2d  {.importcpp: "Rotated".}
  ## Rotates a vector. Ang is the angular value of the rotation in radians.

proc Scale*(this: var gp_Vec2d, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Vec2d, S: Standard_Real): gp_Vec2d  {.importcpp: "Scaled".}
  ## Scales a vector. S is the scaling value.

proc Transform*(this: var gp_Vec2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Vec2d, T: gp_Trsf2d): gp_Vec2d  {.importcpp: "Transformed".}
  ## Transforms a vector with a Trsf from gp.

{.pop.} # header: "gp_Vec2d.hxx
