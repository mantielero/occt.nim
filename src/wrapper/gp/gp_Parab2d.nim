{.push header: "gp_Parab2d.hxx".}


# Constructors and methods
proc constructor_gp_Parab2d*(): gp_Parab2d {.constructor,importcpp: "gp_Parab2d".}
  ## Creates an indefinite parabola.

proc constructor_gp_Parab2d*(theMirrorAxis: gp_Ax2d, theFocalLength: Standard_Real, theSense: Standard_Boolean): gp_Parab2d {.constructor,importcpp: "gp_Parab2d(@)".}
  ## Creates a parabola with its vertex point, its axis of symmetry
  ## ("XAxis") and its focal length. The sense of parametrization is given
  ## by theSense. If theSense == TRUE (by default) then right-handed
  ## coordinate system is used, otherwise - left-handed. Warnings : It is
  ## possible to have FocalLength = 0. In this case, the parabola looks
  ## like a line, which is parallel to the symmetry-axis. Raises
  ## ConstructionError if FocalLength < 0.0

proc constructor_gp_Parab2d*(theAxes: gp_Ax22d, theFocalLength: Standard_Real): gp_Parab2d {.constructor,importcpp: "gp_Parab2d(@)".}
  ## Creates a parabola with its vertex point, its axis of symmetry
  ## ("XAxis"), correspond Y-axis and its focal length. Warnings : It is
  ## possible to have FocalLength = 0. In this case, the parabola looks
  ## like a line, which is parallel to the symmetry-axis. Raises
  ## ConstructionError if Focal < 0.0

proc constructor_gp_Parab2d*(theDirectrix: gp_Ax2d, theFocus: gp_Pnt2d, theSense: Standard_Boolean): gp_Parab2d {.constructor,importcpp: "gp_Parab2d(@)".}
  ## Creates a parabola with the directrix and the focus point. Y-axis of
  ## the parabola (in User Coordinate System - UCS) is the direction of
  ## theDirectrix. X-axis always directs from theDirectrix to theFocus
  ## point and always comes through theFocus. Apex of the parabola is a
  ## middle point between the theFocus and the intersection point of
  ## theDirectrix and the X-axis. Warnings : It is possible to have
  ## FocalLength = 0 (when theFocus lies in theDirectrix). In this case,
  ## X-direction of the parabola is defined by theSense parameter. If
  ## theSense == TRUE (by default) then right-handed coordinate system is
  ## used, otherwise - left-handed. Result parabola will look like a line,
  ## which is perpendicular to the directrix.

