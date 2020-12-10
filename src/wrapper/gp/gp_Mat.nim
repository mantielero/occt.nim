{.push header: "gp_Mat.hxx".}


# Constructors and methods
proc constructor_gp_Mat*(): gp_Mat {.constructor,importcpp: "gp_Mat".}
  ## creates a matrix with null coefficients.

proc constructor_gp_Mat*(a11: cdouble, a12: cdouble, a13: cdouble, a21: cdouble, a22: cdouble, a23: cdouble, a31: cdouble, a32: cdouble, a33: cdouble): gp_Mat {.constructor,importcpp: "gp_Mat(@)".}

proc constructor_gp_Mat*(Col1: gp_XYZ, Col2: gp_XYZ, Col3: gp_XYZ): gp_Mat {.constructor,importcpp: "gp_Mat(@)".}
  ## Creates a matrix. Col1, Col2, Col3 are the 3 columns of the matrix.

proc ` new`*(this: var gp_Mat, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Mat, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Mat, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Mat, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Mat, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Mat, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCol*(this: var gp_Mat, Col: cint, Value: gp_XYZ)  {.importcpp: "SetCol".}
  ## Assigns the three coordinates of Value to the column of index Col of
  ## this matrix. Raises OutOfRange if Col < 1 or Col > 3.

proc SetCols*(this: var gp_Mat, Col1: gp_XYZ, Col2: gp_XYZ, Col3: gp_XYZ)  {.importcpp: "SetCols".}
  ## Assigns the number triples Col1, Col2, Col3 to the three columns of
  ## this matrix.

proc SetCross*(this: var gp_Mat, Ref: gp_XYZ)  {.importcpp: "SetCross".}
  ## Modifies the matrix M so that applying it to any number triple (X, Y,
  ## Z) produces the same result as the cross product of Ref and the number
  ## triple (X, Y, Z): i.e.: M * {X,Y,Z}t = Ref.Cross({X, Y ,Z}) this
  ## matrix is anti symmetric. To apply this matrix to the triplet {XYZ} is
  ## the same as to do the cross product between the triplet Ref and the
  ## triplet {XYZ}. Note: this matrix is anti-symmetric.

proc SetDiagonal*(this: var gp_Mat, X1: cdouble, X2: cdouble, X3: cdouble)  {.importcpp: "SetDiagonal".}
  ## Modifies the main diagonal of the matrix. <me>.Value (1, 1) = X1
  ## <me>.Value (2, 2) = X2 <me>.Value (3, 3) = X3 The other coefficients
  ## of the matrix are not modified.

proc SetDot*(this: var gp_Mat, Ref: gp_XYZ)  {.importcpp: "SetDot".}
  ## Modifies this matrix so that applying it to any number triple (X, Y,
  ## Z) produces the same result as the scalar product of Ref and the
  ## number triple (X, Y, Z): this * (X,Y,Z) = Ref.(X,Y,Z) Note: this
  ## matrix is symmetric.

proc SetIdentity*(this: var gp_Mat)  {.importcpp: "SetIdentity".}
  ## Modifies this matrix so that it represents the Identity matrix.

proc SetRotation*(this: var gp_Mat, Axis: gp_XYZ, Ang: cdouble)  {.importcpp: "SetRotation".}
  ## Modifies this matrix so that it represents a rotation. Ang is the
  ## angular value in radians and the XYZ axis gives the direction of the
  ## rotation. Raises ConstructionError if XYZ.Modulus() <= Resolution()

proc SetRow*(this: var gp_Mat, Row: cint, Value: gp_XYZ)  {.importcpp: "SetRow".}
  ## Assigns the three coordinates of Value to the row of index Row of this
  ## matrix. Raises OutOfRange if Row < 1 or Row > 3.

proc SetRows*(this: var gp_Mat, Row1: gp_XYZ, Row2: gp_XYZ, Row3: gp_XYZ)  {.importcpp: "SetRows".}
  ## Assigns the number triples Row1, Row2, Row3 to the three rows of this
  ## matrix.

proc SetScale*(this: var gp_Mat, S: cdouble)  {.importcpp: "SetScale".}
  ## Modifies the the matrix so that it represents a scaling
  ## transformation, where S is the scale factor. : | S 0.0 0.0 | <me> = |
  ## 0.0 S 0.0 | | 0.0 0.0 S |

proc SetValue*(this: var gp_Mat, Row: cint, Col: cint, Value: cdouble)  {.importcpp: "SetValue".}
  ## Assigns <Value> to the coefficient of row Row, column Col of this
  ## matrix. Raises OutOfRange if Row < 1 or Row > 3 or Col < 1 or Col > 3

proc Column*(this: gp_Mat, Col: cint): gp_XYZ  {.importcpp: "Column".}
  ## Returns the column of Col index. Raises OutOfRange if Col < 1 or Col >
  ## 3

proc Determinant*(this: gp_Mat): cdouble  {.importcpp: "Determinant".}
  ## Computes the determinant of the matrix.

proc Diagonal*(this: gp_Mat): gp_XYZ  {.importcpp: "Diagonal".}
  ## Returns the main diagonal of the matrix.

proc Row*(this: gp_Mat, Row: cint): gp_XYZ  {.importcpp: "Row".}
  ## returns the row of Row index. Raises OutOfRange if Row < 1 or Row > 3

proc Value*(this: gp_Mat, Row: cint, Col: cint): cdouble  {.importcpp: "Value".}
  ## Returns the coefficient of range (Row, Col) Raises OutOfRange if Row <
  ## 1 or Row > 3 or Col < 1 or Col > 3

proc `()`*(this: gp_Mat, Row: cint, Col: cint): cdouble  {.importcpp: "`()`".}

proc ChangeValue*(this: var gp_Mat, Row: cint, Col: cint): cdouble  {.importcpp: "ChangeValue".}
  ## Returns the coefficient of range (Row, Col) Raises OutOfRange if Row <
  ## 1 or Row > 3 or Col < 1 or Col > 3

proc `()`*(this: var gp_Mat, Row: cint, Col: cint): cdouble  {.importcpp: "`()`".}

proc IsSingular*(this: gp_Mat): bool  {.importcpp: "IsSingular".}
  ## The Gauss LU decomposition is used to invert the matrix (see Math
  ## package) so the matrix is considered as singular if the largest pivot
  ## found is lower or equal to Resolution from gp.

proc Add*(this: var gp_Mat, Other: gp_Mat)  {.importcpp: "Add".}

proc `+=`*(this: var gp_Mat, Other: gp_Mat)  {.importcpp: "`+=`".}

proc Added*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "Added".}
  ## Computes the sum of this matrix and the matrix Other for each
  ## coefficient of the matrix : <me>.Coef(i,j) + <Other>.Coef(i,j)

