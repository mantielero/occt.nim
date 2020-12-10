{.push header: "gp_GTrsf2d.hxx".}


# Constructors and methods
proc constructor_gp_GTrsf2d*(): gp_GTrsf2d {.constructor,importcpp: "gp_GTrsf2d".}
  ## returns identity transformation.

proc constructor_gp_GTrsf2d*(T: gp_Trsf2d): gp_GTrsf2d {.constructor,importcpp: "gp_GTrsf2d(@)".}
  ## Converts the gp_Trsf2d transformation T into a general transformation.

proc constructor_gp_GTrsf2d*(M: gp_Mat2d, V: gp_XY): gp_GTrsf2d {.constructor,importcpp: "gp_GTrsf2d(@)".}
  ## Creates a transformation based on the matrix M and the vector V where
  ## M defines the vectorial part of the transformation, and V the
  ## translation part.

proc ` new`*(this: var gp_GTrsf2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_GTrsf2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_GTrsf2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_GTrsf2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_GTrsf2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_GTrsf2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAffinity*(this: var gp_GTrsf2d, A: gp_Ax2d, Ratio: Standard_Real)  {.importcpp: "SetAffinity".}
  ## Changes this transformation into an affinity of ratio Ratio with
  ## respect to the axis A. Note: An affinity is a point-by-point
  ## transformation that transforms any point P into a point P' such that
  ## if H is the orthogonal projection of P on the axis A, the vectors HP
  ## and HP' satisfy: HP' = Ratio * HP.

proc SetValue*(this: var gp_GTrsf2d, Row: Standard_Integer, Col: Standard_Integer, Value: Standard_Real)  {.importcpp: "SetValue".}
  ## Replaces the coefficient (Row, Col) of the matrix representing this
  ## transformation by Value, Raises OutOfRange if Row < 1 or Row > 2 or
  ## Col < 1 or Col > 3

proc SetTranslationPart*(this: var gp_GTrsf2d, Coord: gp_XY)  {.importcpp: "SetTranslationPart".}
  ## Replacesthe translation part of this transformation by the coordinates
  ## of the number pair Coord.

proc SetTrsf2d*(this: var gp_GTrsf2d, T: gp_Trsf2d)  {.importcpp: "SetTrsf2d".}
  ## Assigns the vectorial and translation parts of T to this
  ## transformation.

proc SetVectorialPart*(this: var gp_GTrsf2d, Matrix: gp_Mat2d)  {.importcpp: "SetVectorialPart".}
  ## Replaces the vectorial part of this transformation by Matrix.

proc IsNegative*(this: gp_GTrsf2d): Standard_Boolean  {.importcpp: "IsNegative".}
  ## Returns true if the determinant of the vectorial part of this
  ## transformation is negative.

proc IsSingular*(this: gp_GTrsf2d): Standard_Boolean  {.importcpp: "IsSingular".}
  ## Returns true if this transformation is singular (and therefore, cannot
  ## be inverted). Note: The Gauss LU decomposition is used to invert the
  ## transformation matrix. Consequently, the transformation is considered
  ## as singular if the largest pivot found is less than or equal to
  ## gp::Resolution(). Warning If this transformation is singular, it
  ## cannot be inverted.

proc Form*(this: gp_GTrsf2d): gp_TrsfForm  {.importcpp: "Form".}
  ## Returns the nature of the transformation. It can be an identity
  ## transformation, a rotation, a translation, a mirror transformation
  ## (relative to a point or axis), a scaling transformation, a compound
  ## transformation or some other type of transformation.

proc TranslationPart*(this: gp_GTrsf2d): gp_XY  {.importcpp: "TranslationPart".}
  ## Returns the translation part of the GTrsf2d.

proc VectorialPart*(this: gp_GTrsf2d): gp_Mat2d  {.importcpp: "VectorialPart".}
  ## Computes the vectorial part of the GTrsf2d. The returned Matrix is a
  ## 2*2 matrix.

proc Value*(this: gp_GTrsf2d, Row: Standard_Integer, Col: Standard_Integer): Standard_Real  {.importcpp: "Value".}
  ## Returns the coefficients of the global matrix of transformation.
  ## Raised OutOfRange if Row < 1 or Row > 2 or Col < 1 or Col > 3

proc `()`*(this: gp_GTrsf2d, Row: Standard_Integer, Col: Standard_Integer): Standard_Real  {.importcpp: "`()`".}

proc Invert*(this: var gp_GTrsf2d)  {.importcpp: "Invert".}

proc Inverted*(this: gp_GTrsf2d): gp_GTrsf2d  {.importcpp: "Inverted".}
  ## Computes the reverse transformation. Raised an exception if the matrix
  ## of the transformation is not inversible.

proc Multiplied*(this: gp_GTrsf2d, T: gp_GTrsf2d): gp_GTrsf2d  {.importcpp: "Multiplied".}
  ## Computes the transformation composed with T and <me>. In a C++
  ## implementation you can also write Tcomposed = <me> * T. Example :
  ## GTrsf2d T1, T2, Tcomp; ............... //composition : Tcomp =
  ## T2.Multiplied(T1); // or (Tcomp = T2 * T1) // transformation of a
  ## point XY P(10.,3.); XY P1(P); Tcomp.Transforms(P1); //using Tcomp XY
  ## P2(P); T1.Transforms(P2); //using T1 then T2 T2.Transforms(P2); // P1
  ## = P2 !!!

proc `*`*(this: gp_GTrsf2d, T: gp_GTrsf2d): gp_GTrsf2d  {.importcpp: "`*`".}

proc Multiply*(this: var gp_GTrsf2d, T: gp_GTrsf2d)  {.importcpp: "Multiply".}

proc `*=`*(this: var gp_GTrsf2d, T: gp_GTrsf2d)  {.importcpp: "`*=`".}

proc PreMultiply*(this: var gp_GTrsf2d, T: gp_GTrsf2d)  {.importcpp: "PreMultiply".}
  ## Computes the product of the transformation T and this transformation,
  ## and assigns the result to this transformation: this = T * this

proc Power*(this: var gp_GTrsf2d, N: Standard_Integer)  {.importcpp: "Power".}

proc Powered*(this: gp_GTrsf2d, N: Standard_Integer): gp_GTrsf2d  {.importcpp: "Powered".}
  ## Computes the following composition of transformations <me> * <me> *
  ## .......* <me>, N time. if N = 0 <me> = Identity if N < 0 <me> =
  ## <me>.Inverse() *...........* <me>.Inverse().

proc Transforms*(this: gp_GTrsf2d, Coord: var gp_XY)  {.importcpp: "Transforms".}

proc Transformed*(this: gp_GTrsf2d, Coord: gp_XY): gp_XY  {.importcpp: "Transformed".}

proc Transforms*(this: gp_GTrsf2d, X: var Standard_Real, Y: var Standard_Real)  {.importcpp: "Transforms".}
  ## Applies this transformation to the coordinates: - of the number pair
  ## Coord, or - X and Y.

proc Trsf2d*(this: gp_GTrsf2d): gp_Trsf2d  {.importcpp: "Trsf2d".}
  ## Converts this transformation into a gp_Trsf2d transformation.
  ## Exceptions Standard_ConstructionError if this transformation cannot be
  ## converted, i.e. if its form is gp_Other.

{.pop.} # header: "gp_GTrsf2d.hxx
