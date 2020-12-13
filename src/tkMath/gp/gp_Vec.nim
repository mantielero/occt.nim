{.push header: "gp_Vec.hxx".}


# Constructors and methods
proc Vec*(): gp_Vec {.constructor,importcpp: "gp_Vec".}
  ## Creates a zero vector.
  ## DONE

proc Vec*(V: gp_Dir): gp_Vec {.constructor,importcpp: "gp_Vec(@)".}
  ## Creates a unitary vector from a direction V.
  ## DONE

proc Vec*(Coord: gp_XYZ): gp_Vec {.constructor,importcpp: "gp_Vec(@)".}
  ## Creates a vector with a triplet of coordinates.
  ## DONE

proc Vec*(Xv: cdouble, Yv: cdouble, Zv: cdouble): gp_Vec {.constructor,importcpp: "gp_Vec(@)".}
  ## Creates a point with its three cartesian coordinates.
  ## DONE

proc Vec*(P1: gp_Pnt, P2: gp_Pnt): gp_Vec {.constructor,importcpp: "gp_Vec(@)".}
  ## Creates a vector from two points. The length of the vector is the
  ## distance between P1 and P2
  ## DONE

#[
proc ` new`*(this: var gp_Vec, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Vec, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Vec, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Vec, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Vec, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Vec, pointer, pointer)  {.importcpp: "` delete`".}
]#
proc setCoord*(this: var gp_Vec, Index: cint, Xi: cdouble)  {.importcpp: "SetCoord".}
  ## Changes the coordinate of range Index Index = 1 => X is modified Index
  ## = 2 => Y is modified Index = 3 => Z is modified Raised if Index != {1,
  ## 2, 3}.

proc setCoord*(this: var gp_Vec, Xv: cdouble, Yv: cdouble, Zv: cdouble)  {.importcpp: "SetCoord".}
  ## For this vector, assigns - the values Xv, Yv and Zv to its three
  ## coordinates.

proc setX*(this: var gp_Vec, X: cdouble)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this vector.
  ## DONE

proc setY*(this: var gp_Vec, Y: cdouble)  {.importcpp: "SetY".}
  ## Assigns the given value to the X coordinate of this vector.
  ## DONE

proc setZ*(this: var gp_Vec, Z: cdouble)  {.importcpp: "SetZ".}
  ## Assigns the given value to the X coordinate of this vector.
  ## DONE

