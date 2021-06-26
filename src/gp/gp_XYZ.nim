import gp_types

{.push header: "gp_XYZ.hxx".}


# Constructors and methods
proc XYZ*(): gp_XYZ {.constructor,importcpp: "gp_XYZ".}
  ## Creates an XYZ object with zero co-ordinates (0,0,0)

proc XYZ*(X: cdouble, Y: cdouble, Z: cdouble): gp_XYZ {.constructor,importcpp: "gp_XYZ(@)".}
  ## creates an XYZ with given coordinates
  ## 
#[
proc ` new`*(this: var gp_XYZ, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_XYZ, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_XYZ, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_XYZ, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_XYZ, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_XYZ, pointer, pointer)  {.importcpp: "` delete`".}
]#
proc setCoord*(this: var gp_XYZ, X: cdouble, Y: cdouble, Z: cdouble)  {.importcpp: "SetCoord".}
  ## For this XYZ object, assigns the values X, Y and Z to its three
  ## coordinates

proc setCoord*(this: var gp_XYZ, Index: cint, Xi: cdouble)  {.importcpp: "SetCoord".}
  ## modifies the coordinate of range Index Index = 1 => X is modified
  ## Index = 2 => Y is modified Index = 3 => Z is modified Raises
  ## OutOfRange if Index != {1, 2, 3}.

proc setX*(this: var gp_XYZ, X: cdouble)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate

proc setY*(this: var gp_XYZ, Y: cdouble)  {.importcpp: "SetY".}
  ## Assigns the given value to the Y coordinate

proc setZ*(this: var gp_XYZ, Z: cdouble)  {.importcpp: "SetZ".}
  ## Assigns the given value to the Z coordinate

proc Coord*(this: gp_XYZ, Index: cint): cdouble  {.importcpp: "Coord".}
  ## returns the coordinate of range Index : Index = 1 => X is returned
  ## Index = 2 => Y is returned Index = 3 => Z is returned

proc ChangeCoord*(this: var gp_XYZ, theIndex: cint): cdouble  {.importcpp: "ChangeCoord".}

proc Coord*(this: gp_XYZ, X: var cdouble, Y: var cdouble, Z: var cdouble)  {.importcpp: "Coord".}

#[
proc GetData*(this: gp_XYZ): cdouble *  {.importcpp: "GetData".}
  ## Returns a const ptr to coordinates location. Is useful for algorithms,
  ## but DOES NOT PERFORM ANY CHECKS!

proc ChangeData*(this: var gp_XYZ): cdouble *  {.importcpp: "ChangeData".}
  ## Returns a ptr to coordinates location. Is useful for algorithms, but
  ## DOES NOT PERFORM ANY CHECKS!
]#

proc x*(this: gp_XYZ): cdouble  {.importcpp: "X".}
  ## Returns the X coordinate

proc y*(this: gp_XYZ): cdouble  {.importcpp: "Y".}
  ## Returns the Y coordinate

proc z*(this: gp_XYZ): cdouble  {.importcpp: "Z".}
  ## Returns the Z coordinate

proc modulus*(this: gp_XYZ): cdouble  {.importcpp: "Modulus".}
  ## computes Sqrt (X*X + Y*Y + Z*Z) where X, Y and Z are the three
  ## coordinates of this XYZ object.
  ## DONE

proc squareModulus*(this: gp_XYZ): cdouble  {.importcpp: "SquareModulus".}
  ## Computes X*X + Y*Y + Z*Z where X, Y and Z are the three coordinates of
  ## this XYZ object.
  ## DONE

proc isEqual*(this: gp_XYZ, Other: gp_XYZ, Tolerance: cdouble): bool  {.importcpp: "IsEqual".}
  ## Returns True if he coordinates of this XYZ object are equal to the
  ## respective coordinates Other, within the specified tolerance
  ## Tolerance. I.e.: abs(<me>.X() - Other.X()) <= Tolerance and
  ## abs(<me>.Y() - Other.Y()) <= Tolerance and abs(<me>.Z() - Other.Z())
  ## <= Tolerance.

proc add*(this: var gp_XYZ, Other: gp_XYZ)  {.importcpp: "Add".}
  ## <me>.X() = <me>.X() + Other.X() <me>.Y() = <me>.Y() + Other.Y()
  ## <me>.Z() = <me>.Z() + Other.Z()
  ## DONE

