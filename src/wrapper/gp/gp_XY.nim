{.push header: "gp_XY.hxx".}


# Constructors and methods
proc constructor_gp_XY*(): gp_XY {.constructor,importcpp: "gp_XY".}
  ## Creates XY object with zero coordinates (0,0).

proc constructor_gp_XY*(X: Standard_Real, Y: Standard_Real): gp_XY {.constructor,importcpp: "gp_XY(@)".}
  ## a number pair defined by the XY coordinates

proc ` new`*(this: var gp_XY, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_XY, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_XY, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_XY, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_XY, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_XY, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCoord*(this: var gp_XY, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
  ## modifies the coordinate of range Index Index = 1 => X is modified
  ## Index = 2 => Y is modified Raises OutOfRange if Index != {1, 2}.

proc SetCoord*(this: var gp_XY, X: Standard_Real, Y: Standard_Real)  {.importcpp: "SetCoord".}
  ## For this number pair, assigns the values X and Y to its coordinates

proc SetX*(this: var gp_XY, X: Standard_Real)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this number pair.

proc SetY*(this: var gp_XY, Y: Standard_Real)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate of this number pair.

proc Coord*(this: gp_XY, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
  ## returns the coordinate of range Index : Index = 1 => X is returned
  ## Index = 2 => Y is returned Raises OutOfRange if Index != {1, 2}.

proc ChangeCoord*(this: var gp_XY, theIndex: Standard_Integer): Standard_Real  {.importcpp: "ChangeCoord".}

proc Coord*(this: gp_XY, X: var Standard_Real, Y: var Standard_Real)  {.importcpp: "Coord".}
  ## For this number pair, returns its coordinates X and Y.

proc X*(this: gp_XY): Standard_Real  {.importcpp: "X".}
  ## Returns the X coordinate of this number pair.

proc Y*(this: gp_XY): Standard_Real  {.importcpp: "Y".}
  ## Returns the Y coordinate of this number pair.

proc Modulus*(this: gp_XY): Standard_Real  {.importcpp: "Modulus".}
  ## Computes Sqrt (X*X + Y*Y) where X and Y are the two coordinates of
  ## this number pair.

proc SquareModulus*(this: gp_XY): Standard_Real  {.importcpp: "SquareModulus".}
  ## Computes X*X + Y*Y where X and Y are the two coordinates of this
  ## number pair.

proc IsEqual*(this: gp_XY, Other: gp_XY, Tolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
  ## Returns true if the coordinates of this number pair are equal to the
  ## respective coordinates of the number pair Other, within the specified
  ## tolerance Tolerance. I.e.: abs(<me>.X() - Other.X()) <= Tolerance and
  ## abs(<me>.Y() - Other.Y()) <= Tolerance and computations

proc Add*(this: var gp_XY, Other: gp_XY)  {.importcpp: "Add".}
  ## Computes the sum of this number pair and number pair Other <me>.X() =
  ## <me>.X() + Other.X() <me>.Y() = <me>.Y() + Other.Y()

proc `+=`*(this: var gp_XY, Other: gp_XY)  {.importcpp: "`+=`".}

proc Added*(this: gp_XY, Other: gp_XY): gp_XY  {.importcpp: "Added".}
  ## Computes the sum of this number pair and number pair Other new.X() =
  ## <me>.X() + Other.X() new.Y() = <me>.Y() + Other.Y()

proc `+`*(this: gp_XY, Other: gp_XY): gp_XY  {.importcpp: "`+`".}

proc Crossed*(this: gp_XY, Right: gp_XY): Standard_Real  {.importcpp: "Crossed".}
  ## Real D = <me>.X() * Other.Y() - <me>.Y() * Other.X()

proc `^`*(this: gp_XY, Right: gp_XY): Standard_Real  {.importcpp: "`^`".}

proc CrossMagnitude*(this: gp_XY, Right: gp_XY): Standard_Real  {.importcpp: "CrossMagnitude".}
  ## computes the magnitude of the cross product between <me> and Right.
  ## Returns || <me> ^ Right ||

proc CrossSquareMagnitude*(this: gp_XY, Right: gp_XY): Standard_Real  {.importcpp: "CrossSquareMagnitude".}
  ## computes the square magnitude of the cross product between <me> and
  ## Right. Returns || <me> ^ Right ||**2

proc Divide*(this: var gp_XY, Scalar: Standard_Real)  {.importcpp: "Divide".}
  ## divides <me> by a real.

proc `/=`*(this: var gp_XY, Scalar: Standard_Real)  {.importcpp: "`/=`".}

proc Divided*(this: gp_XY, Scalar: Standard_Real): gp_XY  {.importcpp: "Divided".}
  ## Divides <me> by a real.

proc `/`*(this: gp_XY, Scalar: Standard_Real): gp_XY  {.importcpp: "`/`".}

proc Dot*(this: gp_XY, Other: gp_XY): Standard_Real  {.importcpp: "Dot".}
  ## Computes the scalar product between <me> and Other

proc `*`*(this: gp_XY, Other: gp_XY): Standard_Real  {.importcpp: "`*`".}

proc Multiply*(this: var gp_XY, Scalar: Standard_Real)  {.importcpp: "Multiply".}
  ## <me>.X() = <me>.X() * Scalar; <me>.Y() = <me>.Y() * Scalar;

proc `*=`*(this: var gp_XY, Scalar: Standard_Real)  {.importcpp: "`*=`".}

proc Multiply*(this: var gp_XY, Other: gp_XY)  {.importcpp: "Multiply".}
  ## <me>.X() = <me>.X() * Other.X(); <me>.Y() = <me>.Y() * Other.Y();

proc `*=`*(this: var gp_XY, Other: gp_XY)  {.importcpp: "`*=`".}

proc Multiply*(this: var gp_XY, Matrix: gp_Mat2d)  {.importcpp: "Multiply".}
  ## <me> = Matrix * <me>

proc `*=`*(this: var gp_XY, Matrix: gp_Mat2d)  {.importcpp: "`*=`".}

proc Multiplied*(this: gp_XY, Scalar: Standard_Real): gp_XY  {.importcpp: "Multiplied".}
  ## New.X() = <me>.X() * Scalar; New.Y() = <me>.Y() * Scalar;

proc `*`*(this: gp_XY, Scalar: Standard_Real): gp_XY  {.importcpp: "`*`".}

proc Multiplied*(this: gp_XY, Other: gp_XY): gp_XY  {.importcpp: "Multiplied".}
  ## new.X() = <me>.X() * Other.X(); new.Y() = <me>.Y() * Other.Y();

proc Multiplied*(this: gp_XY, Matrix: gp_Mat2d): gp_XY  {.importcpp: "Multiplied".}
  ## New = Matrix * <me>

proc `*`*(this: gp_XY, Matrix: gp_Mat2d): gp_XY  {.importcpp: "`*`".}

proc Normalize*(this: var gp_XY)  {.importcpp: "Normalize".}
  ## <me>.X() = <me>.X()/ <me>.Modulus() <me>.Y() = <me>.Y()/
  ## <me>.Modulus() Raises ConstructionError if <me>.Modulus() <=
  ## Resolution from gp

proc Normalized*(this: gp_XY): gp_XY  {.importcpp: "Normalized".}
  ## New.X() = <me>.X()/ <me>.Modulus() New.Y() = <me>.Y()/ <me>.Modulus()
  ## Raises ConstructionError if <me>.Modulus() <= Resolution from gp

proc Reverse*(this: var gp_XY)  {.importcpp: "Reverse".}
  ## <me>.X() = -<me>.X() <me>.Y() = -<me>.Y()

proc Reversed*(this: gp_XY): gp_XY  {.importcpp: "Reversed".}
  ## New.X() = -<me>.X() New.Y() = -<me>.Y()

proc `-`*(this: gp_XY): gp_XY  {.importcpp: "`-`".}

proc SetLinearForm*(this: var gp_XY, A1: Standard_Real, XY1: gp_XY, A2: Standard_Real, XY2: gp_XY)  {.importcpp: "SetLinearForm".}
  ## Computes the following linear combination and assigns the result to
  ## this number pair: A1 * XY1 + A2 * XY2

proc SetLinearForm*(this: var gp_XY, A1: Standard_Real, XY1: gp_XY, A2: Standard_Real, XY2: gp_XY, XY3: gp_XY)  {.importcpp: "SetLinearForm".}
  ## -- Computes the following linear combination and assigns the result to
  ## this number pair: A1 * XY1 + A2 * XY2 + XY3

proc SetLinearForm*(this: var gp_XY, A1: Standard_Real, XY1: gp_XY, XY2: gp_XY)  {.importcpp: "SetLinearForm".}
  ## Computes the following linear combination and assigns the result to
  ## this number pair: A1 * XY1 + XY2

proc SetLinearForm*(this: var gp_XY, XY1: gp_XY, XY2: gp_XY)  {.importcpp: "SetLinearForm".}
  ## Computes the following linear combination and assigns the result to
  ## this number pair: XY1 + XY2

proc Subtract*(this: var gp_XY, Right: gp_XY)  {.importcpp: "Subtract".}
  ## <me>.X() = <me>.X() - Other.X() <me>.Y() = <me>.Y() - Other.Y()

proc `-=`*(this: var gp_XY, Right: gp_XY)  {.importcpp: "`-=`".}

proc Subtracted*(this: gp_XY, Right: gp_XY): gp_XY  {.importcpp: "Subtracted".}
  ## new.X() = <me>.X() - Other.X() new.Y() = <me>.Y() - Other.Y()

proc `-`*(this: gp_XY, Right: gp_XY): gp_XY  {.importcpp: "`-`".}

{.pop.} # header: "gp_XY.hxx
