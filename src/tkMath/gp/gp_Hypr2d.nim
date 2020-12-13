{.push header: "gp_Hypr2d.hxx".}


# Constructors and methods
proc constructor_gp_Hypr2d*(): gp_Hypr2d {.constructor,importcpp: "gp_Hypr2d".}
  ## Creates of an indefinite hyperbola.

proc constructor_gp_Hypr2d*(MajorAxis: gp_Ax2d, MajorRadius: cdouble, MinorRadius: cdouble, Sense: bool): gp_Hypr2d {.constructor,importcpp: "gp_Hypr2d(@)".}
  ## Creates a hyperbola with radii MajorRadius and MinorRadius, centered
  ## on the origin of MajorAxis and where the unit vector of MajorAxis is
  ## the "X Direction" of the local coordinate system of the hyperbola.
  ## This coordinate system is direct if Sense is true (the default value),
  ## and indirect if Sense is false. Warnings : It is yet possible to
  ## create an Hyperbola with MajorRadius <= MinorRadius. Raises
  ## ConstructionError if MajorRadius < 0.0 or MinorRadius < 0.0

proc constructor_gp_Hypr2d*(A: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble): gp_Hypr2d {.constructor,importcpp: "gp_Hypr2d(@)".}
  ## a hyperbola with radii MajorRadius and MinorRadius, positioned in the
  ## plane by coordinate system A where: - the origin of A is the center of
  ## the hyperbola, - the "X Direction" of A defines the major axis of the
  ## hyperbola, that is, the major radius MajorRadius is measured along
  ## this axis, and - the "Y Direction" of A defines the minor axis of the
  ## hyperbola, that is, the minor radius MinorRadius is measured along
  ## this axis, and - the orientation (direct or indirect sense) of A gives
  ## the implicit orientation of the hyperbola. Warnings : It is yet
  ## possible to create an Hyperbola with MajorRadius <= MinorRadius.
  ## Raises ConstructionError if MajorRadius < 0.0 or MinorRadius < 0.0