proc `+`*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "`+`".}

proc Divide*(this: var gp_Mat, Scalar: cdouble)  {.importcpp: "Divide".}

proc `/=`*(this: var gp_Mat, Scalar: cdouble)  {.importcpp: "`/=`".}

proc Divided*(this: gp_Mat, Scalar: cdouble): gp_Mat  {.importcpp: "Divided".}
  ## Divides all the coefficients of the matrix by Scalar

proc `/`*(this: gp_Mat, Scalar: cdouble): gp_Mat  {.importcpp: "`/`".}

proc Invert*(this: var gp_Mat)  {.importcpp: "Invert".}

proc Inverted*(this: gp_Mat): gp_Mat  {.importcpp: "Inverted".}
  ## Inverses the matrix and raises if the matrix is singular. - Invert
  ## assigns the result to this matrix, while - Inverted creates a new one.
  ## Warning The Gauss LU decomposition is used to invert the matrix.
  ## Consequently, the matrix is considered as singular if the largest
  ## pivot found is less than or equal to gp::Resolution(). Exceptions
  ## Standard_ConstructionError if this matrix is singular, and therefore
  ## cannot be inverted.

proc Multiplied*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "Multiplied".}
  ## Computes the product of two matrices <me> * <Other>

proc `*`*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "`*`".}

proc Multiply*(this: var gp_Mat, Other: gp_Mat)  {.importcpp: "Multiply".}
  ## Computes the product of two matrices <me> = <Other> * <me>.

proc `*=`*(this: var gp_Mat, Other: gp_Mat)  {.importcpp: "`*=`".}

proc PreMultiply*(this: var gp_Mat, Other: gp_Mat)  {.importcpp: "PreMultiply".}

proc Multiplied*(this: gp_Mat, Scalar: cdouble): gp_Mat  {.importcpp: "Multiplied".}

proc `*`*(this: gp_Mat, Scalar: cdouble): gp_Mat  {.importcpp: "`*`".}

proc Multiply*(this: var gp_Mat, Scalar: cdouble)  {.importcpp: "Multiply".}
  ## Multiplies all the coefficients of the matrix by Scalar

proc `*=`*(this: var gp_Mat, Scalar: cdouble)  {.importcpp: "`*=`".}

proc Power*(this: var gp_Mat, N: cint)  {.importcpp: "Power".}

proc Powered*(this: gp_Mat, N: cint): gp_Mat  {.importcpp: "Powered".}
  ## Computes <me> = <me> * <me> * .......* <me>, N time. if N = 0 <me> =
  ## Identity if N < 0 <me> = <me>.Invert() *...........* <me>.Invert(). If
  ## N < 0 an exception will be raised if the matrix is not inversible

proc Subtract*(this: var gp_Mat, Other: gp_Mat)  {.importcpp: "Subtract".}

proc `-=`*(this: var gp_Mat, Other: gp_Mat)  {.importcpp: "`-=`".}

proc Subtracted*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "Subtracted".}
  ## cOmputes for each coefficient of the matrix : <me>.Coef(i,j) -
  ## <Other>.Coef(i,j)

proc `-`*(this: gp_Mat, Other: gp_Mat): gp_Mat  {.importcpp: "`-`".}

proc Transpose*(this: var gp_Mat)  {.importcpp: "Transpose".}

proc Transposed*(this: gp_Mat): gp_Mat  {.importcpp: "Transposed".}
  ## Transposes the matrix. A(j, i) -> A (i, j)

proc DumpJson*(this: gp_Mat, theOStream: var Standard_OStream, theDepth: cint)  {.importcpp: "DumpJson".}
  ## Dumps the content of me into the stream

{.pop.} # header: "gp_Mat.hxx