proc ` new`*(this: var gp_Parab2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Parab2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Parab2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Parab2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Parab2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Parab2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetFocal*(this: var gp_Parab2d, Focal: Standard_Real)  {.importcpp: "SetFocal".}
  ## Changes the focal distance of the parabola Warnings : It is possible
  ## to have Focal = 0. Raises ConstructionError if Focal < 0.0

proc SetLocation*(this: var gp_Parab2d, P: gp_Pnt2d)  {.importcpp: "SetLocation".}
  ## Changes the "Location" point of the parabola. It is the vertex of the
  ## parabola.

proc SetMirrorAxis*(this: var gp_Parab2d, A: gp_Ax2d)  {.importcpp: "SetMirrorAxis".}
  ## Modifies this parabola, by redefining its local coordinate system so
  ## that its origin and "X Direction" become those of the axis MA. The "Y
  ## Direction" of the local coordinate system is then recomputed. The
  ## orientation of the local coordinate system is not modified.

proc SetAxis*(this: var gp_Parab2d, A: gp_Ax22d)  {.importcpp: "SetAxis".}
  ## Changes the local coordinate system of the parabola. The "Location"
  ## point of A becomes the vertex of the parabola.

proc Coefficients*(this: gp_Parab2d, A: var Standard_Real, B: var Standard_Real, C: var Standard_Real, D: var Standard_Real, E: var Standard_Real, F: var Standard_Real)  {.importcpp: "Coefficients".}
  ## Computes the coefficients of the implicit equation of the parabola (in
  ## WCS - World Coordinate System). A * (X**2) + B * (Y**2) + 2*C*(X*Y) +
  ## 2*D*X + 2*E*Y + F = 0.

proc Directrix*(this: gp_Parab2d): gp_Ax2d  {.importcpp: "Directrix".}
  ## Computes the directrix of the parabola. The directrix is: - a line
  ## parallel to the "Y Direction" of the local coordinate system of this
  ## parabola, and - located on the negative side of the axis of symmetry,
  ## at a distance from the apex which is equal to the focal length of this
  ## parabola. The directrix is returned as an axis (a gp_Ax2d object), the
  ## origin of which is situated on the "X Axis" of this parabola.

proc Focal*(this: gp_Parab2d): Standard_Real  {.importcpp: "Focal".}
  ## Returns the distance between the vertex and the focus of the parabola.

proc Focus*(this: gp_Parab2d): gp_Pnt2d  {.importcpp: "Focus".}
  ## Returns the focus of the parabola.

proc Location*(this: gp_Parab2d): gp_Pnt2d  {.importcpp: "Location".}
  ## Returns the vertex of the parabola.

proc MirrorAxis*(this: gp_Parab2d): gp_Ax2d  {.importcpp: "MirrorAxis".}
  ## Returns the symmetry axis of the parabola. The "Location" point of
  ## this axis is the vertex of the parabola.

proc Axis*(this: gp_Parab2d): gp_Ax22d  {.importcpp: "Axis".}
  ## Returns the local coordinate system of the parabola. The "Location"
  ## point of this axis is the vertex of the parabola.

proc Parameter*(this: gp_Parab2d): Standard_Real  {.importcpp: "Parameter".}
  ## Returns the distance between the focus and the directrix of the
  ## parabola.

proc Reverse*(this: var gp_Parab2d)  {.importcpp: "Reverse".}

proc Reversed*(this: gp_Parab2d): gp_Parab2d  {.importcpp: "Reversed".}
  ## Reverses the orientation of the local coordinate system of this
  ## parabola (the "Y Direction" is reversed). Therefore, the implicit
  ## orientation of this parabola is reversed. Note: - Reverse assigns the
  ## result to this parabola, while - Reversed creates a new one.

proc IsDirect*(this: gp_Parab2d): Standard_Boolean  {.importcpp: "IsDirect".}
  ## Returns true if the local coordinate system is direct and false in the
  ## other case.

proc Mirror*(this: var gp_Parab2d, P: gp_Pnt2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Parab2d, P: gp_Pnt2d): gp_Parab2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a parabola with respect to
  ## the point P which is the center of the symmetry

proc Mirror*(this: var gp_Parab2d, A: gp_Ax2d)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Parab2d, A: gp_Ax2d): gp_Parab2d  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a parabola with respect to
  ## an axis placement which is the axis of the symmetry.

proc Rotate*(this: var gp_Parab2d, P: gp_Pnt2d, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Parab2d, P: gp_Pnt2d, Ang: Standard_Real): gp_Parab2d  {.importcpp: "Rotated".}
  ## Rotates a parabola. P is the center of the rotation. Ang is the
  ## angular value of the rotation in radians.

proc Scale*(this: var gp_Parab2d, P: gp_Pnt2d, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Parab2d, P: gp_Pnt2d, S: Standard_Real): gp_Parab2d  {.importcpp: "Scaled".}
  ## Scales a parabola. S is the scaling value. If S is negative the
  ## direction of the symmetry axis "XAxis" is reversed and the direction
  ## of the "YAxis" too.

proc Transform*(this: var gp_Parab2d, T: gp_Trsf2d)  {.importcpp: "Transform".}

proc Transformed*(this: gp_Parab2d, T: gp_Trsf2d): gp_Parab2d  {.importcpp: "Transformed".}
  ## Transforms an parabola with the transformation T from class Trsf2d.

proc Translate*(this: var gp_Parab2d, V: gp_Vec2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Parab2d, V: gp_Vec2d): gp_Parab2d  {.importcpp: "Translated".}
  ## Translates a parabola in the direction of the vector V. The magnitude
  ## of the translation is the vector's magnitude.

proc Translate*(this: var gp_Parab2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "Translate".}

proc Translated*(this: gp_Parab2d, P1: gp_Pnt2d, P2: gp_Pnt2d): gp_Parab2d  {.importcpp: "Translated".}
  ## Translates a parabola from the point P1 to the point P2.

{.pop.} # header: "gp_Parab2d.hxx
