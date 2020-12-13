{.push header: "gp_Parab.hxx".}


# Constructors and methods
proc constructor_gp_Parab*(): gp_Parab {.constructor,importcpp: "gp_Parab".}
  ## Creates an indefinite Parabola.

proc constructor_gp_Parab*(A2: gp_Ax2, Focal: cdouble): gp_Parab {.constructor,importcpp: "gp_Parab(@)".}
  ## Creates a parabola with its local coordinate system "A2" and it's
  ## focal length "Focal". The XDirection of A2 defines the axis of
  ## symmetry of the parabola. The YDirection of A2 is parallel to the
  ## directrix of the parabola. The Location point of A2 is the vertex of
  ## the parabola Raises ConstructionError if Focal < 0.0 Raised if Focal <
  ## 0.0

proc constructor_gp_Parab*(D: gp_Ax1, F: gp_Pnt): gp_Parab {.constructor,importcpp: "gp_Parab(@)".}
  ## D is the directrix of the parabola and F the focus point. The symmetry
  ## axis (XAxis) of the parabola is normal to the directrix and pass
  ## through the focus point F, but its location point is the vertex of the
  ## parabola. The YAxis of the parabola is parallel to D and its location
  ## point is the vertex of the parabola. The normal to the plane of the
  ## parabola is the cross product between the XAxis and the YAxis.

proc ` new`*(this: var gp_Parab, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Parab, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Parab, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Parab, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Parab, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Parab, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAxis*(this: var gp_Parab, A1: gp_Ax1)  {.importcpp: "SetAxis".}
  ## Modifies this parabola by redefining its local coordinate system so
  ## that - its origin and "main Direction" become those of the axis A1
  ## (the "X Direction" and "Y Direction" are then recomputed in the same
  ## way as for any gp_Ax2) Raises ConstructionError if the direction of A1
  ## is parallel to the previous XAxis of the parabola.

proc SetFocal*(this: var gp_Parab, Focal: cdouble)  {.importcpp: "SetFocal".}
  ## Changes the focal distance of the parabola. Raises ConstructionError
  ## if Focal < 0.0

proc SetLocation*(this: var gp_Parab, P: gp_Pnt)  {.importcpp: "SetLocation".}
  ## Changes the location of the parabola. It is the vertex of the
  ## parabola.

proc SetPosition*(this: var gp_Parab, A2: gp_Ax2)  {.importcpp: "SetPosition".}
  ## Changes the local coordinate system of the parabola.

proc Axis*(this: gp_Parab): gp_Ax1  {.importcpp: "Axis".}
  ## Returns the main axis of the parabola. It is the axis normal to the
  ## plane of the parabola passing through the vertex of the parabola.

proc Directrix*(this: gp_Parab): gp_Ax1  {.importcpp: "Directrix".}
  ## Computes the directrix of this parabola. The directrix is: - a line
  ## parallel to the "Y Direction" of the local coordinate system of this
  ## parabola, and - located on the negative side of the axis of symmetry,
  ## at a distance from the apex which is equal to the focal length of this
  ## parabola. The directrix is returned as an axis (a gp_Ax1 object), the
  ## origin of which is situated on the "X Axis" of this parabola.

proc Focal*(this: gp_Parab): cdouble  {.importcpp: "Focal".}
  ## Returns the distance between the vertex and the focus of the parabola.

proc Focus*(this: gp_Parab): gp_Pnt  {.importcpp: "Focus".}
  ## - Computes the focus of the parabola.

proc Location*(this: gp_Parab): gp_Pnt  {.importcpp: "Location".}
  ## Returns the vertex of the parabola. It is the "Location" point of the
  ## coordinate system of the parabola.

proc Parameter*(this: gp_Parab): cdouble  {.importcpp: "Parameter".}
  ## Computes the parameter of the parabola. It is the distance between the
  ## focus and the directrix of the parabola. This distance is twice the
  ## focal length.

proc Position*(this: gp_Parab): gp_Ax2  {.importcpp: "Position".}
  ## Returns the local coordinate system of the parabola.

proc XAxis*(this: gp_Parab): gp_Ax1  {.importcpp: "XAxis".}
  ## Returns the symmetry axis of the parabola. The location point of the
  ## axis is the vertex of the parabola.

proc YAxis*(this: gp_Parab): gp_Ax1  {.importcpp: "YAxis".}
  ## It is an axis parallel to the directrix of the parabola. The location
  ## point of this axis is the vertex of the parabola.

proc Mirror*(this: var gp_Parab, P: gp_Pnt)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Parab, P: gp_Pnt): gp_Parab  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a parabola with respect to
  ## the point P which is the center of the symmetry.

proc Mirror*(this: var gp_Parab, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Parab, A1: gp_Ax1): gp_Parab  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a parabola with respect to
  ## an axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Parab, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Parab, A2: gp_Ax2): gp_Parab  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a parabola with respect to
  ## a plane. The axis placement A2 locates the plane of the symmetry
  ## (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Parab, A1: gp_Ax1, Ang: cdouble)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Parab, A1: gp_Ax1, Ang: cdouble): gp_Parab  {.importcpp: "Rotated".}
  ## Rotates a parabola. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Parab, P: gp_Pnt, S: cdouble)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Parab, P: gp_Pnt, S: cdouble): gp_Parab  {.importcpp: "Scaled".}
  ## Scales a parabola. S is the scaling value. If S is negative the
  ## direction of the symmetry axis XAxis is reversed and the direction of
  ## the YAxis too.

proc Transform*(this: var gp_Parab, T: gp_Trsf)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Parab, T: gp_Trsf): gp_Parab  {.importcpp: "Transformed".}
  ## Transforms a parabola with the transformation T from class Trsf.

proc Translate*(this: var gp_Parab, V: gp_Vec)  {.importcpp: "Translate".}

proc Translated*(this: gp_Parab, V: gp_Vec): gp_Parab  {.importcpp: "Translated".}
  ## Translates a parabola in the direction of the vector V. The magnitude
  ## of the translation is the vector's magnitude.

proc Translate*(this: var gp_Parab, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}

proc Translated*(this: gp_Parab, P1: gp_Pnt, P2: gp_Pnt): gp_Parab  {.importcpp: "Translated".}
  ## Translates a parabola from the point P1 to the point P2.

{.pop.} # header: "gp_Parab.hxx
