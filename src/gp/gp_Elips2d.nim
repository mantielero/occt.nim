{.push header: "gp_Elips2d.hxx".}


# Constructors and methods
proc constructor_gp_Elips2d*(): gp_Elips2d {.constructor,importcpp: "gp_Elips2d".}
  ## Creates an indefinite ellipse.

proc constructor_gp_Elips2d*(MajorAxis: gp_Ax2d, MajorRadius: cdouble, MinorRadius: cdouble, Sense: bool): gp_Elips2d {.constructor,importcpp: "gp_Elips2d(@)".}
  ## Creates an ellipse with the major axis, the major and the minor
  ## radius. The location of the MajorAxis is the center of the ellipse.
  ## The sense of parametrization is given by Sense. Warnings : It is
  ## possible to create an ellipse with MajorRadius = MinorRadius. Raises
  ## ConstructionError if MajorRadius < MinorRadius or MinorRadius < 0.0

proc constructor_gp_Elips2d*(A: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble): gp_Elips2d {.constructor,importcpp: "gp_Elips2d(@)".}
  ## Creates an ellipse with radii MajorRadius and MinorRadius, positioned
  ## in the plane by coordinate system A where: - the origin of A is the
  ## center of the ellipse, - the "X Direction" of A defines the major axis
  ## of the ellipse, that is, the major radius MajorRadius is measured
  ## along this axis, and - the "Y Direction" of A defines the minor axis
  ## of the ellipse, that is, the minor radius MinorRadius is measured
  ## along this axis, and - the orientation (direct or indirect sense) of A
  ## gives the orientation of the ellipse. Warnings : It is possible to
  ## create an ellipse with MajorRadius = MinorRadius. Raises
  ## ConstructionError if MajorRadius < MinorRadius or MinorRadius < 0.0

