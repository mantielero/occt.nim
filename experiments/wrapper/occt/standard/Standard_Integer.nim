# /usr/include/opencascade/Standard_Integer.hxx --> occt/standard/Standard_Integer.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardinteger = "/usr/include/opencascade/Standard_Integer.hxx"
proc abs*(value: StandardInteger): StandardInteger =
  discard

proc isEven*(value: StandardInteger): StandardBoolean =
  discard

proc isOdd*(value: StandardInteger): StandardBoolean =
  discard

proc max*(val1: StandardInteger; val2: StandardInteger): StandardInteger =
  discard

proc min*(val1: StandardInteger; val2: StandardInteger): StandardInteger =
  discard

proc modulus*(value: StandardInteger; divisor: StandardInteger): StandardInteger =
  discard

proc square*(value: StandardInteger): StandardInteger =
  discard

proc integerFirst*(): StandardInteger =
  discard

proc integerLast*(): StandardInteger =
  discard

proc integerSize*(): StandardInteger =
  discard

## !!!Ignored construct:  template < typename TheInteger > [end of template] typename opencascade :: std :: enable_if < opencascade :: is_integer < TheInteger > :: value , Standard_Integer > :: type IntegerHashCode ( const TheInteger theValue , const typename opencascade :: disable_deduction < TheInteger > :: type theMask , const Standard_Integer theUpperBound ) { return static_cast < Standard_Integer > ( ( theValue & theMask ) % theUpperBound + 1 ) ; } inline Standard_Integer HashCode ( const Standard_Integer theValue , const Standard_Integer theUpperBound ) { return IntegerHashCode ( theValue , IntegerLast ( ) , theUpperBound ) ; } inline Standard_Boolean IsEqual ( const Standard_Integer theOne , const Standard_Integer theTwo ) { return theOne == theTwo ; } inline Standard_Integer HashCode ( const unsigned int theValue , const Standard_Integer theUpperBound ) { return :: HashCode ( static_cast < Standard_Integer > ( theValue ) , theUpperBound ) ; } inline Standard_Integer HashCode ( const long long int theValue , const Standard_Integer theUpperBound ) { return IntegerHashCode ( theValue , 0x7fffffffffffffff , theUpperBound ) ; } template < typename TheUtf32Char > typename opencascade :: std :: enable_if < ! opencascade :: std :: is_same < Standard_Utf32Char , unsigned int > :: value && opencascade :: std :: is_same < TheUtf32Char , Standard_Utf32Char > :: value , Standard_Integer > :: type HashCode ( const TheUtf32Char theValue , const Standard_Integer theUpperBound ) { return IntegerHashCode ( theValue , IntegerLast ( ) , theUpperBound ) ; } inline Standard_Boolean IsEqual ( const Standard_Utf32Char theOne , const Standard_Utf32Char theTwo ) { return theOne == theTwo ; }
## Error: token expected: ( but got: ::!!!
