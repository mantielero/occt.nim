{.push header: "gp_Pnt.hxx".}


# Constructors and methods
proc Pnt*(): gp_Pnt {.constructor,importcpp: "gp_Pnt".}
  ## Creates a point with zero coordinates.
  ## DONE

proc Pnt*(Coord: gp_XYZ): gp_Pnt {.constructor,importcpp: "gp_Pnt(@)".}
  ## Creates a point from a XYZ object.

proc Pnt*(Xp: cdouble, Yp: cdouble, Zp: cdouble): gp_Pnt {.constructor,importcpp: "gp_Pnt(@)".}
  ## Creates a point with its 3 cartesian's coordinates : Xp, Yp, Zp.
  ## DONE



#[
proc Pnt*[X,Y,Z:SomeNumber](x:X,y:Y,z:Z):gp_Pnt =
  constructor_gp_Pnt(x.cdouble, y.cdouble, z.cdouble) 
]#
#[
proc ` new`*(this: var gp_Pnt, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pnt, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Pnt, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Pnt, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Pnt, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pnt, pointer, pointer)  {.importcpp: "` delete`".}
]#

proc setCoord*(this: var gp_Pnt, Index: cint, Xi: cdouble)  {.importcpp: "SetCoord".}
  ## Changes the coordinate of range Index : Index = 1 => X is modified
  ## Index = 2 => Y is modified Index = 3 => Z is modified Raised if Index
  ## != {1, 2, 3}.

proc setCoord*(this: var gp_Pnt, Xp: cdouble, Yp: cdouble, Zp: cdouble)  {.importcpp: "SetCoord".}
  ## For this point, assigns the values Xp, Yp and Zp to its three
  ## coordinates.
  ## DONE

proc setX*(this: var gp_Pnt, X: cdouble)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this point.
  ## DONE

proc setY*(this: var gp_Pnt, Y: cdouble)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate of this point.
  ## DONE
  
proc setZ*(this: var gp_Pnt, Z: cdouble)  {.importcpp: "SetZ".}
  ## Assigns the given value to the Z coordinate of this point.
  ## DONE

proc setXYZ*(this: var gp_Pnt, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
  ## Assigns the three coordinates of Coord to this point.

proc coord*(this: gp_Pnt, Index: cint): cdouble  {.importcpp: "Coord".}
  ## Returns the coordinate of corresponding to the value of Index : Index
  ## = 1 => X is returned Index = 2 => Y is returned Index = 3 => Z is
  ## returned Raises OutOfRange if Index != {1, 2, 3}. Raised if Index !=
  ## {1, 2, 3}.
  ## DONE

proc coord*(this: gp_Pnt, Xp: var cdouble, Yp: var cdouble, Zp: var cdouble)  {.importcpp: "Coord".}
  ## For this point gives its three coordinates Xp, Yp and Zp.
  ## DONE

proc x*(this: gp_Pnt): cdouble  {.importcpp: "X".}
  ## For this point, returns its X coordinate.
  ## DONE

proc y*(this: gp_Pnt): cdouble  {.importcpp: "Y".}
  ## For this point, returns its Y coordinate.
  ## DONE

proc z*(this: gp_Pnt): cdouble  {.importcpp: "Z".}
  ## For this point, returns its Z coordinate.
  ## DONE

proc xyz*(this: gp_Pnt): gp_XYZ  {.importcpp: "XYZ".}
  ## For this point, returns its three coordinates as a XYZ object.

proc coord*(this: gp_Pnt): gp_XYZ  {.importcpp: "Coord".}
  ## For this point, returns its three coordinates as a XYZ object.

proc changeCoord*(this: var gp_Pnt): gp_XYZ  {.importcpp: "ChangeCoord".}
  ## Returns the coordinates of this point. Note: This syntax allows direct
  ## modification of the returned value.

proc baryCenter*(this: var gp_Pnt, Alpha: cdouble, P: gp_Pnt, Beta: cdouble)  {.importcpp: "BaryCenter".}
  ## Assigns the result of the following expression to this point
  ## (Alpha*this + Beta*P) / (Alpha + Beta)

proc isEqual*(this: gp_Pnt, Other: gp_Pnt, LinearTolerance: cdouble): bool  {.importcpp: "IsEqual".}
  ## Comparison Returns True if the distance between the two points is
  ## lower or equal to LinearTolerance.

proc distance*(this: gp_Pnt, Other: gp_Pnt): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between two points.
  ## DONE

proc squareDistance*(this: gp_Pnt, Other: gp_Pnt): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between two points.
  ## DONE

proc mirror*(this: var gp_Pnt, P: gp_Pnt)  {.importcpp: "Mirror".}
  ## Performs the symmetrical transformation of a point with respect to the
  ## point P which is the center of the symmetry.
  ## DONE

proc mirrored*(this: gp_Pnt, P: gp_Pnt): gp_Pnt  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a point with respect to an
  ## axis placement which is the axis of the symmetry.
  ## DONE

proc mirror*(this: var gp_Pnt, A1: gp_Ax1)  {.importcpp: "Mirror".}


proc mirrored*(this: gp_Pnt, A1: gp_Ax1): gp_Pnt  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a point with respect to a
  ## plane. The axis placement A2 locates the plane of the symmetry :
  ## (Location, XDirection, YDirection).

proc mirror*(this: var gp_Pnt, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc mirrored*(this: gp_Pnt, A2: gp_Ax2): gp_Pnt  {.importcpp: "Mirrored".}
  ## Rotates a point. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc rotate*(this: var gp_Pnt, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc rotated*(this: gp_Pnt, A1: gp_Ax1, Ang: cdouble): gp_Pnt  {.importcpp: "Rotated".}
  ## Scales a point. S is the scaling value.

proc scale*(this: var gp_Pnt, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}

proc scaled*(this: gp_Pnt, P: gp_Pnt, S: cdouble): gp_Pnt  {.importcpp: "Scaled".}
  ## Transforms a point with the transformation T.

proc transform*(this: var gp_Pnt, T: gp_Trsf)  {.importcpp: "Transform".}

proc transformed*(this: gp_Pnt, T: gp_Trsf): gp_Pnt  {.importcpp: "Transformed".}
  ## Translates a point in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc translate*(this: var gp_Pnt, V: gp_Vec)  {.importcpp: "Translate".}

proc translated*(this: gp_Pnt, V: gp_Vec): gp_Pnt  {.importcpp: "Translated".}
  ## Translates a point from the point P1 to the point P2.

proc translate*(this: var gp_Pnt, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc translated*(this: gp_Pnt, P1: gp_Pnt, P2: gp_Pnt): gp_Pnt  {.importcpp: "Translated".}

{.pop.} # header: "gp_Pnt.hxx

proc `$`*(pnt:gp_Pnt):string =
  result = "Pnt(x:" & $pnt.x & ", y:" & $pnt.y & ", z:" & $pnt.z & ")\n"

proc set*[X,Y,Z:SomeNumber](pnt:var gp_Pnt, x:X, y:Y, z:Z) =
  pnt.setCoord(x.cdouble, y.cdouble, z.cdouble)

proc `[]`*[I:SomeInteger](pnt:gp_Pnt, idx:I):float =
  pnt.coord(idx.cint).float