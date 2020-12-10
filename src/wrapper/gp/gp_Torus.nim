{.push header: "gp_Torus.hxx".}


# Constructors and methods
proc constructor_gp_Torus*(): gp_Torus {.constructor,importcpp: "gp_Torus".}
  ## creates an indefinite Torus.

proc constructor_gp_Torus*(A3: gp_Ax3, MajorRadius: Standard_Real, MinorRadius: Standard_Real): gp_Torus {.constructor,importcpp: "gp_Torus(@)".}
  ## a torus centered on the origin of coordinate system A3, with major
  ## radius MajorRadius and minor radius MinorRadius, and with the
  ## reference plane defined by the origin, the "X Direction" and the "Y
  ## Direction" of A3. Warnings : It is not forbidden to create a torus
  ## with MajorRadius = MinorRadius = 0.0 Raises ConstructionError if
  ## MinorRadius < 0.0 or if MajorRadius < 0.0

proc ` new`*(this: var gp_Torus, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Torus, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Torus, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Torus, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Torus, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Torus, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAxis*(this: var gp_Torus, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Modifies this torus, by redefining its local coordinate system so
  ## that: - its origin and "main Direction" become those of the axis A1
  ## (the "X Direction" and "Y Direction" are then recomputed). Raises
  ## ConstructionError if the direction of A1 is parallel to the
  ## "XDirection" of the coordinate system of the toroidal surface.

proc SetLocation*(this: var gp_Torus, Loc: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the location of the torus.

proc SetMajorRadius*(this: var gp_Torus, MajorRadius: Standard_Real)  {.importcpp: "SetMajorRadius".}
  ## Assigns value to the major radius of this torus. Raises
  ## ConstructionError if MajorRadius - MinorRadius <= Resolution()

proc SetMinorRadius*(this: var gp_Torus, MinorRadius: Standard_Real)  {.importcpp: "SetMinorRadius".}
  ## Assigns value to the minor radius of this torus. Raises
  ## ConstructionError if MinorRadius < 0.0 or if MajorRadius - MinorRadius
  ## <= Resolution from gp.

proc SetPosition*(this: var gp_Torus, A3: gp_Ax3)  {.importcpp: "SetPosition".}
  ## Changes the local coordinate system of the surface.

proc Area*(this: gp_Torus): Standard_Real  {.importcpp: "Area".}
  ## Computes the area of the torus.

proc UReverse*(this: var gp_Torus)  {.importcpp: "UReverse".}
  ## Reverses the U parametrization of the torus reversing the YAxis.

proc VReverse*(this: var gp_Torus)  {.importcpp: "VReverse".}
  ## Reverses the V parametrization of the torus reversing the ZAxis.

proc Direct*(this: gp_Torus): Standard_Boolean  {.importcpp: "Direct".}
  ## returns true if the Ax3, the local coordinate system of this torus, is
  ## right handed.

proc Axis*(this: gp_Torus): gp_Ax1  {.importcpp: "Axis".}
  ## returns the symmetry axis of the torus.

proc Coefficients*(this: gp_Torus, Coef: var TColStd_Array1OfReal)  {.importcpp: "Coefficients".}
  ## Computes the coefficients of the implicit equation of the surface in
  ## the absolute Cartesian coordinate system: Coef(1) * X^4 + Coef(2) *
  ## Y^4 + Coef(3) * Z^4 + Coef(4) * X^3 * Y + Coef(5) * X^3 * Z + Coef(6)
  ## * Y^3 * X + Coef(7) * Y^3 * Z + Coef(8) * Z^3 * X + Coef(9) * Z^3 * Y
  ## + Coef(10) * X^2 * Y^2 + Coef(11) * X^2 * Z^2 + Coef(12) * Y^2 * Z^2 +
  ## Coef(13) * X^2 * Y * Z + Coef(14) * X * Y^2 * Z + Coef(15) * X * Y *
  ## Z^2 + Coef(16) * X^3 + Coef(17) * Y^3 + Coef(18) * Z^3 + Coef(19) *
  ## X^2 * Y + Coef(20) * X^2 * Z + Coef(21) * Y^2 * X + Coef(22) * Y^2 * Z
  ## + Coef(23) * Z^2 * X + Coef(24) * Z^2 * Y + Coef(25) * X * Y * Z +
  ## Coef(26) * X^2 + Coef(27) * Y^2 + Coef(28) * Z^2 + Coef(29) * X * Y +
  ## Coef(30) * X * Z + Coef(31) * Y * Z + Coef(32) * X + Coef(33) * Y +
  ## Coef(34) * Z + Coef(35) = 0.0 Raises DimensionError if the length of
  ## Coef is lower than 35.

proc Location*(this: gp_Torus): gp_Pnt  {.importcpp: "Location".}
  ## Returns the Torus's location.

proc Position*(this: gp_Torus): gp_Ax3  {.importcpp: "Position".}
  ## Returns the local coordinates system of the torus.

proc MajorRadius*(this: gp_Torus): Standard_Real  {.importcpp: "MajorRadius".}
  ## returns the major radius of the torus.

proc MinorRadius*(this: gp_Torus): Standard_Real  {.importcpp: "MinorRadius".}
  ## returns the minor radius of the torus.

proc Volume*(this: gp_Torus): Standard_Real  {.importcpp: "Volume".}
  ## Computes the volume of the torus.

proc XAxis*(this: gp_Torus): gp_Ax1  {.importcpp: "XAxis".}
  ## returns the axis X of the torus.

proc YAxis*(this: gp_Torus): gp_Ax1  {.importcpp: "YAxis".}
  ## returns the axis Y of the torus.

proc Mirror*(this: var gp_Torus, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Torus, P: gp_Pnt): gp_Torus  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a torus with respect to the
  ## point P which is the center of the symmetry.

proc Mirror*(this: var gp_Torus, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Torus, A1: gp_Ax1): gp_Torus  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a torus with respect to an
  ## axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Torus, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Torus, A2: gp_Ax2): gp_Torus  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a torus with respect to a
  ## plane. The axis placement A2 locates the plane of the of the symmetry
  ## : (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Torus, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Torus, A1: gp_Ax1, Ang: Standard_Real): gp_Torus  {.importcpp: "Rotated".}
  ## Rotates a torus. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Torus, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Torus, P: gp_Pnt, S: Standard_Real): gp_Torus  {.importcpp: "Scaled".}
  ## Scales a torus. S is the scaling value. The absolute value of S is
  ## used to scale the torus

proc Transform*(this: var gp_Torus, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Torus, T: gp_Trsf): gp_Torus  {.importcpp: "Transformed".}
  ## Transforms a torus with the transformation T from class Trsf.

proc Translate*(this: var gp_Torus, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Torus, V: gp_Vec): gp_Torus  {.importcpp: "Translated".}
  ## Translates a torus in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Torus, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Torus, P1: gp_Pnt, P2: gp_Pnt): gp_Torus  {.importcpp: "Translated".}
  ## Translates a torus from the point P1 to the point P2.

{.pop.} # header: "gp_Torus.hxx
