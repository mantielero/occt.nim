{.push header: "gp_XYZ.hxx".}


# Constructors and methods
proc constructor_gp_XYZ*(): gp_XYZ {.constructor,importcpp: "gp_XYZ".}
  ## Creates an XYZ object with zero co-ordinates (0,0,0)

proc constructor_gp_XYZ*(X: Standard_Real, Y: Standard_Real, Z: Standard_Real): gp_XYZ {.constructor,importcpp: "gp_XYZ(@)".}
  ## creates an XYZ with given coordinates

proc ` new`*(this: var gp_XYZ, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_XYZ, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_XYZ, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_XYZ, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_XYZ, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_XYZ, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCoord*(this: var gp_XYZ, X: Standard_Real, Y: Standard_Real, Z: Standard_Real)  {.importcpp: "SetCoord".}
  ## For this XYZ object, assigns the values X, Y and Z to its three
  ## coordinates

proc SetCoord*(this: var gp_XYZ, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
  ## modifies the coordinate of range Index Index = 1 => X is modified
  ## Index = 2 => Y is modified Index = 3 => Z is modified Raises
  ## OutOfRange if Index != {1, 2, 3}.

proc SetX*(this: var gp_XYZ, X: Standard_Real)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate

proc SetY*(this: var gp_XYZ, Y: Standard_Real)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate

proc SetZ*(this: var gp_XYZ, Z: Standard_Real)  {.importcpp: "SetZ".}
  ## Assigns the given value to the Z coordinate

proc Coord*(this: gp_XYZ, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
  ## returns the coordinate of range Index : Index = 1 => X is returned
  ## Index = 2 => Y is returned Index = 3 => Z is returned

proc ChangeCoord*(this: var gp_XYZ, theIndex: Standard_Integer): Standard_Real  {.importcpp: "ChangeCoord".}

proc Coord*(this: gp_XYZ, X: var Standard_Real, Y: var Standard_Real, Z: var Standard_Real)  {.importcpp: "Coord".}

proc GetData*(this: gp_XYZ): Standard_Real *  {.importcpp: "GetData".}
  ## Returns a const ptr to coordinates location. Is useful for algorithms,
  ## but DOES NOT PERFORM ANY CHECKS!

proc ChangeData*(this: var gp_XYZ): Standard_Real *  {.importcpp: "ChangeData".}
  ## Returns a ptr to coordinates location. Is useful for algorithms, but
  ## DOES NOT PERFORM ANY CHECKS!

proc X*(this: gp_XYZ): Standard_Real  {.importcpp: "X".}
  ## Returns the X coordinate

proc Y*(this: gp_XYZ): Standard_Real  {.importcpp: "Y".}
  ## Returns the Y coordinate

proc Z*(this: gp_XYZ): Standard_Real  {.importcpp: "Z".}
  ## Returns the Z coordinate

proc Modulus*(this: gp_XYZ): Standard_Real  {.importcpp: "Modulus".}
  ## computes Sqrt (X*X + Y*Y + Z*Z) where X, Y and Z are the three
  ## coordinates of this XYZ object.

proc SquareModulus*(this: gp_XYZ): Standard_Real  {.importcpp: "SquareModulus".}
  ## Computes X*X + Y*Y + Z*Z where X, Y and Z are the three coordinates of
  ## this XYZ object.

proc IsEqual*(this: gp_XYZ, Other: gp_XYZ, Tolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
  ## Returns True if he coordinates of this XYZ object are equal to the
  ## respective coordinates Other, within the specified tolerance
  ## Tolerance. I.e.: abs(<me>.X() - Other.X()) <= Tolerance and
  ## abs(<me>.Y() - Other.Y()) <= Tolerance and abs(<me>.Z() - Other.Z())
  ## <= Tolerance.

proc Add*(this: var gp_XYZ, Other: gp_XYZ)  {.importcpp: "Add".}
  ## <me>.X() = <me>.X() + Other.X() <me>.Y() = <me>.Y() + Other.Y()
  ## <me>.Z() = <me>.Z() + Other.Z()

proc `+=`*(this: var gp_XYZ, Other: gp_XYZ)  {.importcpp: "`+=`".}

proc Added*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "Added".}
  ## new.X() = <me>.X() + Other.X() new.Y() = <me>.Y() + Other.Y() new.Z()
  ## = <me>.Z() + Other.Z()

proc `+`*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "`+`".}

proc Cross*(this: var gp_XYZ, Right: gp_XYZ)  {.importcpp: "Cross".}
  ## <me>.X() = <me>.Y() * Other.Z() - <me>.Z() * Other.Y() <me>.Y() =
  ## <me>.Z() * Other.X() - <me>.X() * Other.Z() <me>.Z() = <me>.X() *
  ## Other.Y() - <me>.Y() * Other.X()

proc `^=`*(this: var gp_XYZ, Right: gp_XYZ)  {.importcpp: "`^=`".}

proc Crossed*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "Crossed".}
  ## new.X() = <me>.Y() * Other.Z() - <me>.Z() * Other.Y() new.Y() =
  ## <me>.Z() * Other.X() - <me>.X() * Other.Z() new.Z() = <me>.X() *
  ## Other.Y() - <me>.Y() * Other.X()

proc `^`*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "`^`".}