proc ` new`*(this: var gp_Hypr2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Hypr2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Hypr2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Hypr2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Hypr2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Hypr2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetLocation*(this: var gp_Hypr2d, P: gp_Pnt2d)  {.importcpp: "SetLocation".}
  ## Modifies this hyperbola, by redefining its local coordinate system so
  ## that its origin becomes P.

proc SetMajorRadius*(this: var gp_Hypr2d, MajorRadius: cdouble)  {.importcpp: "SetMajorRadius".}
  ## Modifies the major or minor radius of this hyperbola. Exceptions
  ## Standard_ConstructionError if MajorRadius or MinorRadius is negative.

proc SetMinorRadius*(this: var gp_Hypr2d, MinorRadius: cdouble)  {.importcpp: "SetMinorRadius".}
  ## Modifies the major or minor radius of this hyperbola. Exceptions
  ## Standard_ConstructionError if MajorRadius or MinorRadius is negative.

proc SetAxis*(this: var gp_Hypr2d, A: gp_Ax22d)  {.importcpp: "SetAxis".}
  ## Modifies this hyperbola, by redefining its local coordinate system so
  ## that it becomes A.

proc SetXAxis*(this: var gp_Hypr2d, A: gp_Ax2d)  {.importcpp: "SetXAxis".}
  ## Changes the major axis of the hyperbola. The minor axis is recomputed
  ## and the location of the hyperbola too.

proc SetYAxis*(this: var gp_Hypr2d, A: gp_Ax2d)  {.importcpp: "SetYAxis".}
  ## Changes the minor axis of the hyperbola.The minor axis is recomputed
  ## and the location of the hyperbola too.

proc Asymptote1*(this: gp_Hypr2d): gp_Ax2d  {.importcpp: "Asymptote1".}
  ## In the local coordinate system of the hyperbola the equation of the
  ## hyperbola is (X*X)/(A*A) - (Y*Y)/(B*B) = 1.0 and the equation of the
  ## first asymptote is Y = (B/A)*X where A is the major radius of the
  ## hyperbola and B the minor radius of the hyperbola. Raises
  ## ConstructionError if MajorRadius = 0.0

proc Asymptote2*(this: gp_Hypr2d): gp_Ax2d  {.importcpp: "Asymptote2".}
  ## In the local coordinate system of the hyperbola the equation of the
  ## hyperbola is (X*X)/(A*A) - (Y*Y)/(B*B) = 1.0 and the equation of the
  ## first asymptote is Y = -(B/A)*X where A is the major radius of the
  ## hyperbola and B the minor radius of the hyperbola. Raises
  ## ConstructionError if MajorRadius = 0.0

proc Coefficients*(this: gp_Hypr2d, A: var cdouble, B: var cdouble, C: var cdouble, D: var cdouble, E: var cdouble, F: var cdouble)  {.importcpp: "Coefficients".}
  ## Computes the coefficients of the implicit equation of the hyperbola :
  ## A * (X**2) + B * (Y**2) + 2*C*(X*Y) + 2*D*X + 2*E*Y + F = 0.

proc ConjugateBranch1*(this: gp_Hypr2d): gp_Hypr2d  {.importcpp: "ConjugateBranch1".}
  ## Computes the branch of hyperbola which is on the positive side of the
  ## "YAxis" of <me>.

proc ConjugateBranch2*(this: gp_Hypr2d): gp_Hypr2d  {.importcpp: "ConjugateBranch2".}
  ## Computes the branch of hyperbola which is on the negative side of the
  ## "YAxis" of <me>.

proc Directrix1*(this: gp_Hypr2d): gp_Ax2d  {.importcpp: "Directrix1".}
  ## Computes the directrix which is the line normal to the XAxis of the
  ## hyperbola in the local plane (Z = 0) at a distance d = MajorRadius / e
  ## from the center of the hyperbola, where e is the eccentricity of the
  ## hyperbola. This line is parallel to the "YAxis". The intersection
  ## point between the "Directrix1" and the "XAxis" is the "Location" point
  ## of the "Directrix1". This point is on the positive side of the
  ## "XAxis".

proc Directrix2*(this: gp_Hypr2d): gp_Ax2d  {.importcpp: "Directrix2".}
  ## This line is obtained by the symmetrical transformation of
  ## "Directrix1" with respect to the "YAxis" of the hyperbola.

proc Eccentricity*(this: gp_Hypr2d): cdouble  {.importcpp: "Eccentricity".}
  ## Returns the excentricity of the hyperbola (e > 1). If f is the
  ## distance between the location of the hyperbola and the Focus1 then the
  ## eccentricity e = f / MajorRadius. Raises DomainError if MajorRadius =
  ## 0.0.

proc Focal*(this: gp_Hypr2d): cdouble  {.importcpp: "Focal".}
  ## Computes the focal distance. It is the distance between the "Location"
  ## of the hyperbola and "Focus1" or "Focus2".

proc Focus1*(this: gp_Hypr2d): gp_Pnt2d  {.importcpp: "Focus1".}
  ## Returns the first focus of the hyperbola. This focus is on the
  ## positive side of the "XAxis" of the hyperbola.

proc Focus2*(this: gp_Hypr2d): gp_Pnt2d  {.importcpp: "Focus2".}
  ## Returns the second focus of the hyperbola. This focus is on the
  ## negative side of the "XAxis" of the hyperbola.

proc Location*(this: gp_Hypr2d): gp_Pnt2d  {.importcpp: "Location".}
  ## Returns the location point of the hyperbola. It is the intersection
  ## point between the "XAxis" and the "YAxis".

proc MajorRadius*(this: gp_Hypr2d): cdouble  {.importcpp: "MajorRadius".}
  ## Returns the major radius of the hyperbola (it is the radius
  ## corresponding to the "XAxis" of the hyperbola).

proc MinorRadius*(this: gp_Hypr2d): cdouble  {.importcpp: "MinorRadius".}
  ## Returns the minor radius of the hyperbola (it is the radius
  ## corresponding to the "YAxis" of the hyperbola).

proc OtherBranch*(this: gp_Hypr2d): gp_Hypr2d  {.importcpp: "OtherBranch".}
  ## Returns the branch of hyperbola obtained by doing the symmetrical
  ## transformation of <me> with respect to the "YAxis" of <me>.

proc Parameter*(this: gp_Hypr2d): cdouble  {.importcpp: "Parameter".}
  ## Returns p = (e * e - 1) * MajorRadius where e is the eccentricity of
  ## the hyperbola. Raises DomainError if MajorRadius = 0.0

proc Axis*(this: gp_Hypr2d): gp_Ax22d  {.importcpp: "Axis".}
  ## Returns the axisplacement of the hyperbola.

proc XAxis*(this: gp_Hypr2d): gp_Ax2d  {.importcpp: "XAxis".}
  ## Computes an axis whose - the origin is the center of this hyperbola,
  ## and - the unit vector is the "X Direction" or "Y Direction"
  ## respectively of the local coordinate system of this hyperbola Returns
  ## the major axis of the hyperbola.

proc YAxis*(this: gp_Hypr2d): gp_Ax2d  {.importcpp: "YAxis".}
  ## Computes an axis whose - the origin is the center of this hyperbola,
  ## and - the unit vector is the "X Direction" or "Y Direction"
  ## respectively of the local coordinate system of this hyperbola Returns
  ## the minor axis of the hyperbola.

proc Reverse*(this: var gp_Hypr2d)  {.importcpp: "Reverse".}

proc Reversed*(this: gp_Hypr2d): gp_Hypr2d  {.importcpp: "Reversed".}
  ## Reverses the orientation of the local coordinate system of this
  ## hyperbola (the "Y Axis" is reversed). Therefore, the implicit
  ## orientation of this hyperbola is reversed. Note: - Reverse assigns the
  ## result to this hyperbola, while - Reversed creates a new one.

proc IsDirect*(this: gp_Hypr2d): bool  {.importcpp: "IsDirect".}
  ## Returns true if the local coordinate system is direct and false in the
  ## other case.

proc Mirror*(this: var gp_Hypr2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Hypr2d, P: gp_Pnt2d): gp_Hypr2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an hyperbola with respect
  ## to the point P which is the center of the symmetry.

proc Mirror*(this: var gp_Hypr2d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Hypr2d, A: gp_Ax2d): gp_Hypr2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an hyperbola with respect
  ## to an axis placement which is the axis of the symmetry.

proc Rotate*(this: var gp_Hypr2d, P: gp_Pnt2d, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Hypr2d, P: gp_Pnt2d, Ang: cdouble): gp_Hypr2d  {.importcpp: "Rotated".}
  ## Rotates an hyperbola. P is the center of the rotation. Ang is the
  ## angular value of the rotation in radians.

proc Scale*(this: var gp_Hypr2d, P: gp_Pnt2d, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Hypr2d, P: gp_Pnt2d, S: cdouble): gp_Hypr2d  {.importcpp: "Scaled".}
  ## Scales an hyperbola. <S> is the scaling value. If <S> is positive only
  ## the location point is modified. But if <S> is negative the "XAxis" is
  ## reversed and the "YAxis" too.

proc Transform*(this: var gp_Hypr2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Hypr2d, T: gp_Trsf2d): gp_Hypr2d  {.importcpp: "Transformed".}
  ## Transforms an hyperbola with the transformation T from class Trsf2d.

proc Translate*(this: var gp_Hypr2d, V: gp_Vec2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Hypr2d, V: gp_Vec2d): gp_Hypr2d  {.importcpp: "Translated".}
  ## Translates an hyperbola in the direction of the vector V. The
  ## magnitude of the translation is the vector's magnitude.

proc Translate*(this: var gp_Hypr2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Hypr2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Hypr2d  {.importcpp: "Translated".}
  ## Translates an hyperbola from the point P1 to the point P2.

{.pop.} # header: "gp_Hypr2d.hxx
