{.experimental: "codeReordering".}
{.experimental: "callOperator".}

proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}

include tkernel/tkernel
include tkmath/tkmath
include tkgeombase/tkgeombase
include tkg3d/tkg3d
include tkg2d/tkg2d
include tkbrep/tkbrep
include tktopalgo/tktopalgo
include tkprim/tkprim
include tkfillet/tkfillet
include tkbool/tkbool
include tkgeomalgo/tkgeomalgo
include tkbo/tkbo
include tkxsbase/tkxsbase
include tkstep/tkstep
include tkv3d/tkv3d
include tkservice/tkservice