proc CrossMagnitude*(this: gp_XYZ, Right: gp_XYZ): Standard_Real  {.importcpp: "CrossMagnitude".}
  ## Computes the magnitude of the cross product between <me> and Right.
  ## Returns || <me> ^ Right ||

proc CrossSquareMagnitude*(this: gp_XYZ, Right: gp_XYZ): Standard_Real  {.importcpp: "CrossSquareMagnitude".}
  ## Computes the square magnitude of the cross product between <me> and
  ## Right. Returns || <me> ^ Right ||**2

proc CrossCross*(this: var gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ)  {.importcpp: "CrossCross".}
  ## Triple vector product Computes <me> = <me>.Cross(Coord1.Cross(Coord2))

proc CrossCrossed*(this: gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ): gp_XYZ  {.importcpp: "CrossCrossed".}
  ## Triple vector product computes New = <me>.Cross(Coord1.Cross(Coord2))

proc Divide*(this: var gp_XYZ, Scalar: Standard_Real)  {.importcpp: "Divide".}
  ## divides <me> by a real.

proc `/=`*(this: var gp_XYZ, Scalar: Standard_Real)  {.importcpp: "`/=`".}

proc Divided*(this: gp_XYZ, Scalar: Standard_Real): gp_XYZ  {.importcpp: "Divided".}
  ## divides <me> by a real.

proc `/`*(this: gp_XYZ, Scalar: Standard_Real): gp_XYZ  {.importcpp: "`/`".}

proc Dot*(this: gp_XYZ, Other: gp_XYZ): Standard_Real  {.importcpp: "Dot".}
  ## computes the scalar product between <me> and Other

proc `*`*(this: gp_XYZ, Other: gp_XYZ): Standard_Real  {.importcpp: "`*`".}

proc DotCross*(this: gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ): Standard_Real  {.importcpp: "DotCross".}
  ## computes the triple scalar product

proc Multiply*(this: var gp_XYZ, Scalar: Standard_Real)  {.importcpp: "Multiply".}
  ## <me>.X() = <me>.X() * Scalar; <me>.Y() = <me>.Y() * Scalar; <me>.Z() =
  ## <me>.Z() * Scalar;

proc `*=`*(this: var gp_XYZ, Scalar: Standard_Real)  {.importcpp: "`*=`".}

proc Multiply*(this: var gp_XYZ, Other: gp_XYZ)  {.importcpp: "Multiply".}
  ## <me>.X() = <me>.X() * Other.X(); <me>.Y() = <me>.Y() * Other.Y();
  ## <me>.Z() = <me>.Z() * Other.Z();

proc `*=`*(this: var gp_XYZ, Other: gp_XYZ)  {.importcpp: "`*=`".}

proc Multiply*(this: var gp_XYZ, Matrix: gp_Mat)  {.importcpp: "Multiply".}
  ## <me> = Matrix * <me>

