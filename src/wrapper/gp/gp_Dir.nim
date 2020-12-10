{.push header: "gp_Dir.hxx".}


# Constructors and methods
proc constructor_gp_Dir*(): gp_Dir {.constructor,importcpp: "gp_Dir".}
  ## Creates a direction corresponding to X axis.

proc constructor_gp_Dir*(V: gp_Vec): gp_Dir {.constructor,importcpp: "gp_Dir(@)".}
  ## Normalizes the vector V and creates a direction. Raises
  ## ConstructionError if V.Magnitude() <= Resolution.

proc constructor_gp_Dir*(Coord: gp_XYZ): gp_Dir {.constructor,importcpp: "gp_Dir(@)".}
  ## Creates a direction from a triplet of coordinates. Raises
  ## ConstructionError if Coord.Modulus() <= Resolution from gp.

proc constructor_gp_Dir*(Xv: cdouble, Yv: cdouble, Zv: cdouble): gp_Dir {.constructor,importcpp: "gp_Dir(@)".}
  ## Creates a direction with its 3 cartesian coordinates. Raises
  ## ConstructionError if Sqrt(Xv*Xv + Yv*Yv + Zv*Zv) <= Resolution
  ## Modification of the direction's coordinates If Sqrt (X*X + Y*Y + Z*Z)
  ## <= Resolution from gp where X, Y ,Z are the new coordinates it is not
  ## possible to construct the direction and the method raises the
  ## exception ConstructionError.

