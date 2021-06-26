# /usr/include/opencascade/Standard_Assert.hxx --> occt/standard/Standard_Assert.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardassert = "/usr/include/opencascade/Standard_Assert.hxx"
proc standardASSERT_DO_NOTHING*() =
  discard

type
  StandardStaticAssert*[Condition: static[bool]] {.
      importcpp: "Standard_Static_Assert<\'0>", header: headerStandardassert, bycopy.} = object


## !!!Ignored construct:  template < > [end of template] struct Standard_Static_Assert < true > { static void assert_ok ( ) { } } ;
## Error: identifier expected, but got: <!!!
