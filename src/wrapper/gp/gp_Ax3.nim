{.push header: "gp_Ax3.hxx".}


# Constructors and methods
proc constructor_gp_Ax3*(): gp_Ax3 {.constructor,importcpp: "gp_Ax3".}
  ## Creates an object corresponding to the reference coordinate system
  ## (OXYZ).

proc constructor_gp_Ax3*(A: gp_Ax2): gp_Ax3 {.constructor,importcpp: "gp_Ax3(@)".}
  ## Creates a coordinate system from a right-handed coordinate system.

proc constructor_gp_Ax3*(P: gp_Pnt, N: gp_Dir, Vx: gp_Dir): gp_Ax3 {.constructor,importcpp: "gp_Ax3(@)".}
  ## Creates a right handed axis placement with the "Location" point P and
  ## two directions, N gives the "Direction" and Vx gives the "XDirection".
  ## Raises ConstructionError if N and Vx are parallel (same or opposite
  ## orientation).

proc constructor_gp_Ax3*(P: gp_Pnt, V: gp_Dir): gp_Ax3 {.constructor,importcpp: "gp_Ax3(@)".}
  ## Creates an axis placement with the "Location" point <P> and the normal
  ## direction <V>.

proc ` new`*(this: var gp_Ax3, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax3, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Ax3, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Ax3, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Ax3, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax3, pointer, pointer)  {.importcpp: "` delete`".}

proc XReverse*(this: var gp_Ax3)  {.importcpp: "XReverse".}
  ## Reverses the X direction of <me>.

proc YReverse*(this: var gp_Ax3)  {.importcpp: "YReverse".}
  ## Reverses the Y direction of <me>.

proc ZReverse*(this: var gp_Ax3)  {.importcpp: "ZReverse".}
  ## Reverses the Z direction of <me>.

