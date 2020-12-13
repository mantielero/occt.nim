{.push header: "gp_Hypr.hxx".}


# Constructors and methods
proc constructor_gp_Hypr*(): gp_Hypr {.constructor,importcpp: "gp_Hypr".}
  ## Creates of an indefinite hyperbola.

proc constructor_gp_Hypr*(A2: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble): gp_Hypr {.constructor,importcpp: "gp_Hypr(@)".}
  ## Creates a hyperbola with radii MajorRadius and MinorRadius, positioned
  ## in the space by the coordinate system A2 such that: - the origin of A2
  ## is the center of the hyperbola, - the "X Direction" of A2 defines the
  ## major axis of the hyperbola, that is, the major radius MajorRadius is
  ## measured along this axis, and - the "Y Direction" of A2 defines the
  ## minor axis of the hyperbola, that is, the minor radius MinorRadius is
  ## measured along this axis. Note: This class does not prevent the
  ## creation of a hyperbola where: - MajorAxis is equal to MinorAxis, or -
  ## MajorAxis is less than MinorAxis. Exceptions
  ## Standard_ConstructionError if MajorAxis or MinorAxis is negative.
  ## Raises ConstructionError if MajorRadius < 0.0 or MinorRadius < 0.0
  ## Raised if MajorRadius < 0.0 or MinorRadius < 0.0

