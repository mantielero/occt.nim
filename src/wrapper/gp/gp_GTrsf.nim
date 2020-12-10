{.push header: "gp_GTrsf.hxx".}


# Constructors and methods
proc constructor_gp_GTrsf*(): gp_GTrsf {.constructor,importcpp: "gp_GTrsf".}
  ## Returns the Identity transformation.

proc constructor_gp_GTrsf*(T: gp_Trsf): gp_GTrsf {.constructor,importcpp: "gp_GTrsf(@)".}
  ## Converts the gp_Trsf transformation T into a general transformation,
  ## i.e. Returns a GTrsf with the same matrix of coefficients as the Trsf
  ## T.

proc constructor_gp_GTrsf*(M: gp_Mat, V: gp_XYZ): gp_GTrsf {.constructor,importcpp: "gp_GTrsf(@)".}
  ## Creates a transformation based on the matrix M and the vector V where
  ## M defines the vectorial part of the transformation, and V the
  ## translation part, or

proc ` new`*(this: var gp_GTrsf, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_GTrsf, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_GTrsf, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_GTrsf, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_GTrsf, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_GTrsf, pointer, pointer)  {.importcpp: "` delete`".}

proc SetAffinity*(this: var gp_GTrsf, A1: gp_Ax1, Ratio: Standard_Real)  {.importcpp: "SetAffinity".}
  ## Changes this transformation into an affinity of ratio Ratio with
  ## respect to the axis A1. Note: an affinity is a point-by-point
  ## transformation that transforms any point P into a point P' such that
  ## if H is the orthogonal projection of P on the axis A1 or the plane A2,
  ## the vectors HP and HP' satisfy: HP' = Ratio * HP.

proc SetAffinity*(this: var gp_GTrsf, A2: gp_Ax2, Ratio: Standard_Real)  {.importcpp: "SetAffinity".}
  ## Changes this transformation into an affinity of ratio Ratio with
  ## respect to the plane defined by the origin, the "X Direction" and the
  ## "Y Direction" of coordinate system A2. Note: an affinity is a point-
  ## by-point transformation that transforms any point P into a point P'
  ## such that if H is the orthogonal projection of P on the axis A1 or the
  ## plane A2, the vectors HP and HP' satisfy: HP' = Ratio * HP.

proc SetValue*(this: var gp_GTrsf, Row: Standard_Integer, Col: Standard_Integer, Value: Standard_Real)  {.importcpp: "SetValue".}
  ## Replaces the coefficient (Row, Col) of the matrix representing this
  ## transformation by Value. Raises OutOfRange if Row < 1 or Row > 3 or
  ## Col < 1 or Col > 4

proc SetVectorialPart*(this: var gp_GTrsf, Matrix: gp_Mat)  {.importcpp: "SetVectorialPart".}
  ## Replaces the vectorial part of this transformation by Matrix.

proc SetTranslationPart*(this: var gp_GTrsf, Coord: gp_XYZ)  {.importcpp: "SetTranslationPart".}
  ## Replaces the translation part of this transformation by the
  ## coordinates of the number triple Coord.

proc SetTrsf*(this: var gp_GTrsf, T: gp_Trsf)  {.importcpp: "SetTrsf".}
  ## Assigns the vectorial and translation parts of T to this
  ## transformation.

proc IsNegative*(this: gp_GTrsf): Standard_Boolean  {.importcpp: "IsNegative".}
  ## Returns true if the determinant of the vectorial part of this
  ## transformation is negative.

proc IsSingular*(this: gp_GTrsf): Standard_Boolean  {.importcpp: "IsSingular".}
  ## Returns true if this transformation is singular (and therefore, cannot
  ## be inverted). Note: The Gauss LU decomposition is used to invert the
  ## transformation matrix. Consequently, the transformation is considered
  ## as singular if the largest pivot found is less than or equal to
  ## gp::Resolution(). Warning If this transformation is singular, it
  ## cannot be inverted.

proc Form*(this: gp_GTrsf): gp_TrsfForm  {.importcpp: "Form".}
  ## Returns the nature of the transformation. It can be an identity
  ## transformation, a rotation, a translation, a mirror transformation
  ## (relative to a point, an axis or a plane), a scaling transformation, a
  ## compound transformation or some other type of transformation.