proc SetAxis*(this: var gp_Ax3, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Assigns the origin and "main Direction" of the axis A1 to this
  ## coordinate system, then recomputes its "X Direction" and "Y
  ## Direction". Note: - The new "X Direction" is computed as follows: new
  ## "X Direction" = V1 ^(previous "X Direction" ^ V) where V is the
  ## "Direction" of A1. - The orientation of this coordinate system (right-
  ## handed or left-handed) is not modified. Raises ConstructionError if
  ## the "Direction" of <A1> and the "XDirection" of <me> are parallel
  ## (same or opposite orientation) because it is impossible to calculate
  ## the new "XDirection" and the new "YDirection".

proc SetDirection*(this: var gp_Ax3, V: gp_Dir)  {.importcpp: "SetDirection".}
  ## Changes the main direction of this coordinate system, then recomputes
  ## its "X Direction" and "Y Direction". Note: - The new "X Direction" is
  ## computed as follows: new "X Direction" = V ^ (previous "X Direction" ^
  ## V). - The orientation of this coordinate system (left- or right-
  ## handed) is not modified. Raises ConstructionError if <V< and the
  ## previous "XDirection" are parallel because it is impossible to
  ## calculate the new "XDirection" and the new "YDirection".

proc SetLocation*(this: var gp_Ax3, P: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the "Location" point (origin) of <me>.

proc SetXDirection*(this: var gp_Ax3, Vx: gp_Dir)  {.importcpp: "SetXDirection".}
  ## Changes the "Xdirection" of <me>. The main direction "Direction" is
  ## not modified, the "Ydirection" is modified. If <Vx> is not normal to
  ## the main direction then <XDirection> is computed as follows XDirection
  ## = Direction ^ (Vx ^ Direction). Raises ConstructionError if <Vx> is
  ## parallel (same or opposite orientation) to the main direction of <me>

proc SetYDirection*(this: var gp_Ax3, Vy: gp_Dir)  {.importcpp: "SetYDirection".}
  ## Changes the "Ydirection" of <me>. The main direction is not modified
  ## but the "Xdirection" is changed. If <Vy> is not normal to the main
  ## direction then "YDirection" is computed as follows YDirection =
  ## Direction ^ (<Vy> ^ Direction). Raises ConstructionError if <Vy> is
  ## parallel to the main direction of <me>

proc Angle*(this: gp_Ax3, Other: gp_Ax3): Standard_Real  {.importcpp: "Angle".}
  ## Computes the angular value between the main direction of <me> and the
  ## main direction of <Other>. Returns the angle between 0 and PI in
  ## radians.

proc Axis*(this: gp_Ax3): gp_Ax1  {.importcpp: "Axis".}
  ## Returns the main axis of <me>. It is the "Location" point and the main
  ## "Direction".

proc Ax2*(this: gp_Ax3): gp_Ax2  {.importcpp: "Ax2".}
  ## Computes a right-handed coordinate system with the same "X Direction"
  ## and "Y Direction" as those of this coordinate system, then recomputes
  ## the "main Direction". If this coordinate system is right-handed, the
  ## result returned is the same coordinate system. If this coordinate
  ## system is left-handed, the result is reversed.

proc Direction*(this: gp_Ax3): gp_Dir  {.importcpp: "Direction".}
  ## Returns the main direction of <me>.

proc Location*(this: gp_Ax3): gp_Pnt  {.importcpp: "Location".}
  ## Returns the "Location" point (origin) of <me>.

proc XDirection*(this: gp_Ax3): gp_Dir  {.importcpp: "XDirection".}
  ## Returns the "XDirection" of <me>.

proc YDirection*(this: gp_Ax3): gp_Dir  {.importcpp: "YDirection".}
  ## Returns the "YDirection" of <me>.

proc Direct*(this: gp_Ax3): Standard_Boolean  {.importcpp: "Direct".}
  ## Returns True if the coordinate system is right-handed. i.e.
  ## XDirection().Crossed(YDirection()).Dot(Direction()) > 0

proc IsCoplanar*(this: gp_Ax3, Other: gp_Ax3, LinearTolerance: Standard_Real, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsCoplanar".}
  ## Returns True if . the distance between the "Location" point of <me>
  ## and <Other> is lower or equal to LinearTolerance and . the distance
  ## between the "Location" point of <Other> and <me> is lower or equal to
  ## LinearTolerance and . the main direction of <me> and the main
  ## direction of <Other> are parallel (same or opposite orientation).

proc IsCoplanar*(this: gp_Ax3, A1: gp_Ax1, LinearTolerance: Standard_Real, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsCoplanar".}
  ## Returns True if . the distance between <me> and the "Location" point
  ## of A1 is lower of equal to LinearTolerance and . the distance between
  ## A1 and the "Location" point of <me> is lower or equal to
  ## LinearTolerance and . the main direction of <me> and the direction of
  ## A1 are normal.

proc Mirror*(this: var gp_Ax3, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Ax3, P: gp_Pnt): gp_Ax3  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to the point P which is the center of the symmetry. Warnings :
  ## The main direction of the axis placement is not changed. The
  ## "XDirection" and the "YDirection" are reversed. So the axis placement
  ## stay right handed.

proc Mirror*(this: var gp_Ax3, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Ax3, A1: gp_Ax1): gp_Ax3  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to an axis placement which is the axis of the symmetry. The
  ## transformation is performed on the "Location" point, on the
  ## "XDirection" and "YDirection". The resulting main "Direction" is the
  ## cross product between the "XDirection" and the "YDirection" after
  ## transformation.

proc Mirror*(this: var gp_Ax3, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Ax3, A2: gp_Ax2): gp_Ax3  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to a plane. The axis placement <A2> locates the plane of the
  ## symmetry : (Location, XDirection, YDirection). The transformation is
  ## performed on the "Location" point, on the "XDirection" and
  ## "YDirection". The resulting main "Direction" is the cross product
  ## between the "XDirection" and the "YDirection" after transformation.

proc Rotate*(this: var gp_Ax3, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Ax3, A1: gp_Ax1, Ang: Standard_Real): gp_Ax3  {.importcpp: "Rotated".}
  ## Rotates an axis placement. <A1> is the axis of the rotation . Ang is
  ## the angular value of the rotation in radians.

proc Scale*(this: var gp_Ax3, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Ax3, P: gp_Pnt, S: Standard_Real): gp_Ax3  {.importcpp: "Scaled".}
  ## Applies a scaling transformation on the axis placement. The "Location"
  ## point of the axisplacement is modified. Warnings : If the scale <S> is
  ## negative : . the main direction of the axis placement is not changed.
  ## . The "XDirection" and the "YDirection" are reversed. So the axis
  ## placement stay right handed.

proc Transform*(this: var gp_Ax3, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Ax3, T: gp_Trsf): gp_Ax3  {.importcpp: "Transformed".}
  ## Transforms an axis placement with a Trsf. The "Location" point, the
  ## "XDirection" and the "YDirection" are transformed with T. The
  ## resulting main "Direction" of <me> is the cross product between the
  ## "XDirection" and the "YDirection" after transformation.

proc Translate*(this: var gp_Ax3, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Ax3, V: gp_Vec): gp_Ax3  {.importcpp: "Translated".}
  ## Translates an axis plaxement in the direction of the vector <V>. The
  ## magnitude of the translation is the vector's magnitude.

proc Translate*(this: var gp_Ax3, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Ax3, P1: gp_Pnt, P2: gp_Pnt): gp_Ax3  {.importcpp: "Translated".}
  ## Translates an axis placement from the point <P1> to the point <P2>.

{.pop.} # header: "gp_Ax3.hxx
