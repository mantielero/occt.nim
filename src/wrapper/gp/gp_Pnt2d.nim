{.push header: "gp_Pnt2d.hxx".}


# Constructors and methods
proc constructor_gp_Pnt2d*(): gp_Pnt2d {.constructor,importcpp: "gp_Pnt2d".}
  ## Creates a point with zero coordinates.

proc constructor_gp_Pnt2d*(Coord: gp_XY): gp_Pnt2d {.constructor,importcpp: "gp_Pnt2d(@)".}
  ## Creates a point with a doublet of coordinates.

proc constructor_gp_Pnt2d*(Xp: Standard_Real, Yp: Standard_Real): gp_Pnt2d {.constructor,importcpp: "gp_Pnt2d(@)".}
  ## Creates a point with its 2 cartesian's coordinates : Xp, Yp.

proc ` new`*(this: var gp_Pnt2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pnt2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Pnt2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Pnt2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Pnt2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pnt2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCoord*(this: var gp_Pnt2d, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
  ## Assigns the value Xi to the coordinate that corresponds to Index:
  ## Index = 1 => X is modified Index = 2 => Y is modified Raises
  ## OutOfRange if Index != {1, 2}.

proc SetCoord*(this: var gp_Pnt2d, Xp: Standard_Real, Yp: Standard_Real)  {.importcpp: "SetCoord".}
  ## For this point, assigns the values Xp and Yp to its two coordinates

proc SetX*(this: var gp_Pnt2d, X: Standard_Real)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this point.

proc SetY*(this: var gp_Pnt2d, Y: Standard_Real)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate of this point.

proc SetXY*(this: var gp_Pnt2d, Coord: gp_XY)  {.importcpp: "SetXY".}
  ## Assigns the two coordinates of Coord to this point.

proc Coord*(this: gp_Pnt2d, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
  ## Returns the coordinate of range Index : Index = 1 => X is returned
  ## Index = 2 => Y is returned Raises OutOfRange if Index != {1, 2}.

proc Coord*(this: gp_Pnt2d, Xp: var Standard_Real, Yp: var Standard_Real)  {.importcpp: "Coord".}
  ## For this point returns its two coordinates as a number pair.

proc X*(this: gp_Pnt2d): Standard_Real  {.importcpp: "X".}
  ## For this point, returns its X coordinate.

proc Y*(this: gp_Pnt2d): Standard_Real  {.importcpp: "Y".}
  ## For this point, returns its Y coordinate.

proc XY*(this: gp_Pnt2d): gp_XY  {.importcpp: "XY".}
  ## For this point, returns its two coordinates as a number pair.

proc Coord*(this: gp_Pnt2d): gp_XY  {.importcpp: "Coord".}
  ## For this point, returns its two coordinates as a number pair.

proc ChangeCoord*(this: var gp_Pnt2d): gp_XY  {.importcpp: "ChangeCoord".}
  ## Returns the coordinates of this point. Note: This syntax allows direct
  ## modification of the returned value.

proc IsEqual*(this: gp_Pnt2d, Other: gp_Pnt2d, LinearTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
  ## Comparison Returns True if the distance between the two points is
  ## lower or equal to LinearTolerance.

proc Distance*(this: gp_Pnt2d, Other: gp_Pnt2d): Standard_Real  {.importcpp: "Distance".}
  ## Computes the distance between two points.

proc SquareDistance*(this: gp_Pnt2d, Other: gp_Pnt2d): Standard_Real  {.importcpp: "SquareDistance".}
  ## Computes the square distance between two points.

proc Mirror*(this: var gp_Pnt2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}
  ## Performs the symmetrical transformation of a point with respect to the
  ## point P which is the center of the symmetry.

proc Mirrored*(this: gp_Pnt2d, P: gp_Pnt2d): gp_Pnt2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a point with respect to an
  ## axis placement which is the axis

proc Mirror*(this: var gp_Pnt2d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Pnt2d, A: gp_Ax2d): gp_Pnt2d  {.importcpp: "Mirrored".}
  ## Rotates a point. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Rotate*(this: var gp_Pnt2d, P: gp_Pnt2d, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Pnt2d, P: gp_Pnt2d, Ang: Standard_Real): gp_Pnt2d  {.importcpp: "Rotated".}
  ## Scales a point. S is the scaling value.

proc Scale*(this: var gp_Pnt2d, P: gp_Pnt2d, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Pnt2d, P: gp_Pnt2d, S: Standard_Real): gp_Pnt2d  {.importcpp: "Scaled".}
  ## Transforms a point with the transformation T.

proc Transform*(this: var gp_Pnt2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Pnt2d, T: gp_Trsf2d): gp_Pnt2d  {.importcpp: "Transformed".}
  ## Translates a point in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Pnt2d, V: gp_Vec2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Pnt2d, V: gp_Vec2d): gp_Pnt2d  {.importcpp: "Translated".}
  ## Translates a point from the point P1 to the point P2.

proc Translate*(this: var gp_Pnt2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Pnt2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Pnt2d  {.importcpp: "Translated".}

{.pop.} # header: "gp_Pnt2d.hxx
