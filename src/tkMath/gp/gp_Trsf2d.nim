{.push header: "gp_Trsf2d.hxx".}


# Constructors and methods
proc constructor_gp_Trsf2d*(): gp_Trsf2d {.constructor,importcpp: "gp_Trsf2d".}
  ## Returns identity transformation.

proc constructor_gp_Trsf2d*(T: gp_Trsf): gp_Trsf2d {.constructor,importcpp: "gp_Trsf2d(@)".}
  ## Creates a 2d transformation in the XY plane from a 3d transformation .

#[
proc ` new`*(this: var gp_Trsf2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Trsf2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Trsf2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Trsf2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Trsf2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Trsf2d, pointer, pointer)  {.importcpp: "` delete`".}
]#
proc SetMirror*(this: var gp_Trsf2d, P: gp_Pnt2d)  {.importcpp: "SetMirror".}
  ## Changes the transformation into a symmetrical transformation. P is the
  ## center of the symmetry.

proc SetMirror*(this: var gp_Trsf2d, A: gp_Ax2d)  {.importcpp: "SetMirror".}
  ## Changes the transformation into a symmetrical transformation. A is the
  ## center of the axial symmetry.

proc SetRotation*(this: var gp_Trsf2d, P: gp_Pnt2d, Ang: cdouble)  {.importcpp: "SetRotation".}
  ## Changes the transformation into a rotation. P is the rotation's center
  ## and Ang is the angular value of the rotation in radian.

proc SetScale*(this: var gp_Trsf2d, P: gp_Pnt2d, S: cdouble)  {.importcpp: "SetScale".}
  ## Changes the transformation into a scale. P is the center of the scale
  ## and S is the scaling value.

proc SetTransformation*(this: var gp_Trsf2d, FromSystem1: gp_Ax2d, ToSystem2: gp_Ax2d)  {.importcpp: "SetTransformation".}
  ## Changes a transformation allowing passage from the coordinate system
  ## "FromSystem1" to the coordinate system "ToSystem2".

proc SetTransformation*(this: var gp_Trsf2d, ToSystem: gp_Ax2d)  {.importcpp: "SetTransformation".}
  ## Changes the transformation allowing passage from the basic coordinate
  ## system {P(0.,0.,0.), VX (1.,0.,0.), VY (0.,1.,0.)} to the local
  ## coordinate system defined with the Ax2d ToSystem.

proc SetTranslation*(this: var gp_Trsf2d, V: gp_Vec2d)  {.importcpp: "SetTranslation".}
  ## Changes the transformation into a translation. V is the vector of the
  ## translation.

proc SetTranslation*(this: var gp_Trsf2d, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "SetTranslation".}
  ## Makes the transformation into a translation from the point P1 to the
  ## point P2.

proc SetTranslationPart*(this: var gp_Trsf2d, V: gp_Vec2d)  {.importcpp: "SetTranslationPart".}
  ## Replaces the translation vector with V.

proc SetScaleFactor*(this: var gp_Trsf2d, S: cdouble)  {.importcpp: "SetScaleFactor".}
  ## Modifies the scale factor.

proc IsNegative*(this: gp_Trsf2d): bool  {.importcpp: "IsNegative".}
  ## Returns true if the determinant of the vectorial part of this
  ## transformation is negative..

proc Form*(this: gp_Trsf2d): gp_TrsfForm  {.importcpp: "Form".}
  ## Returns the nature of the transformation. It can be an identity
  ## transformation, a rotation, a translation, a mirror (relative to a
  ## point or an axis), a scaling transformation, or a compound
  ## transformation.

proc ScaleFactor*(this: gp_Trsf2d): cdouble  {.importcpp: "ScaleFactor".}
  ## Returns the scale factor.

proc TranslationPart*(this: gp_Trsf2d): gp_XY  {.importcpp: "TranslationPart".}
  ## Returns the translation part of the transformation's matrix

proc VectorialPart*(this: gp_Trsf2d): gp_Mat2d  {.importcpp: "VectorialPart".}
  ## Returns the vectorial part of the transformation. It is a 2*2 matrix
  ## which includes the scale factor.

proc HVectorialPart*(this: gp_Trsf2d): gp_Mat2d  {.importcpp: "HVectorialPart".}
  ## Returns the homogeneous vectorial part of the transformation. It is a
  ## 2*2 matrix which doesn't include the scale factor. The coefficients of
  ## this matrix must be multiplied by the scale factor to obtain the
  ## coefficients of the transformation.

proc RotationPart*(this: gp_Trsf2d): cdouble  {.importcpp: "RotationPart".}
  ## Returns the angle corresponding to the rotational component of the
  ## transformation matrix (operation opposite to SetRotation()).

proc Value*(this: gp_Trsf2d, Row: cint, Col: cint): cdouble  {.importcpp: "Value".}
  ## Returns the coefficients of the transformation's matrix. It is a 2
  ## rows * 3 columns matrix. Raises OutOfRange if Row < 1 or Row > 2 or
  ## Col < 1 or Col > 3

proc Invert*(this: var gp_Trsf2d)  {.importcpp: "Invert".}

proc Inverted*(this: gp_Trsf2d): gp_Trsf2d  {.importcpp: "Inverted".}
  ## Computes the reverse transformation. Raises an exception if the matrix
  ## of the transformation is not inversible, it means that the scale
  ## factor is lower or equal to Resolution from package gp.

proc Multiplied*(this: gp_Trsf2d, T: gp_Trsf2d): gp_Trsf2d  {.importcpp: "Multiplied".}

proc `*`*(this: gp_Trsf2d, T: gp_Trsf2d): gp_Trsf2d  {.importcpp: "`*`".}

proc Multiply*(this: var gp_Trsf2d, T: gp_Trsf2d)  {.importcpp: "Multiply".}
  ## Computes the transformation composed from <me> and T. <me> = <me> * T

proc `*=`*(this: var gp_Trsf2d, T: gp_Trsf2d)  {.importcpp: "`*=`".}

proc PreMultiply*(this: var gp_Trsf2d, T: gp_Trsf2d)  {.importcpp: "PreMultiply".}
  ## Computes the transformation composed from <me> and T. <me> = T * <me>

proc Power*(this: var gp_Trsf2d, N: cint)  {.importcpp: "Power".}

proc Powered*(this: var gp_Trsf2d, N: cint): gp_Trsf2d  {.importcpp: "Powered".}
  ## Computes the following composition of transformations <me> * <me> *
  ## .......* <me>, N time. if N = 0 <me> = Identity if N < 0 <me> =
  ## <me>.Inverse() *...........* <me>.Inverse().

proc Transforms*(this: gp_Trsf2d, X: var cdouble, Y: var cdouble)  {.importcpp: "Transforms".}

proc Transforms*(this: gp_Trsf2d, Coord: var gp_XY)  {.importcpp: "Transforms".}
  ## Transforms a doublet XY with a Trsf2d

proc SetValues*(this: var gp_Trsf2d, a11: cdouble, a12: cdouble, a13: cdouble, a21: cdouble, a22: cdouble, a23: cdouble)  {.importcpp: "SetValues".}
  ## Sets the coefficients of the transformation. The transformation of the
  ## point x,y is the point x',y' with :

proc Orthogonalize*(this: var gp_Trsf2d)  {.importcpp: "Orthogonalize".}
  ## Makes orthogonalization of "matrix"

{.pop.} # header: "gp_Trsf2d.hxx