proc setXYZ*(this: var gp_Vec, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
  ## Assigns the three coordinates of Coord to this vector.
  ## DONE

proc coord*(this: gp_Vec, Index: cint): cdouble  {.importcpp: "Coord".}
  ## Returns the coordinate of range Index : Index = 1 => X is returned
  ## Index = 2 => Y is returned Index = 3 => Z is returned Raised if Index
  ## != {1, 2, 3}.

proc coord*(this: gp_Vec, Xv: var cdouble, Yv: var cdouble, Zv: var cdouble)  {.importcpp: "Coord".}
  ## For this vector returns its three coordinates Xv, Yv, and Zvinline

proc x*(this: gp_Vec): cdouble  {.importcpp: "X".}
  ## For this vector, returns its X coordinate.
  ## DONE

proc y*(this: gp_Vec): cdouble  {.importcpp: "Y".}
  ## For this vector, returns its Y coordinate.
  ## DONE

proc z*(this: gp_Vec): cdouble  {.importcpp: "Z".}
  ## For this vector, returns its Z coordinate.
  ## DONE

proc xyz*(this: gp_Vec): gp_XYZ  {.importcpp: "XYZ".}
  ## For this vector, returns - its three coordinates as a number triple

proc isEqual*(this: gp_Vec, Other: gp_Vec, LinearTolerance: cdouble, AngularTolerance: cdouble): bool  {.importcpp: "IsEqual".}
  ## Returns True if the two vectors have the same magnitude value and the
  ## same direction. The precision values are LinearTolerance for the
  ## magnitude and AngularTolerance for the direction.

proc isNormal*(this: gp_Vec, Other: gp_Vec, AngularTolerance: cdouble): bool  {.importcpp: "IsNormal".}
  ## Returns True if abs(<me>.Angle(Other) - PI/2.) <= AngularTolerance
  ## Raises VectorWithNullMagnitude if <me>.Magnitude() <= Resolution or
  ## Other.Magnitude() <= Resolution from gp

proc isOpposite*(this: gp_Vec, Other: gp_Vec, AngularTolerance: cdouble): bool  {.importcpp: "IsOpposite".}
  ## Returns True if PI - <me>.Angle(Other) <= AngularTolerance Raises
  ## VectorWithNullMagnitude if <me>.Magnitude() <= Resolution or
  ## Other.Magnitude() <= Resolution from gp

proc isParallel*(this: gp_Vec, Other: gp_Vec, AngularTolerance: cdouble): bool  {.importcpp: "IsParallel".}
  ## Returns True if Angle(<me>, Other) <= AngularTolerance or PI -
  ## Angle(<me>, Other) <= AngularTolerance This definition means that two
  ## parallel vectors cannot define a plane but two vectors with opposite
  ## directions are considered as parallel. Raises VectorWithNullMagnitude
  ## if <me>.Magnitude() <= Resolution or Other.Magnitude() <= Resolution
  ## from gp

proc angle*(this: gp_Vec, Other: gp_Vec): cdouble  {.importcpp: "Angle".}
  ## Computes the angular value between <me> and <Other> Returns the angle
  ## value between 0 and PI in radian. Raises VectorWithNullMagnitude if
  ## <me>.Magnitude() <= Resolution from gp or Other.Magnitude() <=
  ## Resolution because the angular value is indefinite if one of the
  ## vectors has a null magnitude.

proc angleWithRef*(this: gp_Vec, Other: gp_Vec, VRef: gp_Vec): cdouble  {.importcpp: "AngleWithRef".}
  ## Computes the angle, in radians, between this vector and vector Other.
  ## The result is a value between -Pi and Pi. For this, VRef defines the
  ## positive sense of rotation: the angular value is positive, if the
  ## cross product this ^ Other has the same orientation as VRef relative
  ## to the plane defined by the vectors this and Other. Otherwise, the
  ## angular value is negative. Exceptions gp_VectorWithNullMagnitude if
  ## the magnitude of this vector, the vector Other, or the vector VRef is
  ## less than or equal to gp::Resolution(). Standard_DomainError if this
  ## vector, the vector Other, and the vector VRef are coplanar, unless
  ## this vector and the vector Other are parallel.

proc magnitude*(this: gp_Vec): cdouble  {.importcpp: "Magnitude".}
  ## Computes the magnitude of this vector.

proc squareMagnitude*(this: gp_Vec): cdouble  {.importcpp: "SquareMagnitude".}
  ## Computes the square magnitude of this vector.

proc add*(this: var gp_Vec, Other: gp_Vec)  {.importcpp: "Add".}
  ## Adds two vectors

proc `+=`*(this: var gp_Vec, Other: gp_Vec)  {.importcpp: "# += #".}

proc added*(this: gp_Vec, Other: gp_Vec): gp_Vec  {.importcpp: "Added".}
  ## Adds two vectors

proc `+`*(this: gp_Vec, Other: gp_Vec): gp_Vec  {.importcpp: "# + #".}

proc subtract*(this: var gp_Vec, Right: gp_Vec)  {.importcpp: "Subtract".}
  ## Subtracts two vectors

proc `-=`*(this: var gp_Vec, Right: gp_Vec)  {.importcpp: "# -= #".}

proc subtracted*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "Subtracted".}
  ## Subtracts two vectors

proc `-`*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "# - #".}

proc multiply*(this: var gp_Vec, Scalar: cdouble)  {.importcpp: "Multiply".}
  ## Multiplies a vector by a scalar

proc `*=`*(this: var gp_Vec, Scalar: cdouble)  {.importcpp: "# *= #".}

proc multiplied*(this: gp_Vec, Scalar: cdouble): gp_Vec  {.importcpp: "Multiplied".}
  ## Multiplies a vector by a scalar

proc `*`*(this: gp_Vec, Scalar: cdouble): gp_Vec  {.importcpp: "# * #".}

proc divide*(this: var gp_Vec, Scalar: cdouble)  {.importcpp: "Divide".}
  ## Divides a vector by a scalar

proc `/=`*(this: var gp_Vec, Scalar: cdouble)  {.importcpp: "# /= #".}

proc divided*(this: gp_Vec, Scalar: cdouble): gp_Vec  {.importcpp: "Divided".}
  ## Divides a vector by a scalar

proc `/`*(this: gp_Vec, Scalar: cdouble): gp_Vec  {.importcpp: "# / #".}

proc cross*(this: var gp_Vec, Right: gp_Vec)  {.importcpp: "Cross".}
  ## computes the cross product between two vectors

proc `^=`*(this: var gp_Vec, Right: gp_Vec)  {.importcpp: "# ^= #".}

proc crossed*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "Crossed".}
  ## computes the cross product between two vectors

proc `^`*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "# ^ #".}

