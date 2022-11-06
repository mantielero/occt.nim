{.passL:"-lTKMath".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}
#{.experimental: "callOperator".}

type
  VectorWithNullMagnitude* = object
  #ValueType* = object



when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 

import gp/gp_includes
import tcolgp/tcolgp_includes
import geomabs/geomabs_includes
import toploc/toploc_includes
import poly/poly_includes
import math/math_includes
import precision/precision_includes
import convert/convert_includes
import bnd/bnd_includes
import bvh/bvh_includes
import elclib/elclib_includes

export gp_includes, tcolgp_includes, geomabs_includes, toploc_includes, poly_includes, math_includes, precision_includes, convert_includes, bnd_includes, bvh_includes
export elclib_includes