proc ` new`*(this: var gp_Hypr, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Hypr, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Hypr, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Hypr, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Hypr, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Hypr, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAxis*(this: var gp_Hypr, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Modifies this hyperbola, by redefining its local coordinate system so
  ## that: - its origin and "main Direction" become those of the axis A1
  ## (the "X Direction" and "Y Direction" are then recomputed in the same
  ## way as for any gp_Ax2). Raises ConstructionError if the direction of
  ## A1 is parallel to the direction of the "XAxis" of the hyperbola.

proc SetLocation*(this: var gp_Hypr, P: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Modifies this hyperbola, by redefining its local coordinate system so
  ## that its origin becomes P.

proc SetMajorRadius*(this: var gp_Hypr, MajorRadius: cdouble)  {.importcpp: "SetMajorRadius".}
  ## Modifies the major radius of this hyperbola. Exceptions
  ## Standard_ConstructionError if MajorRadius is negative.

proc SetMinorRadius*(this: var gp_Hypr, MinorRadius: cdouble)  {.importcpp: "SetMinorRadius".}
  ## Modifies the minor radius of this hyperbola. Exceptions
  ## Standard_ConstructionError if MinorRadius is negative.

proc SetPosition*(this: var gp_Hypr, A2: gp_Ax2)  {.importcpp: "SetPosition".}
  ## Modifies this hyperbola, by redefining its local coordinate system so
  ## that it becomes A2.

proc Asymptote1*(this: gp_Hypr): gp_Ax1  {.importcpp: "Asymptote1".}
  ## In the local coordinate system of the hyperbola the equation of the
  ## hyperbola is (X*X)/(A*A) - (Y*Y)/(B*B) = 1.0 and the equation of the
  ## first asymptote is Y = (B/A)*X where A is the major radius and B is
  ## the minor radius. Raises ConstructionError if MajorRadius = 0.0

proc Asymptote2*(this: gp_Hypr): gp_Ax1  {.importcpp: "Asymptote2".}
  ## In the local coordinate system of the hyperbola the equation of the
  ## hyperbola is (X*X)/(A*A) - (Y*Y)/(B*B) = 1.0 and the equation of the
  ## first asymptote is Y = -(B/A)*X. where A is the major radius and B is
  ## the minor radius. Raises ConstructionError if MajorRadius = 0.0

proc Axis*(this: gp_Hypr): gp_Ax1  {.importcpp: "Axis".}
  ## Returns the axis passing through the center, and normal to the plane
  ## of this hyperbola.

proc ConjugateBranch1*(this: gp_Hypr): gp_Hypr  {.importcpp: "ConjugateBranch1".}
  ## Computes the branch of hyperbola which is on the positive side of the
  ## "YAxis" of <me>.

proc ConjugateBranch2*(this: gp_Hypr): gp_Hypr  {.importcpp: "ConjugateBranch2".}
  ## Computes the branch of hyperbola which is on the negative side of the
  ## "YAxis" of <me>.

proc Directrix1*(this: gp_Hypr): gp_Ax1  {.importcpp: "Directrix1".}
  ## This directrix is the line normal to the XAxis of the hyperbola in the
  ## local plane (Z = 0) at a distance d = MajorRadius / e from the center
  ## of the hyperbola, where e is the eccentricity of the hyperbola. This
  ## line is parallel to the "YAxis". The intersection point between the
  ## directrix1 and the "XAxis" is the "Location" point of the directrix1.
  ## This point is on the positive side of the "XAxis".

proc Directrix2*(this: gp_Hypr): gp_Ax1  {.importcpp: "Directrix2".}
  ## This line is obtained by the symmetrical transformation of
  ## "Directrix1" with respect to the "YAxis" of the hyperbola.

proc Eccentricity*(this: gp_Hypr): cdouble  {.importcpp: "Eccentricity".}
  ## Returns the excentricity of the hyperbola (e > 1). If f is the
  ## distance between the location of the hyperbola and the Focus1 then the
  ## eccentricity e = f / MajorRadius. Raises DomainError if MajorRadius =
  ## 0.0

proc Focal*(this: gp_Hypr): cdouble  {.importcpp: "Focal".}
  ## Computes the focal distance. It is the distance between the the two
  ## focus of the hyperbola.

proc Focus1*(this: gp_Hypr): gp_Pnt  {.importcpp: "Focus1".}
  ## Returns the first focus of the hyperbola. This focus is on the
  ## positive side of the "XAxis" of the hyperbola.

proc Focus2*(this: gp_Hypr): gp_Pnt  {.importcpp: "Focus2".}
  ## Returns the second focus of the hyperbola. This focus is on the
  ## negative side of the "XAxis" of the hyperbola.

proc Location*(this: gp_Hypr): gp_Pnt  {.importcpp: "Location".}
  ## Returns the location point of the hyperbola. It is the intersection
  ## point between the "XAxis" and the "YAxis".

proc MajorRadius*(this: gp_Hypr): cdouble  {.importcpp: "MajorRadius".}
  ## Returns the major radius of the hyperbola. It is the radius on the
  ## "XAxis" of the hyperbola.

proc MinorRadius*(this: gp_Hypr): cdouble  {.importcpp: "MinorRadius".}
  ## Returns the minor radius of the hyperbola. It is the radius on the
  ## "YAxis" of the hyperbola.

proc OtherBranch*(this: gp_Hypr): gp_Hypr  {.importcpp: "OtherBranch".}
  ## Returns the branch of hyperbola obtained by doing the symmetrical
  ## transformation of <me> with respect to the "YAxis" of <me>.

proc Parameter*(this: gp_Hypr): cdouble  {.importcpp: "Parameter".}
  ## Returns p = (e * e - 1) * MajorRadius where e is the eccentricity of
  ## the hyperbola. Raises DomainError if MajorRadius = 0.0

proc Position*(this: gp_Hypr): gp_Ax2  {.importcpp: "Position".}
  ## Returns the coordinate system of the hyperbola.

proc XAxis*(this: gp_Hypr): gp_Ax1  {.importcpp: "XAxis".}
  ## Computes an axis, whose - the origin is the center of this hyperbola,
  ## and - the unit vector is the "X Direction" of the local coordinate
  ## system of this hyperbola. These axes are, the major axis (the "X
  ## Axis") and of this hyperboReturns the "XAxis" of the hyperbola.

proc YAxis*(this: gp_Hypr): gp_Ax1  {.importcpp: "YAxis".}
  ## Computes an axis, whose - the origin is the center of this hyperbola,
  ## and - the unit vector is the "Y Direction" of the local coordinate
  ## system of this hyperbola. These axes are the minor axis (the "Y Axis")
  ## of this hyperbola

proc Mirror*(this: var gp_Hypr, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Hypr, P: gp_Pnt): gp_Hypr  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an hyperbola with respect
  ## to the point P which is the center of the symmetry.

proc Mirror*(this: var gp_Hypr, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Hypr, A1: gp_Ax1): gp_Hypr  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an hyperbola with respect
  ## to an axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Hypr, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Hypr, A2: gp_Ax2): gp_Hypr  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of an hyperbola with respect
  ## to a plane. The axis placement A2 locates the plane of the symmetry
  ## (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Hypr, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Hypr, A1: gp_Ax1, Ang: cdouble): gp_Hypr  {.importcpp: "Rotated".}
  ## Rotates an hyperbola. A1 is the axis of the rotation. Ang is the
  ## angular value of the rotation in radians.

proc Scale*(this: var gp_Hypr, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Hypr, P: gp_Pnt, S: cdouble): gp_Hypr  {.importcpp: "Scaled".}
  ## Scales an hyperbola. S is the scaling value.

proc Transform*(this: var gp_Hypr, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Hypr, T: gp_Trsf): gp_Hypr  {.importcpp: "Transformed".}
  ## Transforms an hyperbola with the transformation T from class Trsf.

proc Translate*(this: var gp_Hypr, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Hypr, V: gp_Vec): gp_Hypr  {.importcpp: "Translated".}
  ## Translates an hyperbola in the direction of the vector V. The
  ## magnitude of the translation is the vector's magnitude.

proc Translate*(this: var gp_Hypr, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Hypr, P1: gp_Pnt, P2: gp_Pnt): gp_Hypr  {.importcpp: "Translated".}
  ## Translates an hyperbola from the point P1 to the point P2.

{.pop.} # header: "gp_Hypr.hxx