proc `*=`*(this: var gp_XYZ, Matrix: gp_Mat)  {.importcpp: "`*=`".}

proc Multiplied*(this: gp_XYZ, Scalar: Standard_Real): gp_XYZ  {.importcpp: "Multiplied".}
  ## New.X() = <me>.X() * Scalar; New.Y() = <me>.Y() * Scalar; New.Z() =
  ## <me>.Z() * Scalar;

proc `*`*(this: gp_XYZ, Scalar: Standard_Real): gp_XYZ  {.importcpp: "`*`".}

proc Multiplied*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "Multiplied".}
  ## new.X() = <me>.X() * Other.X(); new.Y() = <me>.Y() * Other.Y();
  ## new.Z() = <me>.Z() * Other.Z();

proc Multiplied*(this: gp_XYZ, Matrix: gp_Mat): gp_XYZ  {.importcpp: "Multiplied".}
  ## New = Matrix * <me>

proc `*`*(this: gp_XYZ, Matrix: gp_Mat): gp_XYZ  {.importcpp: "`*`".}

proc Normalize*(this: var gp_XYZ)  {.importcpp: "Normalize".}
  ## <me>.X() = <me>.X()/ <me>.Modulus() <me>.Y() = <me>.Y()/
  ## <me>.Modulus() <me>.Z() = <me>.Z()/ <me>.Modulus() Raised if
  ## <me>.Modulus() <= Resolution from gp

proc Normalized*(this: gp_XYZ): gp_XYZ  {.importcpp: "Normalized".}
  ## New.X() = <me>.X()/ <me>.Modulus() New.Y() = <me>.Y()/ <me>.Modulus()
  ## New.Z() = <me>.Z()/ <me>.Modulus() Raised if <me>.Modulus() <=
  ## Resolution from gp

proc Reverse*(this: var gp_XYZ)  {.importcpp: "Reverse".}
  ## <me>.X() = -<me>.X() <me>.Y() = -<me>.Y() <me>.Z() = -<me>.Z()

proc Reversed*(this: gp_XYZ): gp_XYZ  {.importcpp: "Reversed".}
  ## New.X() = -<me>.X() New.Y() = -<me>.Y() New.Z() = -<me>.Z()

proc Subtract*(this: var gp_XYZ, Right: gp_XYZ)  {.importcpp: "Subtract".}
  ## <me>.X() = <me>.X() - Other.X() <me>.Y() = <me>.Y() - Other.Y()
  ## <me>.Z() = <me>.Z() - Other.Z()

proc `-=`*(this: var gp_XYZ, Right: gp_XYZ)  {.importcpp: "`-=`".}

proc Subtracted*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "Subtracted".}
  ## new.X() = <me>.X() - Other.X() new.Y() = <me>.Y() - Other.Y() new.Z()
  ## = <me>.Z() - Other.Z()

proc `-`*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "`-`".}

proc SetLinearForm*(this: var gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, A2: Standard_Real, XYZ2: gp_XYZ, A3: Standard_Real, XYZ3: gp_XYZ, XYZ4: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + A2 * XYZ2 + A3
  ## * XYZ3 + XYZ4

proc SetLinearForm*(this: var gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, A2: Standard_Real, XYZ2: gp_XYZ, A3: Standard_Real, XYZ3: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + A2 * XYZ2 + A3
  ## * XYZ3

proc SetLinearForm*(this: var gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, A2: Standard_Real, XYZ2: gp_XYZ, XYZ3: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + A2 * XYZ2 +
  ## XYZ3

proc SetLinearForm*(this: var gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, A2: Standard_Real, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + A2 * XYZ2

proc SetLinearForm*(this: var gp_XYZ, A1: Standard_Real, XYZ1: gp_XYZ, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + XYZ2

proc SetLinearForm*(this: var gp_XYZ, XYZ1: gp_XYZ, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : XYZ1 + XYZ2

proc DumpJson*(this: gp_XYZ, theOStream: var Standard_OStream, theDepth: Standard_Integer)  {.importcpp: "DumpJson".}
  ## Dumps the content of me into the stream

{.pop.} # header: "gp_XYZ.hxx
