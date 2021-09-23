import cinterop

csource "gp_Pnt.hxx":
  type 
    gp_Pnt* = object of CClass
    
type
  Pnt* = gp_Pnt


proc newPnt*():Pnt =
  Pnt.init()

proc newPnt*[A,B,C:SomeNumber](x:A,y:B,z:C):Pnt = 
  Pnt.init(x.cdouble, y.cdouble, z.cdouble)


#[

proc setXYZ*(this: var gp_Pnt, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
  ## Assigns the three coordinates of Coord to this point.

]#

#[
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
]#
proc distance*(this, other: Pnt): cfloat =
  ## Computes the distance between two points.
  cexpr[cfloat]^this.Distance(other)

#[
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

]#
#------