proc `+=`*(this: var gp_XYZ, Other: gp_XYZ)  {.importcpp: "# += #".}

proc added*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "Added".}
  ## new.X() = <me>.X() + Other.X() new.Y() = <me>.Y() + Other.Y() new.Z()
  ## = <me>.Z() + Other.Z()

proc `+`*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "# + #".}

proc cross*(this: var gp_XYZ, Right: gp_XYZ)  {.importcpp: "Cross".}
  ## <me>.X() = <me>.Y() * Other.Z() - <me>.Z() * Other.Y() <me>.Y() =
  ## <me>.Z() * Other.X() - <me>.X() * Other.Z() <me>.Z() = <me>.X() *
  ## Other.Y() - <me>.Y() * Other.X()

proc `^=`*(this: var gp_XYZ, Right: gp_XYZ)  {.importcpp: "# ^= #".}

proc crossed*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "Crossed".}
  ## new.X() = <me>.Y() * Other.Z() - <me>.Z() * Other.Y() new.Y() =
  ## <me>.Z() * Other.X() - <me>.X() * Other.Z() new.Z() = <me>.X() *
  ## Other.Y() - <me>.Y() * Other.X()

proc `^`*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "# ^ #".}

proc crossMagnitude*(this: gp_XYZ, Right: gp_XYZ): cdouble  {.importcpp: "CrossMagnitude".}
  ## Computes the magnitude of the cross product between <me> and Right.
  ## Returns || <me> ^ Right ||

proc crossSquareMagnitude*(this: gp_XYZ, Right: gp_XYZ): cdouble  {.importcpp: "CrossSquareMagnitude".}
  ## Computes the square magnitude of the cross product between <me> and
  ## Right. Returns || <me> ^ Right ||**2

proc crossCross*(this: var gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ)  {.importcpp: "CrossCross".}
  ## Triple vector product Computes <me> = <me>.Cross(Coord1.Cross(Coord2))

proc crossCrossed*(this: gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ): gp_XYZ  {.importcpp: "CrossCrossed".}
  ## Triple vector product computes New = <me>.Cross(Coord1.Cross(Coord2))

proc divide*(this: var gp_XYZ, Scalar: cdouble)  {.importcpp: "Divide".}
  ## divides <me> by a real.

proc `/=`*(this: var gp_XYZ, Scalar: cdouble)  {.importcpp: "# /= #".}

proc divided*(this: gp_XYZ, Scalar: cdouble): gp_XYZ  {.importcpp: "Divided".}
  ## divides <me> by a real.

proc `/`*(this: gp_XYZ, Scalar: cdouble): gp_XYZ  {.importcpp: "# / #".}

proc dot*(this: gp_XYZ, Other: gp_XYZ): cdouble  {.importcpp: "Dot".}
  ## computes the scalar product between <me> and Other

proc `*`*(this: gp_XYZ, Other: gp_XYZ): cdouble  {.importcpp: "# * #".}

proc dotCross*(this: gp_XYZ, Coord1: gp_XYZ, Coord2: gp_XYZ): cdouble  {.importcpp: "DotCross".}
  ## computes the triple scalar product

proc multiply*(this: var gp_XYZ, Scalar: cdouble)  {.importcpp: "Multiply".}
  ## <me>.X() = <me>.X() * Scalar; <me>.Y() = <me>.Y() * Scalar; <me>.Z() =
  ## <me>.Z() * Scalar;

proc `*=`*(this: var gp_XYZ, Scalar: cdouble)  {.importcpp: "# *= #".}

proc multiply*(this: var gp_XYZ, Other: gp_XYZ)  {.importcpp: "Multiply".}
  ## <me>.X() = <me>.X() * Other.X(); <me>.Y() = <me>.Y() * Other.Y();
  ## <me>.Z() = <me>.Z() * Other.Z();

proc `*=`*(this: var gp_XYZ, Other: gp_XYZ)  {.importcpp: "# *= #".}

proc multiply*(this: var gp_XYZ, Matrix: gp_Mat)  {.importcpp: "Multiply".}
  ## <me> = Matrix * <me>

proc `*=`*(this: var gp_XYZ, Matrix: gp_Mat)  {.importcpp: "# *= #".}

