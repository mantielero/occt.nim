{.push header: "gp_Pnt.hxx".}


# Constructors and methods
proc constructor_gp_Pnt*(): gp_Pnt {.constructor,importcpp: "gp_Pnt".}
  ## Creates a point with zero coordinates.

proc constructor_gp_Pnt*(Coord: gp_XYZ): gp_Pnt {.constructor,importcpp: "gp_Pnt(@)".}
  ## Creates a point from a XYZ object.

proc constructor_gp_Pnt*(Xp: Standard_Real, Yp: Standard_Real, Zp: Standard_Real): gp_Pnt {.constructor,importcpp: "gp_Pnt(@)".}
  ## Creates a point with its 3 cartesian's coordinates : Xp, Yp, Zp.

proc ` new`*(this: var gp_Pnt, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pnt, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Pnt, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Pnt, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Pnt, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pnt, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCoord*(this: var gp_Pnt, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
  ## Changes the coordinate of range Index : Index = 1 => X is modified
  ## Index = 2 => Y is modified Index = 3 => Z is modified Raised if Index
  ## != {1, 2, 3}.

proc SetCoord*(this: var gp_Pnt, Xp: Standard_Real, Yp: Standard_Real, Zp: Standard_Real)  {.importcpp: "SetCoord".}
  ## For this point, assigns the values Xp, Yp and Zp to its three
  ## coordinates.

proc SetX*(this: var gp_Pnt, X: Standard_Real)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this point.

proc SetY*(this: var gp_Pnt, Y: Standard_Real)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate of this point.

proc SetZ*(this: var gp_Pnt, Z: Standard_Real)  {.importcpp: "SetZ".}
  ## Assigns the given value to the Z coordinate of this point.

proc SetXYZ*(this: var gp_Pnt, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
  ## Assigns the three coordinates of Coord to this point.

proc Coord*(this: gp_Pnt, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
  ## Returns the coordinate of corresponding to the value of Index : Index
  ## = 1 => X is returned Index = 2 => Y is returned Index = 3 => Z is
  ## returned Raises OutOfRange if Index != {1, 2, 3}. Raised if Index !=
  ## {1, 2, 3}.

proc Coord*(this: gp_Pnt, Xp: var Standard_Real, Yp: var Standard_Real, Zp: var Standard_Real)  {.importcpp: "Coord".}
  ## For this point gives its three coordinates Xp, Yp and Zp.

proc X*(this: gp_Pnt): Standard_Real  {.importcpp: "X".}
  ## For this point, returns its X coordinate.

proc Y*(this: gp_Pnt): Standard_Real  {.importcpp: "Y".}
  ## For this point, returns its Y coordinate.

proc Z*(this: gp_Pnt): Standard_Real  {.importcpp: "Z".}
  ## For this point, returns its Z coordinate.

proc XYZ*(this: gp_Pnt): gp_XYZ  {.importcpp: "XYZ".}
  ## For this point, returns its three coordinates as a XYZ object.

proc Coord*(this: gp_Pnt): gp_XYZ  {.importcpp: "Coord".}
  ## For this point, returns its three coordinates as a XYZ object.

proc ChangeCoord*(this: var gp_Pnt): gp_XYZ  {.importcpp: "ChangeCoord".}
  ## Returns the coordinates of this point. Note: This syntax allows direct
  ## modification of the returned value.

proc BaryCenter*(this: var gp_Pnt, Alpha: Standard_Real, P: gp_Pnt, Beta: Standard_Real)  {.importcpp: "BaryCenter".}
  ## Assigns the result of the following expression to this point
  ## (Alpha*this + Beta*P) / (Alpha + Beta)

proc IsEqual*(this: gp_Pnt, Other: gp_Pnt, LinearTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
  ## Comparison Returns True if the distance between the two points is
  ## lower or equal to LinearTolerance.

proc Distance*(this: gp_Pnt, Other: gp_Pnt): Standard_Real  {.importcpp: "Distance".}
  ## Computes the distance between two points.

proc SquareDistance*(this: gp_Pnt, Other: gp_Pnt): Standard_Real  {.importcpp: "SquareDistance".}
  ## Computes the square distance between two points.

proc Mirror*(this: var gp_Pnt, P: gp_Pnt)  {.importcpp: "Mirror".}
  ## Performs the symmetrical transformation of a point with respect to the
  ## point P which is the center of the symmetry.

proc Mirrored*(this: gp_Pnt, P: gp_Pnt): gp_Pnt  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a point with respect to an
  ## axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Pnt, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Pnt, A1: gp_Ax1): gp_Pnt  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a point with respect to a
  ## plane. The axis placement A2 locates the plane of the symmetry :
  ## (Location, XDirection, YDirection).

proc Mirror*(this: var gp_Pnt, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Pnt, A2: gp_Ax2): gp_Pnt  {.importcpp: "Mirrored".}
  ## Rotates a point. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Rotate*(this: var gp_Pnt, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Pnt, A1: gp_Ax1, Ang: Standard_Real): gp_Pnt  {.importcpp: "Rotated".}
  ## Scales a point. S is the scaling value.

proc Scale*(this: var gp_Pnt, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Pnt, P: gp_Pnt, S: Standard_Real): gp_Pnt  {.importcpp: "Scaled".}
  ## Transforms a point with the transformation T.

proc Transform*(this: var gp_Pnt, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Pnt, T: gp_Trsf): gp_Pnt  {.importcpp: "Transformed".}
  ## Translates a point in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Pnt, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Pnt, V: gp_Vec): gp_Pnt  {.importcpp: "Translated".}
  ## Translates a point from the point P1 to the point P2.

proc Translate*(this: var gp_Pnt, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Pnt, P1: gp_Pnt, P2: gp_Pnt): gp_Pnt  {.importcpp: "Translated".}

{.pop.} # header: "gp_Pnt.hxx
