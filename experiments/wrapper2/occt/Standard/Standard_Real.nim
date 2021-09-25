##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_Real_HeaderFile [NewLine] # _Standard_Real_HeaderFile [NewLine] # < cmath > [NewLine] # < float . h > [NewLine] # < Standard_values . h > [NewLine] # < Standard_math . hxx > [NewLine] # < Standard_TypeDef . hxx > [NewLine]  ===============================================
##  Methods from Standard_Entity class which are redefined:
##     - Hascode
##     - IsEqual
##  ===============================================  ==================================
##  Methods implemeted in Standard_Real.cxx
##  ================================== ! Computes a hash code for the given real, in the range [1, theUpperBound]
## ! @param theReal the real value which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound] Standard_Integer HashCode ( Standard_Real theReal , Standard_Integer theUpperBound ) ;
## Error: expected ';'!!!

proc aCos*(a1: float): float {.importcpp: "ACos(@)", header: "Standard_Real.hxx".}
proc aCosApprox*(a1: float): float {.importcpp: "ACosApprox(@)",
                                 header: "Standard_Real.hxx".}
proc aSin*(a1: float): float {.importcpp: "ASin(@)", header: "Standard_Real.hxx".}
proc aTan2*(a1: float; a2: float): float {.importcpp: "ATan2(@)",
                                     header: "Standard_Real.hxx".}
proc nextAfter*(a1: float; a2: float): float {.importcpp: "NextAfter(@)",
    header: "Standard_Real.hxx".}
## ! Returns |a| if b >= 0; -|a| if b < 0.

proc sign*(a: float; b: float): float {.importcpp: "Sign(@)",
                                  header: "Standard_Real.hxx".}
proc aTanh*(a1: float): float {.importcpp: "ATanh(@)", header: "Standard_Real.hxx".}
proc aCosh*(a1: float): float {.importcpp: "ACosh(@)", header: "Standard_Real.hxx".}
proc sinh*(a1: float): float {.importcpp: "Sinh(@)", header: "Standard_Real.hxx".}
proc cosh*(a1: float): float {.importcpp: "Cosh(@)", header: "Standard_Real.hxx".}
proc log*(a1: float): float {.importcpp: "Log(@)", header: "Standard_Real.hxx".}
proc sqrt*(a1: float): float {.importcpp: "Sqrt(@)", header: "Standard_Real.hxx".}
## -------------------------------------------------------------------
##  RealSmall : Returns the smallest positive real
## -------------------------------------------------------------------

proc realSmall*(): float =
  discard

## -------------------------------------------------------------------
##  Abs : Returns the absolute value of a real
## -------------------------------------------------------------------

proc abs*(value: float): float =
  discard

## -------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two reals are equal
## -------------------------------------------------------------------

proc isEqual*(value1: float; value2: float): bool =
  discard

##   *********************************** //
##        Class methods                  //
##                                       //
##   Machine-dependant values            //
##   Should be taken from include file   //
##   *********************************** //
## -------------------------------------------------------------------
##  RealDigit : Returns the number of digits of precision in a real
## -------------------------------------------------------------------

proc realDigits*(): int =
  discard

## -------------------------------------------------------------------
##  RealEpsilon : Returns the minimum positive real such that
##                1.0 + x is not equal to 1.0
## -------------------------------------------------------------------

proc realEpsilon*(): float =
  discard

## -------------------------------------------------------------------
##  RealFirst : Returns the minimum negative value of a real
## -------------------------------------------------------------------

proc realFirst*(): float =
  discard

## -------------------------------------------------------------------
##  RealFirst10Exp : Returns the minimum value of exponent(base 10) of
##                   a real.
## -------------------------------------------------------------------

proc realFirst10Exp*(): int =
  discard

## -------------------------------------------------------------------
##  RealLast : Returns the maximum value of a real
## -------------------------------------------------------------------

proc realLast*(): float =
  discard

## -------------------------------------------------------------------
##  RealLast10Exp : Returns the maximum value of exponent(base 10) of
##                  a real.
## -------------------------------------------------------------------

proc realLast10Exp*(): int =
  discard

## -------------------------------------------------------------------
##  RealMantissa : Returns the size in bits of the matissa part of a
##                 real.
## -------------------------------------------------------------------

proc realMantissa*(): int =
  discard

## -------------------------------------------------------------------
##  RealRadix : Returns the radix of exponent representation
## -------------------------------------------------------------------

proc realRadix*(): int =
  discard

## -------------------------------------------------------------------
##  RealSize : Returns the size in bits of an integer
## -------------------------------------------------------------------