proc multiplied*(this: gp_XYZ, Scalar: cdouble): gp_XYZ  {.importcpp: "Multiplied".}
  ## New.X() = <me>.X() * Scalar; New.Y() = <me>.Y() * Scalar; New.Z() =
  ## <me>.Z() * Scalar;

proc `*`*(this: gp_XYZ, Scalar: cdouble): gp_XYZ  {.importcpp: "# * #".}

proc multiplied*(this: gp_XYZ, Other: gp_XYZ): gp_XYZ  {.importcpp: "Multiplied".}
  ## new.X() = <me>.X() * Other.X(); new.Y() = <me>.Y() * Other.Y();
  ## new.Z() = <me>.Z() * Other.Z();

proc multiplied*(this: gp_XYZ, Matrix: gp_Mat): gp_XYZ  {.importcpp: "Multiplied".}
  ## New = Matrix * <me>

proc `*`*(this: gp_XYZ, Matrix: gp_Mat): gp_XYZ  {.importcpp: "# * #".}

proc normalize*(this: var gp_XYZ)  {.importcpp: "Normalize".}
  ## <me>.X() = <me>.X()/ <me>.Modulus() <me>.Y() = <me>.Y()/
  ## <me>.Modulus() <me>.Z() = <me>.Z()/ <me>.Modulus() Raised if
  ## <me>.Modulus() <= Resolution from gp

proc normalized*(this: gp_XYZ): gp_XYZ  {.importcpp: "Normalized".}
  ## New.X() = <me>.X()/ <me>.Modulus() New.Y() = <me>.Y()/ <me>.Modulus()
  ## New.Z() = <me>.Z()/ <me>.Modulus() Raised if <me>.Modulus() <=
  ## Resolution from gp

proc reverse*(this: var gp_XYZ)  {.importcpp: "Reverse".}
  ## <me>.X() = -<me>.X() <me>.Y() = -<me>.Y() <me>.Z() = -<me>.Z()

proc reversed*(this: gp_XYZ): gp_XYZ  {.importcpp: "Reversed".}
  ## New.X() = -<me>.X() New.Y() = -<me>.Y() New.Z() = -<me>.Z()

proc subtract*(this: var gp_XYZ, Right: gp_XYZ)  {.importcpp: "Subtract".}
  ## <me>.X() = <me>.X() - Other.X() <me>.Y() = <me>.Y() - Other.Y()
  ## <me>.Z() = <me>.Z() - Other.Z()

proc `-=`*(this: var gp_XYZ, Right: gp_XYZ)  {.importcpp: "# -= #".}

proc subtracted*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "Subtracted".}
  ## new.X() = <me>.X() - Other.X() new.Y() = <me>.Y() - Other.Y() new.Z()
  ## = <me>.Z() - Other.Z()

proc `-`*(this: gp_XYZ, Right: gp_XYZ): gp_XYZ  {.importcpp: "# - #".}

proc setLinearForm*(this: var gp_XYZ, A1: cdouble, XYZ1: gp_XYZ, A2: cdouble, XYZ2: gp_XYZ, A3: cdouble, XYZ3: gp_XYZ, XYZ4: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + A2 * XYZ2 + A3
  ## * XYZ3 + XYZ4

proc setLinearForm*(this: var gp_XYZ, A1: cdouble, XYZ1: gp_XYZ, A2: cdouble, XYZ2: gp_XYZ, A3: cdouble, XYZ3: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + A2 * XYZ2 + A3
  ## * XYZ3

proc setLinearForm*(this: var gp_XYZ, A1: cdouble, XYZ1: gp_XYZ, A2: cdouble, XYZ2: gp_XYZ, XYZ3: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + A2 * XYZ2 +
  ## XYZ3

proc setLinearForm*(this: var gp_XYZ, A1: cdouble, XYZ1: gp_XYZ, A2: cdouble, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + A2 * XYZ2

proc setLinearForm*(this: var gp_XYZ, A1: cdouble, XYZ1: gp_XYZ, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * XYZ1 + XYZ2

proc setLinearForm*(this: var gp_XYZ, XYZ1: gp_XYZ, XYZ2: gp_XYZ)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : XYZ1 + XYZ2
  ## DONE

#[
proc DumpJson*(this: gp_XYZ, theOStream: var Standard_OStream, theDepth: cint)  {.importcpp: "DumpJson".}
  ## Dumps the content of me into the stream
]#
{.pop.} # header: "gp_XYZ.hxx





