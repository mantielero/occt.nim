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

## !!!Ignored construct:  # _Standard_Real_HeaderFile [NewLine] # _Standard_Real_HeaderFile [NewLine] # < cmath > [NewLine] # < float . h > [NewLine] # < Standard_values . h > [NewLine] # Standard_math.hxx [NewLine] # Standard_TypeDef.hxx [NewLine]  ===============================================
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

proc ACos*(a1: Standard_Real): Standard_Real {.importcpp: "ACos(@)",
    header: "Standard_Real.hxx".}
proc ACosApprox*(a1: Standard_Real): Standard_Real {.importcpp: "ACosApprox(@)",
    header: "Standard_Real.hxx".}
proc ASin*(a1: Standard_Real): Standard_Real {.importcpp: "ASin(@)",
    header: "Standard_Real.hxx".}
proc ATan2*(a1: Standard_Real; a2: Standard_Real): Standard_Real {.
    importcpp: "ATan2(@)", header: "Standard_Real.hxx".}
proc NextAfter*(a1: Standard_Real; a2: Standard_Real): Standard_Real {.
    importcpp: "NextAfter(@)", header: "Standard_Real.hxx".}
## ! Returns |a| if b >= 0; -|a| if b < 0.

proc Sign*(a: Standard_Real; b: Standard_Real): Standard_Real {.importcpp: "Sign(@)",
    header: "Standard_Real.hxx".}
proc ATanh*(a1: Standard_Real): Standard_Real {.importcpp: "ATanh(@)",
    header: "Standard_Real.hxx".}
proc ACosh*(a1: Standard_Real): Standard_Real {.importcpp: "ACosh(@)",
    header: "Standard_Real.hxx".}
proc Sinh*(a1: Standard_Real): Standard_Real {.importcpp: "Sinh(@)",
    header: "Standard_Real.hxx".}
proc Cosh*(a1: Standard_Real): Standard_Real {.importcpp: "Cosh(@)",
    header: "Standard_Real.hxx".}
proc Log*(a1: Standard_Real): Standard_Real {.importcpp: "Log(@)",
    header: "Standard_Real.hxx".}
proc Sqrt*(a1: Standard_Real): Standard_Real {.importcpp: "Sqrt(@)",
    header: "Standard_Real.hxx".}
## -------------------------------------------------------------------
##  RealSmall : Returns the smallest positive real
## -------------------------------------------------------------------

proc RealSmall*(): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Abs : Returns the absolute value of a real
## -------------------------------------------------------------------

proc Abs*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two reals are equal
## -------------------------------------------------------------------

proc IsEqual*(Value1: Standard_Real; Value2: Standard_Real): Standard_Boolean =
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

proc RealDigits*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealEpsilon : Returns the minimum positive real such that
##                1.0 + x is not equal to 1.0
## -------------------------------------------------------------------

proc RealEpsilon*(): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealFirst : Returns the minimum negative value of a real
## -------------------------------------------------------------------

proc RealFirst*(): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealFirst10Exp : Returns the minimum value of exponent(base 10) of
##                   a real.
## -------------------------------------------------------------------

proc RealFirst10Exp*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealLast : Returns the maximum value of a real
## -------------------------------------------------------------------

proc RealLast*(): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealLast10Exp : Returns the maximum value of exponent(base 10) of
##                  a real.
## -------------------------------------------------------------------

proc RealLast10Exp*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealMantissa : Returns the size in bits of the matissa part of a
##                 real.
## -------------------------------------------------------------------

proc RealMantissa*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealRadix : Returns the radix of exponent representation
## -------------------------------------------------------------------

proc RealRadix*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealSize : Returns the size in bits of an integer
## -------------------------------------------------------------------

proc RealSize*(): Standard_Integer =
  discard

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=//
##    End of machine-dependant values   //
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=//
## -------------------------------------------------------------------
##  IntToReal : Converts an integer in a real
## -------------------------------------------------------------------

proc IntToReal*(Value: Standard_Integer): Standard_Real =
  discard

## -------------------------------------------------------------------
##  ATan : Returns the value of the arc tangent of a real
## -------------------------------------------------------------------

proc ATan*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Ceiling : Returns the smallest integer not less than a real
## -------------------------------------------------------------------

proc Ceiling*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Cos : Returns the cosine of a real
## -------------------------------------------------------------------

proc Cos*(Value: Standard_Real): Standard_Real =
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

proc Epsilon*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Exp : Returns the exponential function of a real
## -------------------------------------------------------------------

proc Exp*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Floor : Return the largest integer not greater than a real
## -------------------------------------------------------------------

proc Floor*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  IntegerPart : Returns the integer part of a real
## -------------------------------------------------------------------

proc IntegerPart*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Log10 : Returns the base-10 logarithm of a real
## -------------------------------------------------------------------

proc Log10*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Max : Returns the maximum value of two reals
## -------------------------------------------------------------------

proc Max*(Val1: Standard_Real; Val2: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Min : Returns the minimum value of two reals
## -------------------------------------------------------------------

proc Min*(Val1: Standard_Real; Val2: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Pow : Returns a real to a given power
## -------------------------------------------------------------------

proc Pow*(Value: Standard_Real; P: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealPart : Returns the fractional part of a real.
## -------------------------------------------------------------------

proc RealPart*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealToInt : Returns the real converted to nearest valid integer.
##              If input value is out of valid range for integers,
##              minimal or maximal possible integer is returned.
## -------------------------------------------------------------------

proc RealToInt*(Value: Standard_Real): Standard_Integer =
  discard

##  =======================================================================
##  function : RealToShortReal
##  purpose  : Converts Standard_Real value to the nearest valid
##             Standard_ShortReal. If input value is out of valid range
##             for Standard_ShortReal, minimal or maximal
##             Standard_ShortReal is returned.
##  =======================================================================

proc RealToShortReal*(theVal: Standard_Real): Standard_ShortReal =
  discard

## -------------------------------------------------------------------
##  Round : Returns the nearest integer of a real
## -------------------------------------------------------------------

proc Round*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Sin : Returns the sine of a real
## -------------------------------------------------------------------

proc Sin*(Value: Standard_Real): Standard_Real =
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