proc SetForm*(this: var gp_GTrsf)  {.importcpp: "SetForm".}
  ## verify and set the shape of the GTrsf Other or CompoundTrsf Ex :
  ## myGTrsf.SetValue(row1,col1,val1); myGTrsf.SetValue(row2,col2,val2);
  ## ... myGTrsf.SetForm();

proc TranslationPart*(this: gp_GTrsf): gp_XYZ  {.importcpp: "TranslationPart".}
  ## Returns the translation part of the GTrsf.

proc VectorialPart*(this: gp_GTrsf): gp_Mat  {.importcpp: "VectorialPart".}
  ## Computes the vectorial part of the GTrsf. The returned Matrix is a 3*3
  ## matrix.

proc Value*(this: gp_GTrsf, Row: Standard_Integer, Col: Standard_Integer): Standard_Real  {.importcpp: "Value".}
  ## Returns the coefficients of the global matrix of transformation.
  ## Raises OutOfRange if Row < 1 or Row > 3 or Col < 1 or Col > 4

proc `()`*(this: gp_GTrsf, Row: Standard_Integer, Col: Standard_Integer): Standard_Real  {.importcpp: "`()`".}

proc Invert*(this: var gp_GTrsf)  {.importcpp: "Invert".}

proc Inverted*(this: gp_GTrsf): gp_GTrsf  {.importcpp: "Inverted".}
  ## Computes the reverse transformation. Raises an exception if the matrix
  ## of the transformation is not inversible.

proc Multiplied*(this: gp_GTrsf, T: gp_GTrsf): gp_GTrsf  {.importcpp: "Multiplied".}
  ## Computes the transformation composed from T and <me>. In a C++
  ## implementation you can also write Tcomposed = <me> * T. Example :
  ## GTrsf T1, T2, Tcomp; ............... //composition : Tcomp =
  ## T2.Multiplied(T1); // or (Tcomp = T2 * T1) // transformation of a
  ## point XYZ P(10.,3.,4.); XYZ P1(P); Tcomp.Transforms(P1); //using Tcomp
  ## XYZ P2(P); T1.Transforms(P2); //using T1 then T2 T2.Transforms(P2); //
  ## P1 = P2 !!!

proc `*`*(this: gp_GTrsf, T: gp_GTrsf): gp_GTrsf  {.importcpp: "`*`".}

proc Multiply*(this: var gp_GTrsf, T: gp_GTrsf)  {.importcpp: "Multiply".}
  ## Computes the transformation composed with <me> and T. <me> = <me> * T

proc `*=`*(this: var gp_GTrsf, T: gp_GTrsf)  {.importcpp: "`*=`".}

proc PreMultiply*(this: var gp_GTrsf, T: gp_GTrsf)  {.importcpp: "PreMultiply".}
  ## Computes the product of the transformation T and this transformation
  ## and assigns the result to this transformation. this = T * this

proc Power*(this: var gp_GTrsf, N: Standard_Integer)  {.importcpp: "Power".}

proc Powered*(this: gp_GTrsf, N: Standard_Integer): gp_GTrsf  {.importcpp: "Powered".}
  ## Computes: - the product of this transformation multiplied by itself N
  ## times, if N is positive, or - the product of the inverse of this
  ## transformation multiplied by itself |N| times, if N is negative. If N
  ## equals zero, the result is equal to the Identity transformation. I.e.:
  ## <me> * <me> * .......* <me>, N time. if N =0 <me> = Identity if N < 0
  ## <me> = <me>.Inverse() *...........* <me>.Inverse().

proc Transforms*(this: gp_GTrsf, Coord: var gp_XYZ)  {.importcpp: "Transforms".}

proc Transforms*(this: gp_GTrsf, X: var Standard_Real, Y: var Standard_Real, Z: var Standard_Real)  {.importcpp: "Transforms".}
  ## Transforms a triplet XYZ with a GTrsf.

proc Trsf*(this: gp_GTrsf): gp_Trsf  {.importcpp: "Trsf".}

{.pop.} # header: "gp_GTrsf.hxx
