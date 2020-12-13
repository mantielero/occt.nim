{.push header: "gp_Pln.hxx".}


# Constructors and methods
proc constructor_gp_Pln*(): gp_Pln {.constructor,importcpp: "gp_Pln".}
  ## Creates a plane coincident with OXY plane of the reference coordinate
  ## system.

proc constructor_gp_Pln*(A3: gp_Ax3): gp_Pln {.constructor,importcpp: "gp_Pln(@)".}
  ## The coordinate system of the plane is defined with the axis placement
  ## A3. The "Direction" of A3 defines the normal to the plane. The
  ## "Location" of A3 defines the location (origin) of the plane. The
  ## "XDirection" and "YDirection" of A3 define the "XAxis" and the "YAxis"
  ## of the plane used to parametrize the plane.

proc constructor_gp_Pln*(P: gp_Pnt, V: gp_Dir): gp_Pln {.constructor,importcpp: "gp_Pln(@)".}
  ## Creates a plane with the "Location" point <P> and the normal direction
  ## <V>.

proc constructor_gp_Pln*(A: cdouble, B: cdouble, C: cdouble, D: cdouble): gp_Pln {.constructor,importcpp: "gp_Pln(@)".}
  ## Creates a plane from its cartesian equation : A * X + B * Y + C * Z +
  ## D = 0.0 Raises ConstructionError if Sqrt (A*A + B*B + C*C) <=
  ## Resolution from gp.

proc ` new`*(this: var gp_Pln, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pln, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Pln, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Pln, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Pln, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Pln, pointer, pointer)  {.importcpp: "` delete`".}

proc Coefficients*(this: gp_Pln, A: var cdouble, B: var cdouble, C: var cdouble, D: var cdouble)  {.importcpp: "Coefficients".}
  ## Returns the coefficients of the plane's cartesian equation : A * X + B
  ## * Y + C * Z + D = 0.

proc SetAxis*(this: var gp_Pln, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Modifies this plane, by redefining its local coordinate system so that
  ## - its origin and "main Direction" become those of the axis A1 (the "X
  ## Direction" and "Y Direction" are then recomputed). Raises
  ## ConstructionError if the A1 is parallel to the "XAxis" of the plane.

proc SetLocation*(this: var gp_Pln, Loc: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the origin of the plane.

proc SetPosition*(this: var gp_Pln, A3: gp_Ax3)  {.importcpp: "SetPosition".}
  ## Changes the local coordinate system of the plane.

proc UReverse*(this: var gp_Pln)  {.importcpp: "UReverse".}
  ## Reverses the U parametrization of the plane reversing the XAxis.

proc VReverse*(this: var gp_Pln)  {.importcpp: "VReverse".}
  ## Reverses the V parametrization of the plane reversing the YAxis.

proc Direct*(this: gp_Pln): bool  {.importcpp: "Direct".}
  ## returns true if the Ax3 is right handed.

proc Axis*(this: gp_Pln): gp_Ax1  {.importcpp: "Axis".}
  ## Returns the plane's normal Axis.

proc Location*(this: gp_Pln): gp_Pnt  {.importcpp: "Location".}
  ## Returns the plane's location (origin).

proc Position*(this: gp_Pln): gp_Ax3  {.importcpp: "Position".}
  ## Returns the local coordinate system of the plane .

proc Distance*(this: gp_Pln, P: gp_Pnt): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between <me> and the point <P>.

proc Distance*(this: gp_Pln, L: gp_Lin): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between <me> and the line <L>.

proc Distance*(this: gp_Pln, Other: gp_Pln): cdouble  {.importcpp: "Distance".}
  ## Computes the distance between two planes.

proc SquareDistance*(this: gp_Pln, P: gp_Pnt): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between <me> and the point <P>.

proc SquareDistance*(this: gp_Pln, L: gp_Lin): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between <me> and the line <L>.

proc SquareDistance*(this: gp_Pln, Other: gp_Pln): cdouble  {.importcpp: "SquareDistance".}
  ## Computes the square distance between two planes.

proc XAxis*(this: gp_Pln): gp_Ax1  {.importcpp: "XAxis".}
  ## Returns the X axis of the plane.

proc YAxis*(this: gp_Pln): gp_Ax1  {.importcpp: "YAxis".}
  ## Returns the Y axis of the plane.

proc Contains*(this: gp_Pln, P: gp_Pnt, LinearTolerance: cdouble): bool  {.importcpp: "Contains".}
  ## Returns true if this plane contains the point P. This means that - the
  ## distance between point P and this plane is less than or equal to
  ## LinearTolerance, or - line L is normal to the "main Axis" of the local
  ## coordinate system of this plane, within the tolerance
  ## AngularTolerance, and the distance between the origin of line L and
  ## this plane is less than or equal to LinearTolerance.

proc Contains*(this: gp_Pln, L: gp_Lin, LinearTolerance: cdouble, AngularTolerance: cdouble): bool  {.importcpp: "Contains".}
  ## Returns true if this plane contains the line L. This means that - the
  ## distance between point P and this plane is less than or equal to
  ## LinearTolerance, or - line L is normal to the "main Axis" of the local
  ## coordinate system of this plane, within the tolerance
  ## AngularTolerance, and the distance between the origin of line L and
  ## this plane is less than or equal to LinearTolerance.

proc Mirror*(this: var gp_Pln, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Pln, P: gp_Pnt): gp_Pln  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a plane with respect to the
  ## point <P> which is the center of the symmetry Warnings : The normal
  ## direction to the plane is not changed. The "XAxis" and the "YAxis" are
  ## reversed.

proc Mirror*(this: var gp_Pln, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Pln, A1: gp_Ax1): gp_Pln  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a plane with respect to an
  ## axis placement which is the axis of the symmetry. The transformation
  ## is performed on the "Location" point, on the "XAxis" and the "YAxis".
  ## The resulting normal direction is the cross product between the
  ## "XDirection" and the "YDirection" after transformation if the initial
  ## plane was right handed, else it is the opposite.

proc Mirror*(this: var gp_Pln, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Pln, A2: gp_Ax2): gp_Pln  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a plane with respect to an
  ## axis placement. The axis placement <A2> locates the plane of the
  ## symmetry. The transformation is performed on the "Location" point, on
  ## the "XAxis" and the "YAxis". The resulting normal direction is the
  ## cross product between the "XDirection" and the "YDirection" after
  ## transformation if the initial plane was right handed, else it is the
  ## opposite.

proc Rotate*(this: var gp_Pln, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Pln, A1: gp_Ax1, Ang: cdouble): gp_Pln  {.importcpp: "Rotated".}
  ## rotates a plane. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Pln, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Pln, P: gp_Pnt, S: cdouble): gp_Pln  {.importcpp: "Scaled".}
  ## Scales a plane. S is the scaling value.

proc Transform*(this: var gp_Pln, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Pln, T: gp_Trsf): gp_Pln  {.importcpp: "Transformed".}
  ## Transforms a plane with the transformation T from class Trsf. The
  ## transformation is performed on the "Location" point, on the "XAxis"
  ## and the "YAxis". The resulting normal direction is the cross product
  ## between the "XDirection" and the "YDirection" after transformation.

proc Translate*(this: var gp_Pln, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Pln, V: gp_Vec): gp_Pln  {.importcpp: "Translated".}
  ## Translates a plane in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Pln, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Pln, P1: gp_Pnt, P2: gp_Pnt): gp_Pln  {.importcpp: "Translated".}
  ## Translates a plane from the point P1 to the point P2.

{.pop.} # header: "gp_Pln.hxx
