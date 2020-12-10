{.push header: "gp_Sphere.hxx".}


# Constructors and methods
proc constructor_gp_Sphere*(): gp_Sphere {.constructor,importcpp: "gp_Sphere".}
  ## Creates an indefinite sphere.

proc constructor_gp_Sphere*(A3: gp_Ax3, Radius: Standard_Real): gp_Sphere {.constructor,importcpp: "gp_Sphere(@)".}
  ## Constructs a sphere with radius Radius, centered on the origin of A3.
  ## A3 is the local coordinate system of the sphere. Warnings : It is not
  ## forbidden to create a sphere with null radius. Raises
  ## ConstructionError if Radius < 0.0

proc ` new`*(this: var gp_Sphere, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Sphere, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Sphere, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Sphere, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Sphere, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Sphere, pointer, pointer)  {.importcpp: "` delete`".}

proc SetLocation*(this: var gp_Sphere, Loc: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the center of the sphere.

proc SetPosition*(this: var gp_Sphere, A3: gp_Ax3)  {.importcpp: "SetPosition".}
  ## Changes the local coordinate system of the sphere.

proc SetRadius*(this: var gp_Sphere, R: Standard_Real)  {.importcpp: "SetRadius".}
  ## Assigns R the radius of the Sphere. Warnings : It is not forbidden to
  ## create a sphere with null radius. Raises ConstructionError if R < 0.0

proc Area*(this: gp_Sphere): Standard_Real  {.importcpp: "Area".}
  ## Computes the aera of the sphere.

proc Coefficients*(this: gp_Sphere, A1: var Standard_Real, A2: var Standard_Real, A3: var Standard_Real, B1: var Standard_Real, B2: var Standard_Real, B3: var Standard_Real, C1: var Standard_Real, C2: var Standard_Real, C3: var Standard_Real, D: var Standard_Real)  {.importcpp: "Coefficients".}
  ## Computes the coefficients of the implicit equation of the quadric in
  ## the absolute cartesian coordinates system : A1.X**2 + A2.Y**2 +
  ## A3.Z**2 + 2.(B1.X.Y + B2.X.Z + B3.Y.Z) + 2.(C1.X + C2.Y + C3.Z) + D =
  ## 0.0

proc UReverse*(this: var gp_Sphere)  {.importcpp: "UReverse".}
  ## Reverses the U parametrization of the sphere reversing the YAxis.

proc VReverse*(this: var gp_Sphere)  {.importcpp: "VReverse".}
  ## Reverses the V parametrization of the sphere reversing the ZAxis.

proc Direct*(this: gp_Sphere): Standard_Boolean  {.importcpp: "Direct".}
  ## Returns true if the local coordinate system of this sphere is right-
  ## handed.

proc Location*(this: gp_Sphere): gp_Pnt  {.importcpp: "Location".}
  ## --- Purpose ; Returns the center of the sphere.

proc Position*(this: gp_Sphere): gp_Ax3  {.importcpp: "Position".}
  ## Returns the local coordinates system of the sphere.

proc Radius*(this: gp_Sphere): Standard_Real  {.importcpp: "Radius".}
  ## Returns the radius of the sphere.

proc Volume*(this: gp_Sphere): Standard_Real  {.importcpp: "Volume".}
  ## Computes the volume of the sphere

proc XAxis*(this: gp_Sphere): gp_Ax1  {.importcpp: "XAxis".}
  ## Returns the axis X of the sphere.

proc YAxis*(this: gp_Sphere): gp_Ax1  {.importcpp: "YAxis".}
  ## Returns the axis Y of the sphere.

proc Mirror*(this: var gp_Sphere, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Sphere, P: gp_Pnt): gp_Sphere  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a sphere with respect to
  ## the point P which is the center of the symmetry.

proc Mirror*(this: var gp_Sphere, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Sphere, A1: gp_Ax1): gp_Sphere  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a sphere with respect to an
  ## axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Sphere, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Sphere, A2: gp_Ax2): gp_Sphere  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a sphere with respect to a
  ## plane. The axis placement A2 locates the plane of the of the symmetry
  ## : (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Sphere, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Sphere, A1: gp_Ax1, Ang: Standard_Real): gp_Sphere  {.importcpp: "Rotated".}
  ## Rotates a sphere. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Sphere, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Sphere, P: gp_Pnt, S: Standard_Real): gp_Sphere  {.importcpp: "Scaled".}
  ## Scales a sphere. S is the scaling value. The absolute value of S is
  ## used to scale the sphere

proc Transform*(this: var gp_Sphere, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Sphere, T: gp_Trsf): gp_Sphere  {.importcpp: "Transformed".}
  ## Transforms a sphere with the transformation T from class Trsf.

proc Translate*(this: var gp_Sphere, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Sphere, V: gp_Vec): gp_Sphere  {.importcpp: "Translated".}
  ## Translates a sphere in the direction of the vector V. The magnitude of
  ## the translation is the vector's magnitude.

proc Translate*(this: var gp_Sphere, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Sphere, P1: gp_Pnt, P2: gp_Pnt): gp_Sphere  {.importcpp: "Translated".}
  ## Translates a sphere from the point P1 to the point P2.

{.pop.} # header: "gp_Sphere.hxx