proc ` new`*(this: var gp_Elips2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Elips2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Elips2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Elips2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Elips2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Elips2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetLocation*(this: var gp_Elips2d, P: gp_Pnt2d)  {.importcpp: "SetLocation".}
  ## Modifies this ellipse, by redefining its local coordinate system so
  ## that - its origin becomes P.

proc SetMajorRadius*(this: var gp_Elips2d, MajorRadius: cdouble)  {.importcpp: "SetMajorRadius".}
  ## Changes the value of the major radius. Raises ConstructionError if
  ## MajorRadius < MinorRadius.

proc SetMinorRadius*(this: var gp_Elips2d, MinorRadius: cdouble)  {.importcpp: "SetMinorRadius".}
  ## Changes the value of the minor radius. Raises ConstructionError if
  ## MajorRadius < MinorRadius or MinorRadius < 0.0

proc SetAxis*(this: var gp_Elips2d, A: gp_Ax22d)  {.importcpp: "SetAxis".}
  ## Modifies this ellipse, by redefining its local coordinate system so
  ## that it becomes A.

proc SetXAxis*(this: var gp_Elips2d, A: gp_Ax2d)  {.importcpp: "SetXAxis".}
  ## Modifies this ellipse, by redefining its local coordinate system so
  ## that its origin and its "X Direction" become those of the axis A. The
  ## "Y Direction" is then recomputed. The orientation of the local
  ## coordinate system is not modified.

proc SetYAxis*(this: var gp_Elips2d, A: gp_Ax2d)  {.importcpp: "SetYAxis".}
  ## Modifies this ellipse, by redefining its local coordinate system so
  ## that its origin and its "Y Direction" become those of the axis A. The
  ## "X Direction" is then recomputed. The orientation of the local
  ## coordinate system is not modified.

proc Area*(this: gp_Elips2d): cdouble  {.importcpp: "Area".}
  ## Computes the area of the ellipse.

proc Coefficients*(this: gp_Elips2d, A: var cdouble, B: var cdouble, C: var cdouble, D: var cdouble, E: var cdouble, F: var cdouble)  {.importcpp: "Coefficients".}
  ## Returns the coefficients of the implicit equation of the ellipse. A *
  ## (X**2) + B * (Y**2) + 2*C*(X*Y) + 2*D*X + 2*E*Y + F = 0.

proc Directrix1*(this: gp_Elips2d): gp_Ax2d  {.importcpp: "Directrix1".}
  ## This directrix is the line normal to the XAxis of the ellipse in the
  ## local plane (Z = 0) at a distance d = MajorRadius / e from the center
  ## of the ellipse, where e is the eccentricity of the ellipse. This line
  ## is parallel to the "YAxis". The intersection point between directrix1
  ## and the "XAxis" is the location point of the directrix1. This point is
  ## on the positive side of the "XAxis".

proc Directrix2*(this: gp_Elips2d): gp_Ax2d  {.importcpp: "Directrix2".}
  ## This line is obtained by the symmetrical transformation of
  ## "Directrix1" with respect to the minor axis of the ellipse.

proc Eccentricity*(this: gp_Elips2d): cdouble  {.importcpp: "Eccentricity".}
  ## Returns the eccentricity of the ellipse between 0.0 and 1.0 If f is
  ## the distance between the center of the ellipse and the Focus1 then the
  ## eccentricity e = f / MajorRadius. Returns 0 if MajorRadius = 0.

proc Focal*(this: gp_Elips2d): cdouble  {.importcpp: "Focal".}
  ## Returns the distance between the center of the ellipse and focus1 or
  ## focus2.

proc Focus1*(this: gp_Elips2d): gp_Pnt2d  {.importcpp: "Focus1".}
  ## Returns the first focus of the ellipse. This focus is on the positive
  ## side of the major axis of the ellipse.

proc Focus2*(this: gp_Elips2d): gp_Pnt2d  {.importcpp: "Focus2".}
  ## Returns the second focus of the ellipse. This focus is on the negative
  ## side of the major axis of the ellipse.

proc Location*(this: gp_Elips2d): gp_Pnt2d  {.importcpp: "Location".}
  ## Returns the center of the ellipse.

proc MajorRadius*(this: gp_Elips2d): cdouble  {.importcpp: "MajorRadius".}
  ## Returns the major radius of the Ellipse.

proc MinorRadius*(this: gp_Elips2d): cdouble  {.importcpp: "MinorRadius".}
  ## Returns the minor radius of the Ellipse.

proc Parameter*(this: gp_Elips2d): cdouble  {.importcpp: "Parameter".}
  ## Returns p = (1 - e * e) * MajorRadius where e is the eccentricity of
  ## the ellipse. Returns 0 if MajorRadius = 0

proc Axis*(this: gp_Elips2d): gp_Ax22d  {.importcpp: "Axis".}
  ## Returns the major axis of the ellipse.

proc XAxis*(this: gp_Elips2d): gp_Ax2d  {.importcpp: "XAxis".}
  ## Returns the major axis of the ellipse.

proc YAxis*(this: gp_Elips2d): gp_Ax2d  {.importcpp: "YAxis".}
  ## Returns the minor axis of the ellipse. Reverses the direction of the
  ## circle.

proc Reverse*(this: var gp_Elips2d)  {.importcpp: "Reverse".}

proc Reversed*(this: gp_Elips2d): gp_Elips2d  {.importcpp: "Reversed".}

proc IsDirect*(this: gp_Elips2d): bool  {.importcpp: "IsDirect".}
  ## Returns true if the local coordinate system is direct and false in the
  ## other case.

proc Mirror*(this: var gp_Elips2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Elips2d, P: gp_Pnt2d): gp_Elips2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a ellipse with respect to
  ## the point P which is the center of the symmetry

proc Mirror*(this: var gp_Elips2d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Elips2d, A: gp_Ax2d): gp_Elips2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a ellipse with respect to
  ## an axis placement which is the axis of the symmetry.

proc Rotate*(this: var gp_Elips2d, P: gp_Pnt2d, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Elips2d, P: gp_Pnt2d, Ang: cdouble): gp_Elips2d  {.importcpp: "Rotated".}

proc Scale*(this: var gp_Elips2d, P: gp_Pnt2d, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Elips2d, P: gp_Pnt2d, S: cdouble): gp_Elips2d  {.importcpp: "Scaled".}
  ## Scales a ellipse. S is the scaling value.

proc Transform*(this: var gp_Elips2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Elips2d, T: gp_Trsf2d): gp_Elips2d  {.importcpp: "Transformed".}
  ## Transforms an ellipse with the transformation T from class Trsf2d.

proc Translate*(this: var gp_Elips2d, V: gp_Vec2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Elips2d, V: gp_Vec2d): gp_Elips2d  {.importcpp: "Translated".}
  ## Translates a ellipse in the direction of the vector V. The magnitude
  ## of the translation is the vector's magnitude.

proc Translate*(this: var gp_Elips2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Elips2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Elips2d  {.importcpp: "Translated".}
  ## Translates a ellipse from the point P1 to the point P2.

{.pop.} # header: "gp_Elips2d.hxx
