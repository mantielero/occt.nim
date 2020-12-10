{.push header: "gp_Cylinder.hxx".}


# Constructors and methods
proc constructor_gp_Cylinder*(): gp_Cylinder {.constructor,importcpp: "gp_Cylinder".}
  ## Creates a indefinite cylinder.

proc constructor_gp_Cylinder*(A3: gp_Ax3, Radius: Standard_Real): gp_Cylinder {.constructor,importcpp: "gp_Cylinder(@)".}
  ## Creates a cylinder of radius Radius, whose axis is the "main Axis" of
  ## A3. A3 is the local coordinate system of the cylinder. Raises
  ## ConstructionErrord if R < 0.0

proc ` new`*(this: var gp_Cylinder, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Cylinder, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Cylinder, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Cylinder, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Cylinder, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Cylinder, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAxis*(this: var gp_Cylinder, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Changes the symmetry axis of the cylinder. Raises ConstructionError if
  ## the direction of A1 is parallel to the "XDirection" of the coordinate
  ## system of the cylinder.

proc SetLocation*(this: var gp_Cylinder, Loc: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the location of the surface.

proc SetPosition*(this: var gp_Cylinder, A3: gp_Ax3)  {.importcpp: "SetPosition".}
  ## Change the local coordinate system of the surface.

proc SetRadius*(this: var gp_Cylinder, R: Standard_Real)  {.importcpp: "SetRadius".}
  ## Modifies the radius of this cylinder. Exceptions
  ## Standard_ConstructionError if R is negative.

proc UReverse*(this: var gp_Cylinder)  {.importcpp: "UReverse".}
  ## Reverses the U parametrization of the cylinder reversing the YAxis.

proc VReverse*(this: var gp_Cylinder)  {.importcpp: "VReverse".}
  ## Reverses the V parametrization of the plane reversing the Axis.

proc Direct*(this: gp_Cylinder): Standard_Boolean  {.importcpp: "Direct".}
  ## Returns true if the local coordinate system of this cylinder is right-
  ## handed.

proc Axis*(this: gp_Cylinder): gp_Ax1  {.importcpp: "Axis".}
  ## Returns the symmetry axis of the cylinder.

proc Coefficients*(this: gp_Cylinder, A1: var Standard_Real, A2: var Standard_Real, A3: var Standard_Real, B1: var Standard_Real, B2: var Standard_Real, B3: var Standard_Real, C1: var Standard_Real, C2: var Standard_Real, C3: var Standard_Real, D: var Standard_Real)  {.importcpp: "Coefficients".}
  ## Computes the coefficients of the implicit equation of the quadric in
  ## the absolute cartesian coordinate system : A1.X**2 + A2.Y**2 + A3.Z**2
  ## + 2.(B1.X.Y + B2.X.Z + B3.Y.Z) + 2.(C1.X + C2.Y + C3.Z) + D = 0.0

proc Location*(this: gp_Cylinder): gp_Pnt  {.importcpp: "Location".}
  ## Returns the "Location" point of the cylinder.

proc Position*(this: gp_Cylinder): gp_Ax3  {.importcpp: "Position".}
  ## Returns the local coordinate system of the cylinder.

proc Radius*(this: gp_Cylinder): Standard_Real  {.importcpp: "Radius".}
  ## Returns the radius of the cylinder.

proc XAxis*(this: gp_Cylinder): gp_Ax1  {.importcpp: "XAxis".}
  ## Returns the axis X of the cylinder.

proc YAxis*(this: gp_Cylinder): gp_Ax1  {.importcpp: "YAxis".}
  ## Returns the axis Y of the cylinder.

proc Mirror*(this: var gp_Cylinder, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Cylinder, P: gp_Pnt): gp_Cylinder  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a cylinder with respect to
  ## the point P which is the center of the symmetry.

proc Mirror*(this: var gp_Cylinder, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Cylinder, A1: gp_Ax1): gp_Cylinder  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a cylinder with respect to
  ## an axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Cylinder, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Cylinder, A2: gp_Ax2): gp_Cylinder  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a cylinder with respect to
  ## a plane. The axis placement A2 locates the plane of the of the
  ## symmetry : (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Cylinder, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Cylinder, A1: gp_Ax1, Ang: Standard_Real): gp_Cylinder  {.importcpp: "Rotated".}
  ## Rotates a cylinder. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Cylinder, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Cylinder, P: gp_Pnt, S: Standard_Real): gp_Cylinder  {.importcpp: "Scaled".}
  ## Scales a cylinder. S is the scaling value. The absolute value of S is
  ## used to scale the cylinder

proc Transform*(this: var gp_Cylinder, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Cylinder, T: gp_Trsf): gp_Cylinder  {.importcpp: "Transformed".}
  ## Transforms a cylinder with the transformation T from class Trsf.

proc Translate*(this: var gp_Cylinder, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Cylinder, V: gp_Vec): gp_Cylinder  {.importcpp: "Translated".}
  ## Translates a cylinder in the direction of the vector V. The magnitude
  ## of the translation is the vector's magnitude.

proc Translate*(this: var gp_Cylinder, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Cylinder, P1: gp_Pnt, P2: gp_Pnt): gp_Cylinder  {.importcpp: "Translated".}
  ## Translates a cylinder from the point P1 to the point P2.

{.pop.} # header: "gp_Cylinder.hxx
