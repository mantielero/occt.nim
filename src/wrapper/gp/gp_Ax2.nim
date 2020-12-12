{.push header: "gp_Ax2.hxx".}


# Constructors and methods
proc constructor_gp_Ax2*(): gp_Ax2 {.constructor,importcpp: "gp_Ax2".}
  ## Creates an object corresponding to the reference coordinate system
  ## (OXYZ).

proc constructor_gp_Ax2*(P: gp_Pnt, N: gp_Dir, Vx: gp_Dir): gp_Ax2 {.constructor,importcpp: "gp_Ax2(@)".}
  ## Creates an axis placement with an origin P such that: - N is the
  ## Direction, and - the "X Direction" is normal to N, in the plane
  ## defined by the vectors (N, Vx): "X Direction" = (N ^ Vx) ^ N,
  ## Exception: raises ConstructionError if N and Vx are parallel (same or
  ## opposite orientation).

proc constructor_gp_Ax2*(P: gp_Pnt, V: gp_Dir): gp_Ax2 {.constructor,importcpp: "gp_Ax2(@)".}
  ## Creates - a coordinate system with an origin P, where V gives the
  ## "main Direction" (here, "X Direction" and "Y Direction" are defined
  ## automatically).

#[
proc ` new`*(this: var gp_Ax2, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax2, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Ax2, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Ax2, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Ax2, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax2, pointer, pointer)  {.importcpp: "` delete`".}
]#

