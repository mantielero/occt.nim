{.push header: "gp_Mat2d.hxx".}


# Constructors and methods
proc constructor_gp_Mat2d*(): gp_Mat2d {.constructor,importcpp: "gp_Mat2d".}
  ## Creates a matrix with null coefficients.

proc constructor_gp_Mat2d*(Col1: gp_XY, Col2: gp_XY): gp_Mat2d {.constructor,importcpp: "gp_Mat2d(@)".}
  ## Col1, Col2 are the 2 columns of the matrix.

proc ` new`*(this: var gp_Mat2d, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Mat2d, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Mat2d, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Mat2d, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Mat2d, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Mat2d, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCol*(this: var gp_Mat2d, Col: cint, Value: gp_XY)  {.importcpp: "SetCol".}
  ## Assigns the two coordinates of Value to the column of range Col of
  ## this matrix Raises OutOfRange if Col < 1 or Col > 2.

proc SetCols*(this: var gp_Mat2d, Col1: gp_XY, Col2: gp_XY)  {.importcpp: "SetCols".}
  ## Assigns the number pairs Col1, Col2 to the two columns of this matrix

proc SetDiagonal*(this: var gp_Mat2d, X1: cdouble, X2: cdouble)  {.importcpp: "SetDiagonal".}
  ## Modifies the main diagonal of the matrix. <me>.Value (1, 1) = X1
  ## <me>.Value (2, 2) = X2 The other coefficients of the matrix are not
  ## modified.

proc SetIdentity*(this: var gp_Mat2d)  {.importcpp: "SetIdentity".}
  ## Modifies this matrix, so that it represents the Identity matrix.

proc SetRotation*(this: var gp_Mat2d, Ang: cdouble)  {.importcpp: "SetRotation".}
  ## Modifies this matrix, so that it representso a rotation. Ang is the
  ## angular value in radian of the rotation.

proc SetRow*(this: var gp_Mat2d, Row: cint, Value: gp_XY)  {.importcpp: "SetRow".}
  ## Assigns the two coordinates of Value to the row of index Row of this
  ## matrix. Raises OutOfRange if Row < 1 or Row > 2.

proc SetRows*(this: var gp_Mat2d, Row1: gp_XY, Row2: gp_XY)  {.importcpp: "SetRows".}
  ## Assigns the number pairs Row1, Row2 to the two rows of this matrix.

proc SetScale*(this: var gp_Mat2d, S: cdouble)  {.importcpp: "SetScale".}
  ## Modifies the matrix such that it represents a scaling transformation,
  ## where S is the scale factor : | S 0.0 | <me> = | 0.0 S |

proc SetValue*(this: var gp_Mat2d, Row: cint, Col: cint, Value: cdouble)  {.importcpp: "SetValue".}
  ## Assigns <Value> to the coefficient of row Row, column Col of this
  ## matrix. Raises OutOfRange if Row < 1 or Row > 2 or Col < 1 or Col > 2

proc Column*(this: gp_Mat2d, Col: cint): gp_XY  {.importcpp: "Column".}
  ## Returns the column of Col index. Raises OutOfRange if Col < 1 or Col >
  ## 2

proc Determinant*(this: gp_Mat2d): cdouble  {.importcpp: "Determinant".}
  ## Computes the determinant of the matrix.

proc Diagonal*(this: gp_Mat2d): gp_XY  {.importcpp: "Diagonal".}
  ## Returns the main diagonal of the matrix.

proc Row*(this: gp_Mat2d, Row: cint): gp_XY  {.importcpp: "Row".}
  ## Returns the row of index Row. Raised if Row < 1 or Row > 2

proc Value*(this: gp_Mat2d, Row: cint, Col: cint): cdouble  {.importcpp: "Value".}
  ## Returns the coefficient of range (Row, Col) Raises OutOfRange if Row <
  ## 1 or Row > 2 or Col < 1 or Col > 2

proc `()`*(this: gp_Mat2d, Row: cint, Col: cint): cdouble  {.importcpp: "`()`".}

proc ChangeValue*(this: var gp_Mat2d, Row: cint, Col: cint): cdouble  {.importcpp: "ChangeValue".}
  ## Returns the coefficient of range (Row, Col) Raises OutOfRange if Row <
  ## 1 or Row > 2 or Col < 1 or Col > 2

proc `()`*(this: var gp_Mat2d, Row: cint, Col: cint): cdouble  {.importcpp: "`()`".}

proc IsSingular*(this: gp_Mat2d): bool  {.importcpp: "IsSingular".}
  ## Returns true if this matrix is singular (and therefore, cannot be
  ## inverted). The Gauss LU decomposition is used to invert the matrix so
  ## the matrix is considered as singular if the largest pivot found is
  ## lower or equal to Resolution from gp.

proc Add*(this: var gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "Add".}

proc `+=`*(this: var gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "`+=`".}

proc Added*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "Added".}
  ## Computes the sum of this matrix and the matrix Other.for each
  ## coefficient of the matrix : <me>.Coef(i,j) + <Other>.Coef(i,j) Note: -
  ## operator += assigns the result to this matrix, while - operator +
  ## creates a new one.

