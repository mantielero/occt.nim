{.push header: "gp_Elips.hxx".}


# Constructors and methods
proc constructor_gp_Elips*(): gp_Elips {.constructor,importcpp: "gp_Elips".}
  ## Creates an indefinite ellipse.

proc constructor_gp_Elips*(A2: gp_Ax2, MajorRadius: Standard_Real, MinorRadius: Standard_Real): gp_Elips {.constructor,importcpp: "gp_Elips(@)".}
  ## The major radius of the ellipse is on the "XAxis" and the minor radius
  ## is on the "YAxis" of the ellipse. The "XAxis" is defined with the
  ## "XDirection" of A2 and the "YAxis" is defined with the "YDirection" of
  ## A2. Warnings : It is not forbidden to create an ellipse with
  ## MajorRadius = MinorRadius. Raises ConstructionError if MajorRadius <
  ## MinorRadius or MinorRadius < 0.

proc ` new`*(this: var gp_Elips, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Elips, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Elips, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Elips, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Elips, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Elips, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAxis*(this: var gp_Elips, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Changes the axis normal to the plane of the ellipse. It modifies the
  ## definition of this plane. The "XAxis" and the "YAxis" are recomputed.
  ## The local coordinate system is redefined so that: - its origin and
  ## "main Direction" become those of the axis A1 (the "X Direction" and "Y
  ## Direction" are then recomputed in the same way as for any gp_Ax2), or
  ## Raises ConstructionError if the direction of A1 is parallel to the
  ## direction of the "XAxis" of the ellipse.

proc SetLocation*(this: var gp_Elips, P: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Modifies this ellipse, by redefining its local coordinate so that its
  ## origin becomes P.

proc SetMajorRadius*(this: var gp_Elips, MajorRadius: Standard_Real)  {.importcpp: "SetMajorRadius".}
  ## The major radius of the ellipse is on the "XAxis" (major axis) of the
  ## ellipse. Raises ConstructionError if MajorRadius < MinorRadius.

proc SetMinorRadius*(this: var gp_Elips, MinorRadius: Standard_Real)  {.importcpp: "SetMinorRadius".}
  ## The minor radius of the ellipse is on the "YAxis" (minor axis) of the
  ## ellipse. Raises ConstructionError if MinorRadius > MajorRadius or
  ## MinorRadius < 0.

proc SetPosition*(this: var gp_Elips, A2: gp_Ax2)  {.importcpp: "SetPosition".}
  ## Modifies this ellipse, by redefining its local coordinate so that it
  ## becomes A2e.

proc Area*(this: gp_Elips): Standard_Real  {.importcpp: "Area".}
  ## Computes the area of the Ellipse.

proc Axis*(this: gp_Elips): gp_Ax1  {.importcpp: "Axis".}
  ## Computes the axis normal to the plane of the ellipse.

proc Directrix1*(this: gp_Elips): gp_Ax1  {.importcpp: "Directrix1".}
  ## Computes the first or second directrix of this ellipse. These are the
  ## lines, in the plane of the ellipse, normal to the major axis, at a
  ## distance equal to MajorRadius/e from the center of the ellipse, where
  ## e is the eccentricity of the ellipse. The first directrix (Directrix1)
  ## is on the positive side of the major axis. The second directrix
  ## (Directrix2) is on the negative side. The directrix is returned as an
  ## axis (gp_Ax1 object), the origin of which is situated on the "X Axis"
  ## of the local coordinate system of this ellipse. Exceptions
  ## Standard_ConstructionError if the eccentricity is null (the ellipse
  ## has degenerated into a circle).

proc Directrix2*(this: gp_Elips): gp_Ax1  {.importcpp: "Directrix2".}
  ## This line is obtained by the symmetrical transformation of
  ## "Directrix1" with respect to the "YAxis" of the ellipse. Exceptions
  ## Standard_ConstructionError if the eccentricity is null (the ellipse
  ## has degenerated into a circle).

proc Eccentricity*(this: gp_Elips): Standard_Real  {.importcpp: "Eccentricity".}
  ## Returns the eccentricity of the ellipse between 0.0 and 1.0 If f is
  ## the distance between the center of the ellipse and the Focus1 then the
  ## eccentricity e = f / MajorRadius. Raises ConstructionError if
  ## MajorRadius = 0.0

proc Focal*(this: gp_Elips): Standard_Real  {.importcpp: "Focal".}
  ## Computes the focal distance. It is the distance between the two focus
  ## focus1 and focus2 of the ellipse.

proc Focus1*(this: gp_Elips): gp_Pnt  {.importcpp: "Focus1".}
  ## Returns the first focus of the ellipse. This focus is on the positive
  ## side of the "XAxis" of the ellipse.

proc Focus2*(this: gp_Elips): gp_Pnt  {.importcpp: "Focus2".}
  ## Returns the second focus of the ellipse. This focus is on the negative
  ## side of the "XAxis" of the ellipse.

proc Location*(this: gp_Elips): gp_Pnt  {.importcpp: "Location".}
  ## Returns the center of the ellipse. It is the "Location" point of the
  ## coordinate system of the ellipse.

proc MajorRadius*(this: gp_Elips): Standard_Real  {.importcpp: "MajorRadius".}
  ## Returns the major radius of the ellipse.

proc MinorRadius*(this: gp_Elips): Standard_Real  {.importcpp: "MinorRadius".}
  ## Returns the minor radius of the ellipse.

proc Parameter*(this: gp_Elips): Standard_Real  {.importcpp: "Parameter".}
  ## Returns p = (1 - e * e) * MajorRadius where e is the eccentricity of
  ## the ellipse. Returns 0 if MajorRadius = 0

proc Position*(this: gp_Elips): gp_Ax2  {.importcpp: "Position".}
  ## Returns the coordinate system of the ellipse.

proc XAxis*(this: gp_Elips): gp_Ax1  {.importcpp: "XAxis".}
  ## Returns the "XAxis" of the ellipse whose origin is the center of this
  ## ellipse. It is the major axis of the ellipse.

proc YAxis*(this: gp_Elips): gp_Ax1  {.importcpp: "YAxis".}
  ## Returns the "YAxis" of the ellipse whose unit vector is the "X
  ## Direction" or the "Y Direction" of the local coordinate system of this
  ## ellipse. This is the minor axis of the ellipse.

proc Mirror*(this: var gp_Elips, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Elips, P: gp_Pnt): gp_Elips  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an ellipse with respect to
  ## the point P which is the center of the symmetry.

proc Mirror*(this: var gp_Elips, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Elips, A1: gp_Ax1): gp_Elips  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an ellipse with respect to
  ## an axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Elips, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Elips, A2: gp_Ax2): gp_Elips  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an ellipse with respect to
  ## a plane. The axis placement A2 locates the plane of the symmetry
  ## (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Elips, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Elips, A1: gp_Ax1, Ang: Standard_Real): gp_Elips  {.importcpp: "Rotated".}
  ## Rotates an ellipse. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Elips, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Elips, P: gp_Pnt, S: Standard_Real): gp_Elips  {.importcpp: "Scaled".}
  ## Scales an ellipse. S is the scaling value.

proc Transform*(this: var gp_Elips, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Elips, T: gp_Trsf): gp_Elips  {.importcpp: "Transformed".}
  ## Transforms an ellipse with the transformation T from class Trsf.

proc Translate*(this: var gp_Elips, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Elips, V: gp_Vec): gp_Elips  {.importcpp: "Translated".}
  ## Translates an ellipse in the direction of the vector V. The magnitude
  ## of the translation is the vector's magnitude.

proc Translate*(this: var gp_Elips, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Elips, P1: gp_Pnt, P2: gp_Pnt): gp_Elips  {.importcpp: "Translated".}
  ## Translates an ellipse from the point P1 to the point P2.

{.pop.} # header: "gp_Elips.hxx
