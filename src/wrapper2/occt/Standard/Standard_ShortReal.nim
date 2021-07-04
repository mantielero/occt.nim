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

## !!!Ignored construct:  # _Standard_ShortReal_HeaderFile [NewLine] # _Standard_ShortReal_HeaderFile [NewLine] # < cmath > [NewLine] # < float . h > [NewLine] # < Standard_values . h > [NewLine] # Standard_TypeDef.hxx [NewLine]   *********************************** //
##        Class methods                  //
##                                       //
##   Machine-dependant values            //
##   Should be taken from include file   //
##   *********************************** // -------------------------------------------------------------------
##  ShortRealSmall : Returns the smallest positive ShortReal
## ------------------------------------------------------------------- inline Standard_ShortReal ShortRealSmall ( ) { return FLT_MIN ; } -------------------------------------------------------------------
##  Abs : Returns the absolute value of a ShortReal
## ------------------------------------------------------------------- inline Standard_ShortReal Abs ( const Standard_ShortReal Value ) # defined ( __alpha ) || defined ( DECOSF1 ) [NewLine] { return fabsf ( Value ) ; } # [NewLine] { return float ( fabs ( Value ) ) ; } # [NewLine] -------------------------------------------------------------------
##  ShortRealDigit : Returns the number of digits of precision in a ShortReal
## ------------------------------------------------------------------- inline Standard_Integer ShortRealDigits ( ) { return FLT_DIG ; } -------------------------------------------------------------------
##  ShortRealEpsilon : Returns the minimum positive ShortReal such that
##                1.0 + x is not equal to 1.0
## ------------------------------------------------------------------- inline Standard_ShortReal ShortRealEpsilon ( ) { return FLT_EPSILON ; } -------------------------------------------------------------------
##  ShortRealFirst : Returns the minimum negative value of a ShortReal
## ------------------------------------------------------------------- inline Standard_ShortReal ShortRealFirst ( ) { Standard_ShortReal MaxFloatTmp = - FLT_MAX ; return MaxFloatTmp ; } -------------------------------------------------------------------
##  ShortRealFirst10Exp : Returns the minimum value of exponent(base 10) of
##                   a ShortReal.
## ------------------------------------------------------------------- inline Standard_Integer ShortRealFirst10Exp ( ) { return FLT_MIN_10_EXP ; } -------------------------------------------------------------------
##  ShortRealLast : Returns the maximum value of a ShortReal
## ------------------------------------------------------------------- inline Standard_ShortReal ShortRealLast ( ) { return FLT_MAX ; } -------------------------------------------------------------------
##  ShortRealLast10Exp : Returns the maximum value of exponent(base 10) of
##                  a ShortReal.
## ------------------------------------------------------------------- inline Standard_Integer ShortRealLast10Exp ( ) { return FLT_MAX_10_EXP ; } -------------------------------------------------------------------
##  ShortRealMantissa : Returns the size in bits of the matissa part of a
##                 ShortReal.
## ------------------------------------------------------------------- inline Standard_Integer ShortRealMantissa ( ) { return FLT_MANT_DIG ; } -------------------------------------------------------------------
##  ShortRealRadix : Returns the radix of exponent representation
## ------------------------------------------------------------------- inline Standard_Integer ShortRealRadix ( ) { return FLT_RADIX ; } -------------------------------------------------------------------
##  ShortRealSize : Returns the size in bits of an integer
## ------------------------------------------------------------------- inline Standard_Integer ShortRealSize ( ) { return BITS ( Standard_ShortReal ) ; } -------------------------------------------------------------------
##  Max : Returns the maximum value of two ShortReals
## ------------------------------------------------------------------- inline Standard_ShortReal Max ( const Standard_ShortReal Val1 , const Standard_ShortReal Val2 ) { if ( Val1 >= Val2 ) { return Val1 ; } else { return Val2 ; } } -------------------------------------------------------------------
##  Min : Returns the minimum value of two ShortReals
## ------------------------------------------------------------------- inline Standard_ShortReal Min ( const Standard_ShortReal Val1 , const Standard_ShortReal Val2 ) { if ( Val1 <= Val2 ) { return Val1 ; } else { return Val2 ; } }  ===============================================
##  Methods from Standard_Entity class which are redefined:
##     - Hascode
##     - IsEqual
##  ===============================================  ==================================
##  Methods implemeted in Standard_ShortReal.cxx
##  ================================== ! Computes a hash code for the given short real, in the range [1, theUpperBound]
## ! @param theShortReal the short real value which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound] Standard_Integer HashCode ( Standard_ShortReal theShortReal , Standard_Integer theUpperBound ) ;
## Error: expected ';'!!!

## -------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two ShortReals are equal
## -------------------------------------------------------------------

proc IsEqual*(Value1: Standard_ShortReal; Value2: Standard_ShortReal): Standard_Boolean =
  discard