proc realSize*(): int =
  discard

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=//
##    End of machine-dependant values   //
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=//
## -------------------------------------------------------------------
##  IntToReal : Converts an integer in a real
## -------------------------------------------------------------------

proc intToReal*(value: int): float =
  discard

## -------------------------------------------------------------------
##  ATan : Returns the value of the arc tangent of a real
## -------------------------------------------------------------------

proc aTan*(value: float): float =
  discard

## -------------------------------------------------------------------
##  Ceiling : Returns the smallest integer not less than a real
## -------------------------------------------------------------------

proc ceiling*(value: float): float =
  discard

## -------------------------------------------------------------------
##  Cos : Returns the cosine of a real
## -------------------------------------------------------------------

proc cos*(value: float): float =
  discard

## -------------------------------------------------------------------
##  Epsilon : The function returns absolute value of difference
##            between 'Value' and other nearest value of
##            Standard_Real type.
##            Nearest value is choseen in direction of infinity
##            the same sign as 'Value'.
##            If 'Value' is 0 then returns minimal positive value
##            of Standard_Real type.
## -------------------------------------------------------------------

proc epsilon*(value: float): float =
  discard

## -------------------------------------------------------------------
##  Exp : Returns the exponential function of a real
## -------------------------------------------------------------------

proc exp*(value: float): float =
  discard

## -------------------------------------------------------------------
##  Floor : Return the largest integer not greater than a real
## -------------------------------------------------------------------

proc floor*(value: float): float =
  discard

## -------------------------------------------------------------------
##  IntegerPart : Returns the integer part of a real
## -------------------------------------------------------------------

proc integerPart*(value: float): float =
  discard

## -------------------------------------------------------------------
##  Log10 : Returns the base-10 logarithm of a real
## -------------------------------------------------------------------

proc log10*(value: float): float =
  discard

## -------------------------------------------------------------------
##  Max : Returns the maximum value of two reals
## -------------------------------------------------------------------

proc max*(val1: float; val2: float): float =
  discard

## -------------------------------------------------------------------
##  Min : Returns the minimum value of two reals
## -------------------------------------------------------------------

proc min*(val1: float; val2: float): float =
  discard

## -------------------------------------------------------------------
##  Pow : Returns a real to a given power
## -------------------------------------------------------------------

proc pow*(value: float; p: float): float =
  discard

## -------------------------------------------------------------------
##  RealPart : Returns the fractional part of a real.
## -------------------------------------------------------------------

proc realPart*(value: float): float =
  discard

## -------------------------------------------------------------------
##  RealToInt : Returns the real converted to nearest valid integer.
##              If input value is out of valid range for integers,
##              minimal or maximal possible integer is returned.
## -------------------------------------------------------------------

proc realToInt*(value: float): int =
  discard

##  =======================================================================
##  function : RealToShortReal
##  purpose  : Converts Standard_Real value to the nearest valid
##             Standard_ShortReal. If input value is out of valid range
##             for Standard_ShortReal, minimal or maximal
##             Standard_ShortReal is returned.
##  =======================================================================

proc realToShortReal*(theVal: float): StandardShortReal =
  discard

## -------------------------------------------------------------------
##  Round : Returns the nearest integer of a real
## -------------------------------------------------------------------

proc round*(value: float): float =
  discard

## -------------------------------------------------------------------
##  Sin : Returns the sine of a real
## -------------------------------------------------------------------

proc sin*(value: float): float =
  discard

## -------------------------------------------------------------------
##  ASinh : Returns the hyperbolic arc sine of a real
## -------------------------------------------------------------------

## !!!Ignored construct:  inline Standard_Real ASinh ( const Standard_Real Value ) # __QNX__ [NewLine] { return std :: asinh ( Value ) ; } # [NewLine] { return asinh ( Value ) ; } # [NewLine] -------------------------------------------------------------------
##  Square : Returns a real to the power 2
## ------------------------------------------------------------------- inline Standard_Real Square ( const Standard_Real Value ) { return Value * Value ; } -------------------------------------------------------------------
##  Tan : Returns the tangent of a real
## ------------------------------------------------------------------- inline Standard_Real Tan ( const Standard_Real Value ) { return tan ( Value ) ; } -------------------------------------------------------------------
##  Tanh : Returns the hyperbolic tangent of a real
## ------------------------------------------------------------------- inline Standard_Real Tanh ( const Standard_Real Value ) { return tanh ( Value ) ; } # [NewLine]
## Error: expected ';'!!!

