{.push header: "gp_Ax1.hxx".}


# Constructors and methods
proc Ax1*(): gp_Ax1 {.constructor,importcpp: "gp_Ax1".}
  ## Creates an axis object representing Z axis of the reference co-
  ## ordinate system.

proc Ax1*(P: gp_Pnt, V: gp_Dir): gp_Ax1 {.constructor,importcpp: "gp_Ax1(@)".}
  ## P is the location point and V is the direction of <me>.


#[
proc ` new`*(this: var gp_Ax1, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax1, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Ax1, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Ax1, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Ax1, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax1, pointer, pointer)  {.importcpp: "` delete`".}
]#

proc setDirection*(this: var gp_Ax1, V: gp_Dir)  {.importcpp: "SetDirection".}
  ## Assigns V as the "Direction" of this axis.

proc setLocation*(this: var gp_Ax1, P: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Assigns P as the origin of this axis.

proc direction*(this: gp_Ax1): gp_Dir  {.importcpp: "Direction".}
  ## Returns the direction of <me>.

proc location*(this: gp_Ax1): gp_Pnt  {.importcpp: "Location".}
  ## Returns the location point of <me>.

proc isCoaxial*(this: gp_Ax1, Other: gp_Ax1, AngularTolerance: cdouble, LinearTolerance: cdouble): bool  {.importcpp: "IsCoaxial".}
  ## Returns True if : . the angle between <me> and <Other> is lower or
  ## equal to <AngularTolerance> and . the distance between <me>.Location()
  ## and <Other> is lower or equal to <LinearTolerance> and . the distance
  ## between <Other>.Location() and <me> is lower or equal to
  ## LinearTolerance.

proc isNormal*(this: gp_Ax1, Other: gp_Ax1, AngularTolerance: cdouble): bool  {.importcpp: "IsNormal".}
  ## Returns True if the direction of the <me> and <Other> are normal to
  ## each other. That is, if the angle between the two axes is equal to
  ## Pi/2. Note: the tolerance criterion is given by AngularTolerance..

proc isOpposite*(this: gp_Ax1, Other: gp_Ax1, AngularTolerance: cdouble): bool  {.importcpp: "IsOpposite".}
  ## Returns True if the direction of <me> and <Other> are parallel with
  ## opposite orientation. That is, if the angle between the two axes is
  ## equal to Pi. Note: the tolerance criterion is given by
  ## AngularTolerance.

proc isParallel*(this: gp_Ax1, Other: gp_Ax1, AngularTolerance: cdouble): bool  {.importcpp: "IsParallel".}
  ## Returns True if the direction of <me> and <Other> are parallel with
  ## same orientation or opposite orientation. That is, if the angle
  ## between the two axes is equal to 0 or Pi. Note: the tolerance
  ## criterion is given by AngularTolerance.

proc angle*(this: gp_Ax1, Other: gp_Ax1): cdouble  {.importcpp: "Angle".}
  ## Computes the angular value, in radians, between <me>.Direction() and
  ## <Other>.Direction(). Returns the angle between 0 and 2*PI radians.

proc reverse*(this: var gp_Ax1)  {.importcpp: "Reverse".}
  ## Reverses the unit vector of this axis. and assigns the result to this
  ## axis.

proc reversed*(this: gp_Ax1): gp_Ax1  {.importcpp: "Reversed".}
  ## Reverses the unit vector of this axis and creates a new one.

proc mirror*(this: var gp_Ax1, P: gp_Pnt)  {.importcpp: "Mirror".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to the point P which is the center of the symmetry and assigns
  ## the result to this axis.

proc mirrored*(this: gp_Ax1, P: gp_Pnt): gp_Ax1  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to the point P which is the center of the symmetry and creates
  ## a new axis.

proc mirror*(this: var gp_Ax1, A1: gp_Ax1)  {.importcpp: "Mirror".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to an axis placement which is the axis of the symmetry and
  ## assigns the result to this axis.

proc mirrored*(this: gp_Ax1, A1: gp_Ax1): gp_Ax1  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to an axis placement which is the axis of the symmetry and
  ## creates a new axis.

proc mirror*(this: var gp_Ax1, A2: gp_Ax2)  {.importcpp: "Mirror".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to a plane. The axis placement <A2> locates the plane of the
  ## symmetry : (Location, XDirection, YDirection) and assigns the result
  ## to this axis.

proc mirrored*(this: gp_Ax1, A2: gp_Ax2): gp_Ax1  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to a plane. The axis placement <A2> locates the plane of the
  ## symmetry : (Location, XDirection, YDirection) and creates a new axis.

proc rotate*(this: var gp_Ax1, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}
  ## Rotates this axis at an angle Ang (in radians) about the axis A1 and
  ## assigns the result to this axis.

proc rotated*(this: gp_Ax1, A1: gp_Ax1, Ang: cdouble): gp_Ax1  {.importcpp: "Rotated".}
  ## Rotates this axis at an angle Ang (in radians) about the axis A1 and
  ## creates a new one.

proc scale*(this: var gp_Ax1, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}
  ## Applies a scaling transformation to this axis with: - scale factor S,
  ## and - center P and assigns the result to this axis.

proc scaled*(this: gp_Ax1, P: gp_Pnt, S: cdouble): gp_Ax1  {.importcpp: "Scaled".}
  ## Applies a scaling transformation to this axis with: - scale factor S,
  ## and - center P and creates a new axis.

proc transform*(this: var gp_Ax1, T: gp_Trsf)  {.importcpp: "Transform".}
  ## Applies the transformation T to this axis. and assigns the result to
  ## this axis.

proc transformed*(this: gp_Ax1, T: gp_Trsf): gp_Ax1  {.importcpp: "Transformed".}
  ## Applies the transformation T to this axis and creates a new one.

proc translate*(this: var gp_Ax1, V: gp_Vec)  {.importcpp: "Translate".}
  ## Translates this axis by the vector V, and assigns the result to this
  ## axis.

proc translated*(this: gp_Ax1, V: gp_Vec): gp_Ax1  {.importcpp: "Translated".}
  ## Translates this axis by the vector V, and creates a new one.

proc translate*(this: var gp_Ax1, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}
  ## Translates this axis by: the vector (P1, P2) defined from point P1 to
  ## point P2. and assigns the result to this axis.

proc translated*(this: gp_Ax1, P1: gp_Pnt, P2: gp_Pnt): gp_Ax1  {.importcpp: "Translated".}
  ## Translates this axis by: the vector (P1, P2) defined from point P1 to
  ## point P2. and creates a new one.

{.pop.} # header: "gp_Ax1.hxx