proc `+`*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "`+`".}

proc Divide*(this: var gp_Mat2d, Scalar: cdouble)  {.importcpp: "Divide".}

proc `/=`*(this: var gp_Mat2d, Scalar: cdouble)  {.importcpp: "`/=`".}

proc Divided*(this: gp_Mat2d, Scalar: cdouble): gp_Mat2d  {.importcpp: "Divided".}
  ## Divides all the coefficients of the matrix by a scalar.

proc `/`*(this: gp_Mat2d, Scalar: cdouble): gp_Mat2d  {.importcpp: "`/`".}

proc Invert*(this: var gp_Mat2d)  {.importcpp: "Invert".}

proc Inverted*(this: gp_Mat2d): gp_Mat2d  {.importcpp: "Inverted".}
  ## Inverses the matrix and raises exception if the matrix is singular.

proc Multiplied*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "Multiplied".}

proc `*`*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "`*`".}

proc Multiply*(this: var gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "Multiply".}
  ## Computes the product of two matrices <me> * <Other>

proc PreMultiply*(this: var gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "PreMultiply".}
  ## Modifies this matrix by premultiplying it by the matrix Other <me> =
  ## Other * <me>.

proc Multiplied*(this: gp_Mat2d, Scalar: cdouble): gp_Mat2d  {.importcpp: "Multiplied".}

proc `*`*(this: gp_Mat2d, Scalar: cdouble): gp_Mat2d  {.importcpp: "`*`".}

proc Multiply*(this: var gp_Mat2d, Scalar: cdouble)  {.importcpp: "Multiply".}
  ## Multiplies all the coefficients of the matrix by a scalar.

proc `*=`*(this: var gp_Mat2d, Scalar: cdouble)  {.importcpp: "`*=`".}

proc Power*(this: var gp_Mat2d, N: cint)  {.importcpp: "Power".}

proc Powered*(this: gp_Mat2d, N: cint): gp_Mat2d  {.importcpp: "Powered".}
  ## computes <me> = <me> * <me> * .......* <me>, N time. if N = 0 <me> =
  ## Identity if N < 0 <me> = <me>.Invert() *...........* <me>.Invert(). If
  ## N < 0 an exception can be raised if the matrix is not inversible

proc Subtract*(this: var gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "Subtract".}

proc `-=`*(this: var gp_Mat2d, Other: gp_Mat2d)  {.importcpp: "`-=`".}

proc Subtracted*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "Subtracted".}
  ## Computes for each coefficient of the matrix : <me>.Coef(i,j) -
  ## <Other>.Coef(i,j)

proc `-`*(this: gp_Mat2d, Other: gp_Mat2d): gp_Mat2d  {.importcpp: "`-`".}

proc Transpose*(this: var gp_Mat2d)  {.importcpp: "Transpose".}

proc Transposed*(this: gp_Mat2d): gp_Mat2d  {.importcpp: "Transposed".}
  ## Transposes the matrix. A(j, i) -> A (i, j)

{.pop.} # header: "gp_Mat2d.hxx
