{.passL:"-lTKMath".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
{.experimental: "callOperator".}

type
  #TColStdArray1OfReal* = object
  #StandardOStream* = object
  #StandardSStream* = object
  VectorWithNullMagnitude* = object
  ValueType* = object
  Link* = object
  TShortHArray1OfShortReal* = object
  TShortArray1OfShortReal* = object
  MathNotSquare* = object
  MathSingularMatrix* = object
  BndArray1OfBox2d* = object
  #BVH_Box* = object
  BVH_Tree*[T; N: static[cint]] {.importcpp: "BVH_Tree<\'0,\'1>",
                                   header: "BVH_Tree.hxx", bycopy.} = object
  Pair*[T:cuint; N:cint] = object

when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 

include gp/gp_includes
include tcolgp/tcolgp_includes
include geomabs/geomabs_includes
include toploc/toploc_includes
include poly/poly_includes
include math/math_includes
include precision/precision_includes
include convert/convert_includes
include bnd/bnd_includes
include bvh/bvh_includes