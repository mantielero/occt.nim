{.push header: "gp_Ax22d.hxx".}


# Constructors and methods
proc constructor_gp_Ax22d*(): gp_Ax22d {.constructor,importcpp: "gp_Ax22d".}
  ## Creates an object representing the reference co-ordinate system (OXY).

proc constructor_gp_Ax22d*(P: gp_Pnt2d, Vx: gp_Dir2d, Vy: gp_Dir2d): gp_Ax22d {.constructor,importcpp: "gp_Ax22d(@)".}
  ## Creates a coordinate system with origin P and where: - Vx is the "X
  ## Direction", and - the "Y Direction" is orthogonal to Vx and oriented
  ## so that the cross products Vx^"Y Direction" and Vx^Vy have the same
  ## sign. Raises ConstructionError if Vx and Vy are parallel (same or
  ## opposite orientation).

proc constructor_gp_Ax22d*(P: gp_Pnt2d, V: gp_Dir2d, Sense: Standard_Boolean): gp_Ax22d {.constructor,importcpp: "gp_Ax22d(@)".}
  ## Creates - a coordinate system with origin P and "X Direction" V, which
  ## is: - right-handed if Sense is true (default value), or - left-handed
  ## if Sense is false

proc constructor_gp_Ax22d*(A: gp_Ax2d, Sense: Standard_Boolean): gp_Ax22d {.constructor,importcpp: "gp_Ax22d(@)".}
  ## Creates - a coordinate system where its origin is the origin of A and
  ## its "X Direction" is the unit vector of A, which is: - right-handed if
  ## Sense is true (default value), or - left-handed if Sense is false.

proc ` new`*(this: var gp_Ax22d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax22d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Ax22d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Ax22d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Ax22d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Ax22d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAxis*(this: var gp_Ax22d, A1: gp_Ax22d)  {.importcpp: "SetAxis".}
  ## Assigns the origin and the two unit vectors of the coordinate system
  ## A1 to this coordinate system.

proc SetXAxis*(this: var gp_Ax22d, A1: gp_Ax2d)  {.importcpp: "SetXAxis".}
  ## Changes the XAxis and YAxis ("Location" point and "Direction") of
  ## <me>. The "YDirection" is recomputed in the same sense as before.

proc SetYAxis*(this: var gp_Ax22d, A1: gp_Ax2d)  {.importcpp: "SetYAxis".}
  ## Changes the XAxis and YAxis ("Location" point and "Direction") of
  ## <me>. The "XDirection" is recomputed in the same sense as before.

proc SetLocation*(this: var gp_Ax22d, P: gp_Pnt2d)  {.importcpp: "SetLocation".}
  ## Changes the "Location" point (origin) of <me>.

proc SetXDirection*(this: var gp_Ax22d, Vx: gp_Dir2d)  {.importcpp: "SetXDirection".}
  ## Assigns Vx to the "X Direction" of this coordinate system. The other
  ## unit vector of this coordinate system is recomputed, normal to Vx ,
  ## without modifying the orientation (right-handed or left-handed) of
  ## this coordinate system.

proc SetYDirection*(this: var gp_Ax22d, Vy: gp_Dir2d)  {.importcpp: "SetYDirection".}
  ## Assignsr Vy to the "Y Direction" of this coordinate system. The other
  ## unit vector of this coordinate system is recomputed, normal to Vy,
  ## without modifying the orientation (right-handed or left-handed) of
  ## this coordinate system.

proc XAxis*(this: gp_Ax22d): gp_Ax2d  {.importcpp: "XAxis".}
  ## Returns an axis, for which - the origin is that of this coordinate
  ## system, and - the unit vector is either the "X Direction" of this
  ## coordinate system. Note: the result is the "X Axis" of this coordinate
  ## system.

proc YAxis*(this: gp_Ax22d): gp_Ax2d  {.importcpp: "YAxis".}
  ## Returns an axis, for which - the origin is that of this coordinate
  ## system, and - the unit vector is either the "Y Direction" of this
  ## coordinate system. Note: the result is the "Y Axis" of this coordinate
  ## system.

proc Location*(this: gp_Ax22d): gp_Pnt2d  {.importcpp: "Location".}
  ## Returns the "Location" point (origin) of <me>.

proc XDirection*(this: gp_Ax22d): gp_Dir2d  {.importcpp: "XDirection".}
  ## Returns the "XDirection" of <me>.

proc YDirection*(this: gp_Ax22d): gp_Dir2d  {.importcpp: "YDirection".}
  ## Returns the "YDirection" of <me>.

proc Mirror*(this: var gp_Ax22d, P: gp_Pnt2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Ax22d, P: gp_Pnt2d): gp_Ax22d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to the point P which is the center of the symmetry. Warnings :
  ## The main direction of the axis placement is not changed. The
  ## "XDirection" and the "YDirection" are reversed. So the axis placement
  ## stay right handed.

proc Mirror*(this: var gp_Ax22d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Ax22d, A: gp_Ax2d): gp_Ax22d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an axis placement with
  ## respect to an axis placement which is the axis of the symmetry. The
  ## transformation is performed on the "Location" point, on the
  ## "XDirection" and "YDirection". The resulting main "Direction" is the
  ## cross product between the "XDirection" and the "YDirection" after
  ## transformation.

proc Rotate*(this: var gp_Ax22d, P: gp_Pnt2d, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Ax22d, P: gp_Pnt2d, Ang: Standard_Real): gp_Ax22d  {.importcpp: "Rotated".}
  ## Rotates an axis placement. <A1> is the axis of the rotation . Ang is
  ## the angular value of the rotation in radians.

proc Scale*(this: var gp_Ax22d, P: gp_Pnt2d, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Ax22d, P: gp_Pnt2d, S: Standard_Real): gp_Ax22d  {.importcpp: "Scaled".}
  ## Applies a scaling transformation on the axis placement. The "Location"
  ## point of the axisplacement is modified. Warnings : If the scale <S> is
  ## negative : . the main direction of the axis placement is not changed.
  ## . The "XDirection" and the "YDirection" are reversed. So the axis
  ## placement stay right handed.

proc Transform*(this: var gp_Ax22d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Ax22d, T: gp_Trsf2d): gp_Ax22d  {.importcpp: "Transformed".}
  ## Transforms an axis placement with a Trsf. The "Location" point, the
  ## "XDirection" and the "YDirection" are transformed with T. The
  ## resulting main "Direction" of <me> is the cross product between the
  ## "XDirection" and the "YDirection" after transformation.

proc Translate*(this: var gp_Ax22d, V: gp_Vec2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Ax22d, V: gp_Vec2d): gp_Ax22d  {.importcpp: "Translated".}
  ## Translates an axis plaxement in the direction of the vector <V>. The
  ## magnitude of the translation is the vector's magnitude.

proc Translate*(this: var gp_Ax22d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Ax22d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Ax22d  {.importcpp: "Translated".}
  ## Translates an axis placement from the point <P1> to the point <P2>.

{.pop.} # header: "gp_Ax22d.hxx