proc crossMagnitude*(this: gp_Vec, Right: gp_Vec): cdouble  {.importcpp: "CrossMagnitude".}
  ## Computes the magnitude of the cross product between <me> and Right.
  ## Returns || <me> ^ Right ||

proc crossSquareMagnitude*(this: gp_Vec, Right: gp_Vec): cdouble  {.importcpp: "CrossSquareMagnitude".}
  ## Computes the square magnitude of the cross product between <me> and
  ## Right. Returns || <me> ^ Right ||**2

proc crossCross*(this: var gp_Vec, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "CrossCross".}
  ## Computes the triple vector product. <me> ^= (V1 ^ V2)

proc crossCrossed*(this: gp_Vec, V1: gp_Vec, V2: gp_Vec): gp_Vec  {.importcpp: "CrossCrossed".}
  ## Computes the triple vector product. <me> ^ (V1 ^ V2)

proc dot*(this: gp_Vec, Other: gp_Vec): cdouble  {.importcpp: "Dot".}
  ## computes the scalar product

proc `*`*(this: gp_Vec, Other: gp_Vec): cdouble  {.importcpp: "# * #".}

proc dotCross*(this: gp_Vec, V1: gp_Vec, V2: gp_Vec): cdouble  {.importcpp: "DotCross".}
  ## Computes the triple scalar product <me> * (V1 ^ V2).

proc normalize*(this: var gp_Vec)  {.importcpp: "Normalize".}
  ## normalizes a vector Raises an exception if the magnitude of the vector
  ## is lower or equal to Resolution from gp.

proc normalized*(this: gp_Vec): gp_Vec  {.importcpp: "Normalized".}
  ## normalizes a vector Raises an exception if the magnitude of the vector
  ## is lower or equal to Resolution from gp.

proc reverse*(this: var gp_Vec)  {.importcpp: "Reverse".}
  ## Reverses the direction of a vector

proc reversed*(this: gp_Vec): gp_Vec  {.importcpp: "Reversed".}
  ## Reverses the direction of a vector

proc `-`*(this: gp_Vec): gp_Vec  {.importcpp: "# - #".}

proc setLinearForm*(this: var gp_Vec, A1: cdouble, V1: gp_Vec, A2: cdouble, V2: gp_Vec, A3: cdouble, V3: gp_Vec, V4: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2 + A3 * V3
  ## + V4

proc setLinearForm*(this: var gp_Vec, A1: cdouble, V1: gp_Vec, A2: cdouble, V2: gp_Vec, A3: cdouble, V3: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2 + A3 * V3

proc setLinearForm*(this: var gp_Vec, A1: cdouble, V1: gp_Vec, A2: cdouble, V2: gp_Vec, V3: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2 + V3

proc setLinearForm*(this: var gp_Vec, A1: cdouble, V1: gp_Vec, A2: cdouble, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2

proc setLinearForm*(this: var gp_Vec, A1: cdouble, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + V2

proc setLinearForm*(this: var gp_Vec, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : V1 + V2

proc mirror*(this: var gp_Vec, V: gp_Vec)  {.importcpp: "Mirror".}

proc mirrored*(this: gp_Vec, V: gp_Vec): gp_Vec  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a vector with respect to
  ## the vector V which is the center of the symmetry.

proc mirror*(this: var gp_Vec, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc mirrored*(this: gp_Vec, A1: gp_Ax1): gp_Vec  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a vector with respect to an
  ## axis placement which is the axis of the symmetry.

proc mirror*(this: var gp_Vec, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc mirrored*(this: gp_Vec, A2: gp_Ax2): gp_Vec  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a vector with respect to a
  ## plane. The axis placement A2 locates the plane of the symmetry :
  ## (Location, XDirection, YDirection).

proc rotate*(this: var gp_Vec, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc rotated*(this: gp_Vec, A1: gp_Ax1, Ang: cdouble): gp_Vec  {.importcpp: "Rotated".}
  ## Rotates a vector. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc scale*(this: var gp_Vec, S: cdouble)  {.importcpp: "Scale".}

proc scaled*(this: gp_Vec, S: cdouble): gp_Vec  {.importcpp: "Scaled".}
  ## Scales a vector. S is the scaling value.

proc transform*(this: var gp_Vec, T: gp_Trsf)  {.importcpp: "Transform".}
  ## Transforms a vector with the transformation T.

proc transformed*(this: gp_Vec, T: gp_Trsf): gp_Vec  {.importcpp: "Transformed".}
  ## Transforms a vector with the transformation T.

{.pop.} # header: "gp_Vec.hxx

proc `$`*(pnt:gp_Vec):string =
  result = "Vec(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"