proc setAxis*(this: var gp_Ax2, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Assigns the origin and "main Direction" of the axis A1 to this
  ## coordinate system, then recomputes its "X Direction" and "Y
  ## Direction". Note: The new "X Direction" is computed as follows: new "X
  ## Direction" = V1 ^(previous "X Direction" ^ V) where V is the
  ## "Direction" of A1. Exceptions Standard_ConstructionError if A1 is
  ## parallel to the "X Direction" of this coordinate system.

proc setDirection*(this: var gp_Ax2, V: gp_Dir)  {.importcpp: "SetDirection".}
  ## Changes the "main Direction" of this coordinate system, then
  ## recomputes its "X Direction" and "Y Direction". Note: the new "X
  ## Direction" is computed as follows: new "X Direction" = V ^ (previous
  ## "X Direction" ^ V) Exceptions Standard_ConstructionError if V is
  ## parallel to the "X Direction" of this coordinate system.

proc setLocation*(this: var gp_Ax2, P: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the "Location" point (origin) of <me>.

proc setXDirection*(this: var gp_Ax2, Vx: gp_Dir)  {.importcpp: "SetXDirection".}
  ## Changes the "Xdirection" of <me>. The main direction "Direction" is
  ## not modified, the "Ydirection" is modified. If <Vx> is not normal to
  ## the main direction then <XDirection> is computed as follows XDirection
  ## = Direction ^ (Vx ^ Direction). Exceptions Standard_ConstructionError
  ## if Vx or Vy is parallel to the "main Direction" of this coordinate
  ## system.

proc setYDirection*(this: var gp_Ax2, Vy: gp_Dir)  {.importcpp: "SetYDirection".}
  ## Changes the "Ydirection" of <me>. The main direction is not modified
  ## but the "Xdirection" is changed. If <Vy> is not normal to the main
  ## direction then "YDirection" is computed as follows YDirection =
  ## Direction ^ (<Vy> ^ Direction). Exceptions Standard_ConstructionError
  ## if Vx or Vy is parallel to the "main Direction" of this coordinate
  ## system.

proc Angle*(this: gp_Ax2, Other: gp_Ax2): cdouble  {.importcpp: "Angle".}
  ## Computes the angular value, in radians, between the main direction of
  ## <me> and the main direction of <Other>. Returns the angle between 0
  ## and PI in radians.

proc axis*(this: gp_Ax2): gp_Ax1  {.importcpp: "Axis".}
  ## Returns the main axis of <me>. It is the "Location" point and the main
  ## "Direction".

proc direction*(this: gp_Ax2): gp_Dir  {.importcpp: "Direction".}
  ## Returns the main direction of <me>.

proc location*(this: gp_Ax2): gp_Pnt  {.importcpp: "Location".}
  ## Returns the "Location" point (origin) of <me>.

proc xDirection*(this: gp_Ax2): gp_Dir  {.importcpp: "XDirection".}
  ## Returns the "XDirection" of <me>.

proc yDirection*(this: gp_Ax2): gp_Dir  {.importcpp: "YDirection".}
  ## Returns the "YDirection" of <me>.

proc IsCoplanar*(this: gp_Ax2, Other: gp_Ax2, LinearTolerance: cdouble, AngularTolerance: cdouble): bool  {.importcpp: "IsCoplanar".}

proc IsCoplanar*(this: gp_Ax2, A1: gp_Ax1, LinearTolerance: cdouble, AngularTolerance: cdouble): bool  {.importcpp: "IsCoplanar".}
  ## Returns True if . the distance between <me> and the "Location" point
  ## of A1 is lower of equal to LinearTolerance and . the main direction of
  ## <me> and the direction of A1 are normal. Note: the tolerance criterion
  ## for angular equality is given by AngularTolerance.

proc mirror*(this: var gp_Ax2, P: gp_Pnt)  {.importcpp: "Mirror".}
  ## Performs a symmetrical transformation of this coordinate system with
  ## respect to: - the point P, and assigns the result to this coordinate
  ## system. Warning This transformation is always performed on the origin.
  ## In case of a reflection with respect to a point: - the main direction
  ## of the coordinate system is not changed, and - the "X Direction" and
  ## the "Y Direction" are simply reversed In case of a reflection with
  ## respect to an axis or a plane: - the transformation is applied to the
  ## "X Direction" and the "Y Direction", then - the "main Direction" is
  ## recomputed as the cross product "X Direction" ^ "Y Direction". This
  ## maintains the right-handed property of the coordinate system.

proc mirrored*(this: gp_Ax2, P: gp_Pnt): gp_Ax2  {.importcpp: "Mirrored".}
  ## Performs a symmetrical transformation of this coordinate system with
  ## respect to: - the point P, and creates a new one. Warning This
  ## transformation is always performed on the origin. In case of a
  ## reflection with respect to a point: - the main direction of the
  ## coordinate system is not changed, and - the "X Direction" and the "Y
  ## Direction" are simply reversed In case of a reflection with respect to
  ## an axis or a plane: - the transformation is applied to the "X
  ## Direction" and the "Y Direction", then - the "main Direction" is
  ## recomputed as the cross product "X Direction" ^ "Y Direction". This
  ## maintains the right-handed property of the coordinate system.

proc mirror*(this: var gp_Ax2, A1: gp_Ax1)  {.importcpp: "Mirror".}
  ## Performs a symmetrical transformation of this coordinate system with
  ## respect to: - the axis A1, and assigns the result to this coordinate
  ## systeme. Warning This transformation is always performed on the
  ## origin. In case of a reflection with respect to a point: - the main
  ## direction of the coordinate system is not changed, and - the "X
  ## Direction" and the "Y Direction" are simply reversed In case of a
  ## reflection with respect to an axis or a plane: - the transformation is
  ## applied to the "X Direction" and the "Y Direction", then - the "main
  ## Direction" is recomputed as the cross product "X Direction" ^ "Y
  ## Direction". This maintains the right-handed property of the coordinate
  ## system.

proc mirrored*(this: gp_Ax2, A1: gp_Ax1): gp_Ax2  {.importcpp: "Mirrored".}
  ## Performs a symmetrical transformation of this coordinate system with
  ## respect to: - the axis A1, and creates a new one. Warning This
  ## transformation is always performed on the origin. In case of a
  ## reflection with respect to a point: - the main direction of the
  ## coordinate system is not changed, and - the "X Direction" and the "Y
  ## Direction" are simply reversed In case of a reflection with respect to
  ## an axis or a plane: - the transformation is applied to the "X
  ## Direction" and the "Y Direction", then - the "main Direction" is
  ## recomputed as the cross product "X Direction" ^ "Y Direction". This
  ## maintains the right-handed property of the coordinate system.

proc mirror*(this: var gp_Ax2, A2: gp_Ax2)  {.importcpp: "Mirror".}
  ## Performs a symmetrical transformation of this coordinate system with
  ## respect to: - the plane defined by the origin, "X Direction" and "Y
  ## Direction" of coordinate system A2 and assigns the result to this
  ## coordinate systeme. Warning This transformation is always performed on
  ## the origin. In case of a reflection with respect to a point: - the
  ## main direction of the coordinate system is not changed, and - the "X
  ## Direction" and the "Y Direction" are simply reversed In case of a
  ## reflection with respect to an axis or a plane: - the transformation is
  ## applied to the "X Direction" and the "Y Direction", then - the "main
  ## Direction" is recomputed as the cross product "X Direction" ^ "Y
  ## Direction". This maintains the right-handed property of the coordinate
  ## system.

proc mirrored*(this: gp_Ax2, A2: gp_Ax2): gp_Ax2  {.importcpp: "Mirrored".}
  ## Performs a symmetrical transformation of this coordinate system with
  ## respect to: - the plane defined by the origin, "X Direction" and "Y
  ## Direction" of coordinate system A2 and creates a new one. Warning This
  ## transformation is always performed on the origin. In case of a
  ## reflection with respect to a point: - the main direction of the
  ## coordinate system is not changed, and - the "X Direction" and the "Y
  ## Direction" are simply reversed In case of a reflection with respect to
  ## an axis or a plane: - the transformation is applied to the "X
  ## Direction" and the "Y Direction", then - the "main Direction" is
  ## recomputed as the cross product "X Direction" ^ "Y Direction". This
  ## maintains the right-handed property of the coordinate system.

proc Rotate*(this: var gp_Ax2, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Ax2, A1: gp_Ax1, Ang: cdouble): gp_Ax2  {.importcpp: "Rotated".}
  ## Rotates an axis placement. <A1> is the axis of the rotation . Ang is
  ## the angular value of the rotation in radians.

proc Scale*(this: var gp_Ax2, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Ax2, P: gp_Pnt, S: cdouble): gp_Ax2  {.importcpp: "Scaled".}
  ## Applies a scaling transformation on the axis placement. The "Location"
  ## point of the axisplacement is modified. Warnings : If the scale <S> is
  ## negative : . the main direction of the axis placement is not changed.
  ## . The "XDirection" and the "YDirection" are reversed. So the axis
  ## placement stay right handed.

proc transform*(this: var gp_Ax2, T: gp_Trsf)  {.importcpp: "Transform".}

proc transformed*(this: gp_Ax2, T: gp_Trsf): gp_Ax2  {.importcpp: "Transformed".}
  ## Transforms an axis placement with a Trsf. The "Location" point, the
  ## "XDirection" and the "YDirection" are transformed with T. The
  ## resulting main "Direction" of <me> is the cross product between the
  ## "XDirection" and the "YDirection" after transformation.

proc translate*(this: var gp_Ax2, V: gp_Vec)  {.importcpp: "Translate".}

proc translated*(this: gp_Ax2, V: gp_Vec): gp_Ax2  {.importcpp: "Translated".}
  ## Translates an axis plaxement in the direction of the vector <V>. The
  ## magnitude of the translation is the vector's magnitude.

proc translate*(this: var gp_Ax2, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc translated*(this: gp_Ax2, P1: gp_Pnt, P2: gp_Pnt): gp_Ax2  {.importcpp: "Translated".}
  ## Translates an axis placement from the point <P1> to the point <P2>.

{.pop.} # header: "gp_Ax2.hxx
