# /usr/include/opencascade/Standard_Std.hxx --> occt/standard/Standard_Std.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardstd = "/usr/include/opencascade/Standard_Std.hxx"
## using statement

## !!!Ignored construct:  template < class T1 , class T2 , class Dummy = void > [end of template] struct is_base_but_not_same : opencascade :: std :: is_base_of < T1 , T2 > { } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class T1 , class T2 > [end of template] struct is_base_but_not_same < T1 , T2 , typename opencascade :: std :: enable_if < opencascade :: std :: is_same < T1 , T2 > :: value > :: type > : opencascade :: std :: false_type { } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < typename TheInteger > [end of template] struct is_integer : std :: integral_constant < bool , opencascade :: std :: is_integral < TheInteger > :: value && ! opencascade :: std :: is_same < TheInteger , bool > :: value > { } ;
## Error: token expected: { but got: <!!!

type
  IsBaseButNotSameisIntegerdisableDeduction*[TheType] {.importcpp: "opencascade::is_base_but_not_same<\'0,\'1>::is_integer<\'2>::disable_deduction<\'3>",
      header: headerStandardstd, bycopy.} = object

  IsBaseButNotSameisIntegerdisableDeductiontype*[TheType] = TheType
