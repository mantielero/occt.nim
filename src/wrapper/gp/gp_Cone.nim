{.push header: "gp_Cone.hxx".}


# Constructors and methods
proc constructor_gp_Cone*(): gp_Cone {.constructor,importcpp: "gp_Cone".}
  ## Creates an indefinite Cone.

proc constructor_gp_Cone*(A3: gp_Ax3, Ang: Standard_Real, Radius: Standard_Real): gp_Cone {.constructor,importcpp: "gp_Cone(@)".}
  ## Creates an infinite conical surface. A3 locates the cone in the space
  ## and defines the reference plane of the surface. Ang is the conical
  ## surface semi-angle. Its absolute value is in range ]0, PI/2[. Radius
  ## is the radius of the circle in the reference plane of the cone. Raises
  ## ConstructionError * if Radius is lower than 0.0 * Abs(Ang) <
  ## Resolution from gp or Abs(Ang) >= (PI/2) - Resolution.

proc ` new`*(this: var gp_Cone, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Cone, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Cone, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Cone, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Cone, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Cone, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAxis*(this: var gp_Cone, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Changes the symmetry axis of the cone. Raises ConstructionError the
  ## direction of A1 is parallel to the "XDirection" of the coordinate
  ## system of the cone.

proc SetLocation*(this: var gp_Cone, Loc: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the location of the cone.

proc SetPosition*(this: var gp_Cone, A3: gp_Ax3)  {.importcpp: "SetPosition".}
  ## Changes the local coordinate system of the cone. This coordinate
  ## system defines the reference plane of the cone.

proc SetRadius*(this: var gp_Cone, R: Standard_Real)  {.importcpp: "SetRadius".}
  ## Changes the radius of the cone in the reference plane of the cone.
  ## Raised if R < 0.0

proc SetSemiAngle*(this: var gp_Cone, Ang: Standard_Real)  {.importcpp: "SetSemiAngle".}
  ## Changes the semi-angle of the cone. Semi-angle can be negative. Its
  ## absolute value Abs(Ang) is in range ]0,PI/2[. Raises ConstructionError
  ## if Abs(Ang) < Resolution from gp or Abs(Ang) >= PI/2 - Resolution

proc Apex*(this: gp_Cone): gp_Pnt  {.importcpp: "Apex".}
  ## Computes the cone's top. The Apex of the cone is on the negative side
  ## of the symmetry axis of the cone.

proc UReverse*(this: var gp_Cone)  {.importcpp: "UReverse".}
  ## Reverses the U parametrization of the cone reversing the YAxis.

proc VReverse*(this: var gp_Cone)  {.importcpp: "VReverse".}
  ## Reverses the V parametrization of the cone reversing the ZAxis.

proc Direct*(this: gp_Cone): Standard_Boolean  {.importcpp: "Direct".}
  ## Returns true if the local coordinate system of this cone is right-
  ## handed.

proc Axis*(this: gp_Cone): gp_Ax1  {.importcpp: "Axis".}
  ## returns the symmetry axis of the cone.

proc Coefficients*(this: gp_Cone, A1: var Standard_Real, A2: var Standard_Real, A3: var Standard_Real, B1: var Standard_Real, B2: var Standard_Real, B3: var Standard_Real, C1: var Standard_Real, C2: var Standard_Real, C3: var Standard_Real, D: var Standard_Real)  {.importcpp: "Coefficients".}
  ## Computes the coefficients of the implicit equation of the quadric in
  ## the absolute cartesian coordinates system : A1.X**2 + A2.Y**2 +
  ## A3.Z**2 + 2.(B1.X.Y + B2.X.Z + B3.Y.Z) + 2.(C1.X + C2.Y + C3.Z) + D =
  ## 0.0

proc Location*(this: gp_Cone): gp_Pnt  {.importcpp: "Location".}
  ## returns the "Location" point of the cone.

proc Position*(this: gp_Cone): gp_Ax3  {.importcpp: "Position".}
  ## Returns the local coordinates system of the cone.

proc RefRadius*(this: gp_Cone): Standard_Real  {.importcpp: "RefRadius".}
  ## Returns the radius of the cone in the reference plane.

proc SemiAngle*(this: gp_Cone): Standard_Real  {.importcpp: "SemiAngle".}
  ## Returns the half-angle at the apex of this cone. Attention! Semi-angle
  ## can be negative.

proc XAxis*(this: gp_Cone): gp_Ax1  {.importcpp: "XAxis".}
  ## Returns the XAxis of the reference plane.

proc YAxis*(this: gp_Cone): gp_Ax1  {.importcpp: "YAxis".}
  ## Returns the YAxis of the reference plane.

proc Mirror*(this: var gp_Cone, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Cone, P: gp_Pnt): gp_Cone  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a cone with respect to the
  ## point P which is the center of the symmetry.

proc Mirror*(this: var gp_Cone, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Cone, A1: gp_Ax1): gp_Cone  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a cone with respect to an
  ## axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Cone, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Cone, A2: gp_Ax2): gp_Cone  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a cone with respect to a
  ## plane. The axis placement A2 locates the plane of the of the symmetry
  ## : (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Cone, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Cone, A1: gp_Ax1, Ang: Standard_Real): gp_Cone  {.importcpp: "Rotated".}
  ## Rotates a cone. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Cone, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Cone, P: gp_Pnt, S: Standard_Real): gp_Cone  {.importcpp: "Scaled".}
  ## Scales a cone. S is the scaling value. The absolute value of S is used
  ## to scale the cone

proc Transform*(this: var gp_Cone, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Cone, T: gp_Trsf): gp_Cone  {.importcpp: "Transformed".}
  ## Transforms a cone with the transformation T from class Trsf.

proc Translate*(this: var gp_Cone, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Cone, V: gp_Vec): gp_Cone  {.importcpp: "Translated".}
  ## Translates a cone in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Cone, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Cone, P1: gp_Pnt, P2: gp_Pnt): gp_Cone  {.importcpp: "Translated".}
  ## Translates a cone from the point P1 to the point P2.

{.pop.} # header: "gp_Cone.hxx
