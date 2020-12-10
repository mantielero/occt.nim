{.push header: "gp_Pnt.hxx".}


# Constructors and methods
proc constructor_gp_Pnt*(): gp_Pnt {.constructor,importcpp: "gp_Pnt".}
  ## Creates a point with zero coordinates.
  ## DONE

proc constructor_gp_Pnt*(Coord: gp_XYZ): gp_Pnt {.constructor,importcpp: "gp_Pnt(@)".}
  ## Creates a point from a XYZ object.

proc constructor_gp_Pnt*(Xp: cdouble, Yp: cdouble, Zp: cdouble): gp_Pnt {.constructor,importcpp: "gp_Pnt(@)".}
  ## Creates a point with its 3 cartesian's coordinates : Xp, Yp, Zp.
  ## DONE
  
#[
proc ` new`*(this: var gp_Pnt, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pnt, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Pnt, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Pnt, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Pnt, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pnt, pointer, pointer)  {.importcpp: "` delete`".}
]#

proc SetCoord*(this: var gp_Pnt, Index: cint, Xi: cdouble)  {.importcpp: "SetCoord".}
  ## Changes the coordinate of range Index : Index = 1 => X is modified
  ## Index = 2 => Y is modified Index = 3 => Z is modified Raised if Index
  ## != {1, 2, 3}.

proc SetCoord*(this: var gp_Pnt, Xp: cdouble, Yp: cdouble, Zp: cdouble)  {.importcpp: "SetCoord".}
  ## For this point, assigns the values Xp, Yp and Zp to its three
  ## coordinates.
  ## DONE

proc SetX*(this: var gp_Pnt, X: cdouble)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this point.
  ## DONE

proc SetY*(this: var gp_Pnt, Y: cdouble)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate of this point.
  ## DONE
  
proc SetZ*(this: var gp_Pnt, Z: cdouble)  {.importcpp: "SetZ".}
  ## Assigns the given value to the Z coordinate of this point.
  ## DONE

proc SetXYZ*(this: var gp_Pnt, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
  ## Assigns the three coordinates of Coord to this point.

proc Coord*(this: gp_Pnt, Index: cint): cdouble  {.importcpp: "Coord".}
  ## Returns the coordinate of corresponding to the value of Index : Index
  ## = 1 => X is returned Index = 2 => Y is returned Index = 3 => Z is
  ## returned Raises OutOfRange if Index != {1, 2, 3}. Raised if Index !=
  ## {1, 2, 3}.

proc Coord*(this: gp_Pnt, Xp: var cdouble, Yp: var cdouble, Zp: var cdouble)  {.importcpp: "Coord".}
  ## For this point gives its three coordinates Xp, Yp and Zp.

proc X*(this: gp_Pnt): cdouble  {.importcpp: "X".}
  ## For this point, returns its X coordinate.

proc Y*(this: gp_Pnt): cdouble  {.importcpp: "Y".}
  ## For this point, returns its Y coordinate.

proc Z*(this: gp_Pnt): cdouble  {.importcpp: "Z".}
  ## For this point, returns its Z coordinate.

proc XYZ*(this: gp_Pnt): gp_XYZ  {.importcpp: "XYZ".}
  ## For this point, returns its three coordinates as a XYZ object.

proc Coord*(this: gp_Pnt): gp_XYZ  {.importcpp: "Coord".}
  ## For this point, returns its three coordinates as a XYZ object.

proc ChangeCoord*(this: var gp_Pnt): gp_XYZ  {.importcpp: "ChangeCoord".}
  ## Returns the coordinates of this point. Note: This syntax allows direct
  ## modification of the returned value.

#------

proc BaryCenter*(this: var gp_Pnt, Alpha: cdouble, P: gp_Pnt, Beta: cdouble)  {.importcpp: "BaryCenter".}
  ## Assigns the result of the following expression to this point
  ## (Alpha*this + Beta*P) / (Alpha + Beta)

proc IsEqual*(this: gp_Pnt, Other: gp_Pnt, LinearTolerance: cdouble): bool  {.importcpp: "IsEqual".}
  ## Comparison Returns True if the distance between the two points is
  ## lower or equal to LinearTolerance.

proc Distance*(this: gp_Pnt, Other: gp_Pnt): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between two points.

proc SquareDistance*(this: gp_Pnt, Other: gp_Pnt): cdouble  {.importcpp: "SquareDistance".}
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

proc Rotate*(this: var gp_Pnt, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Pnt, A1: gp_Ax1, Ang: cdouble): gp_Pnt  {.importcpp: "Rotated".}
  ## Scales a point. S is the scaling value.

proc Scale*(this: var gp_Pnt, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Pnt, P: gp_Pnt, S: cdouble): gp_Pnt  {.importcpp: "Scaled".}
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