proc ` new`*(this: var gp_Dir, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Dir, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Dir, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Dir, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Dir, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Dir, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCoord*(this: var gp_Dir, Index: cint, Xi: cdouble)  {.importcpp: "SetCoord".}
  ## For this unit vector, assigns the value Xi to: - the X coordinate if
  ## Index is 1, or - the Y coordinate if Index is 2, or - the Z coordinate
  ## if Index is 3, and then normalizes it. Warning Remember that all the
  ## coordinates of a unit vector are implicitly modified when any single
  ## one is changed directly. Exceptions Standard_OutOfRange if Index is
  ## not 1, 2, or 3. Standard_ConstructionError if either of the following
  ## is less than or equal to gp::Resolution(): - Sqrt(Xv*Xv + Yv*Yv +
  ## Zv*Zv), or - the modulus of the number triple formed by the new value
  ## Xi and the two other coordinates of this vector that were not directly
  ## modified.

proc SetCoord*(this: var gp_Dir, Xv: cdouble, Yv: cdouble, Zv: cdouble)  {.importcpp: "SetCoord".}
  ## For this unit vector, assigns the values Xv, Yv and Zv to its three
  ## coordinates. Remember that all the coordinates of a unit vector are
  ## implicitly modified when any single one is changed directly.

proc SetX*(this: var gp_Dir, X: cdouble)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this unit vector.

proc SetY*(this: var gp_Dir, Y: cdouble)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate of this unit vector.

proc SetZ*(this: var gp_Dir, Z: cdouble)  {.importcpp: "SetZ".}
  ## Assigns the given value to the Z coordinate of this unit vector.

proc SetXYZ*(this: var gp_Dir, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
  ## Assigns the three coordinates of Coord to this unit vector.

proc Coord*(this: gp_Dir, Index: cint): cdouble  {.importcpp: "Coord".}
  ## Returns the coordinate of range Index : Index = 1 => X is returned
  ## Index = 2 => Y is returned Index = 3 => Z is returned Exceptions
  ## Standard_OutOfRange if Index is not 1, 2, or 3.

proc Coord*(this: gp_Dir, Xv: var cdouble, Yv: var cdouble, Zv: var cdouble)  {.importcpp: "Coord".}
  ## Returns for the unit vector its three coordinates Xv, Yv, and Zv.

proc X*(this: gp_Dir): cdouble  {.importcpp: "X".}
  ## Returns the X coordinate for a unit vector.

proc Y*(this: gp_Dir): cdouble  {.importcpp: "Y".}
  ## Returns the Y coordinate for a unit vector.

proc Z*(this: gp_Dir): cdouble  {.importcpp: "Z".}
  ## Returns the Z coordinate for a unit vector.

proc XYZ*(this: gp_Dir): gp_XYZ  {.importcpp: "XYZ".}
  ## for this unit vector, returns its three coordinates as a number
  ## triplea.

proc IsEqual*(this: gp_Dir, Other: gp_Dir, AngularTolerance: cdouble): bool  {.importcpp: "IsEqual".}
  ## Returns True if the angle between the two directions is lower or equal
  ## to AngularTolerance.

proc IsNormal*(this: gp_Dir, Other: gp_Dir, AngularTolerance: cdouble): bool  {.importcpp: "IsNormal".}
  ## Returns True if the angle between this unit vector and the unit vector
  ## Other is equal to Pi/2 (normal).

proc IsOpposite*(this: gp_Dir, Other: gp_Dir, AngularTolerance: cdouble): bool  {.importcpp: "IsOpposite".}
  ## Returns True if the angle between this unit vector and the unit vector
  ## Other is equal to Pi (opposite).

proc IsParallel*(this: gp_Dir, Other: gp_Dir, AngularTolerance: cdouble): bool  {.importcpp: "IsParallel".}
  ## Returns true if the angle between this unit vector and the unit vector
  ## Other is equal to 0 or to Pi. Note: the tolerance criterion is given
  ## by AngularTolerance.

proc Angle*(this: gp_Dir, Other: gp_Dir): cdouble  {.importcpp: "Angle".}
  ## Computes the angular value in radians between <me> and <Other>. This
  ## value is always positive in 3D space. Returns the angle in the range
  ## [0, PI]

proc AngleWithRef*(this: gp_Dir, Other: gp_Dir, VRef: gp_Dir): cdouble  {.importcpp: "AngleWithRef".}
  ## Computes the angular value between <me> and <Other>. <VRef> is the
  ## direction of reference normal to <me> and <Other> and its orientation
  ## gives the positive sense of rotation. If the cross product <me> ^
  ## <Other> has the same orientation as <VRef> the angular value is
  ## positive else negative. Returns the angular value in the range -PI and
  ## PI (in radians). Raises DomainError if <me> and <Other> are not
  ## parallel this exception is raised when <VRef> is in the same plane as
  ## <me> and <Other> The tolerance criterion is Resolution from package
  ## gp.

proc Cross*(this: var gp_Dir, Right: gp_Dir)  {.importcpp: "Cross".}
  ## Computes the cross product between two directions Raises the exception
  ## ConstructionError if the two directions are parallel because the
  ## computed vector cannot be normalized to create a direction.

proc `^=`*(this: var gp_Dir, Right: gp_Dir)  {.importcpp: "`^=`".}

proc Crossed*(this: gp_Dir, Right: gp_Dir): gp_Dir  {.importcpp: "Crossed".}
  ## Computes the triple vector product. <me> ^ (V1 ^ V2) Raises the
  ## exception ConstructionError if V1 and V2 are parallel or <me> and
  ## (V1^V2) are parallel because the computed vector can't be normalized
  ## to create a direction.

proc `^`*(this: gp_Dir, Right: gp_Dir): gp_Dir  {.importcpp: "`^`".}

proc CrossCross*(this: var gp_Dir, V1: gp_Dir, V2: gp_Dir)  {.importcpp: "CrossCross".}

proc CrossCrossed*(this: gp_Dir, V1: gp_Dir, V2: gp_Dir): gp_Dir  {.importcpp: "CrossCrossed".}
  ## Computes the double vector product this ^ (V1 ^ V2). - CrossCrossed
  ## creates a new unit vector. Exceptions Standard_ConstructionError if: -
  ## V1 and V2 are parallel, or - this unit vector and (V1 ^ V2) are
  ## parallel. This is because, in these conditions, the computed vector is
  ## null and cannot be normalized.

proc Dot*(this: gp_Dir, Other: gp_Dir): cdouble  {.importcpp: "Dot".}
  ## Computes the scalar product

proc `*`*(this: gp_Dir, Other: gp_Dir): cdouble  {.importcpp: "`*`".}

proc DotCross*(this: gp_Dir, V1: gp_Dir, V2: gp_Dir): cdouble  {.importcpp: "DotCross".}
  ## Computes the triple scalar product <me> * (V1 ^ V2). Warnings : The
  ## computed vector V1' = V1 ^ V2 is not normalized to create a unitary
  ## vector. So this method never raises an exception even if V1 and V2 are
  ## parallel.

proc Reverse*(this: var gp_Dir)  {.importcpp: "Reverse".}

proc Reversed*(this: gp_Dir): gp_Dir  {.importcpp: "Reversed".}
  ## Reverses the orientation of a direction geometric transformations
  ## Performs the symmetrical transformation of a direction with respect to
  ## the direction V which is the center of the symmetry.]

proc `-`*(this: gp_Dir): gp_Dir  {.importcpp: "`-`".}

proc Mirror*(this: var gp_Dir, V: gp_Dir)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Dir, V: gp_Dir): gp_Dir  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a direction with respect to
  ## the direction V which is the center of the symmetry.

proc Mirror*(this: var gp_Dir, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Dir, A1: gp_Ax1): gp_Dir  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a direction with respect to
  ## an axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Dir, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Dir, A2: gp_Ax2): gp_Dir  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a direction with respect to
  ## a plane. The axis placement A2 locates the plane of the symmetry :
  ## (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Dir, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Dir, A1: gp_Ax1, Ang: cdouble): gp_Dir  {.importcpp: "Rotated".}
  ## Rotates a direction. A1 is the axis of the rotation. Ang is the
  ## angular value of the rotation in radians.

proc Transform*(this: var gp_Dir, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Dir, T: gp_Trsf): gp_Dir  {.importcpp: "Transformed".}
  ## Transforms a direction with a "Trsf" from gp. Warnings : If the scale
  ## factor of the "Trsf" T is negative then the direction <me> is
  ## reversed.

{.pop.} # header: "gp_Dir.hxx
