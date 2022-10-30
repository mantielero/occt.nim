#{.experimental: "codeReordering".}
{.experimental: "callOperator".}

proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}

import tkernel/tkernel
import tkmath/tkmath
import tkgeombase/tkgeombase
import tkg3d/tkg3d
import tkg2d/tkg2d
import tkbrep/tkbrep
import tktopalgo/tktopalgo
import tkprim/tkprim
import tkfillet/tkfillet
import tkbool/tkbool
import tkgeomalgo/tkgeomalgo
import tkbo/tkbo
import tkxsbase/tkxsbase
import tkstep/tkstep
import tkv3d/tkv3d
import tkservice/tkservice

export tkernel, tkmath, tkgeombase, tkg3d, tkg2d
export tkbrep, tktopalgo, tkprim, tkfillet, tkbool
export tkgeomalgo, tkbo, tkxsbase, tkstep
export tkv3d, tkservice