import extrema_types
import ../math/math_types
import ../adaptor3d/adaptor3d_types
##  Created on: 1996-01-09
##  Created by: Laurent PAINNOT
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Math_Matrix"
discard "forward decl of Extrema_POnSurf"

proc newExtrema_FuncExtSS*(): Extrema_FuncExtSS {.cdecl, constructor,
    importcpp: "Extrema_FuncExtSS(@)", header: "Extrema_FuncExtSS.hxx".}
proc newExtrema_FuncExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface): Extrema_FuncExtSS {.
    cdecl, constructor, importcpp: "Extrema_FuncExtSS(@)",
    header: "Extrema_FuncExtSS.hxx".}
proc Initialize*(this: var Extrema_FuncExtSS; S1: Adaptor3d_Surface;
                S2: Adaptor3d_Surface) {.cdecl, importcpp: "Initialize",
                                       header: "Extrema_FuncExtSS.hxx".}
proc NbVariables*(this: Extrema_FuncExtSS): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_FuncExtSS.hxx".}
proc NbEquations*(this: Extrema_FuncExtSS): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Extrema_FuncExtSS.hxx".}
proc Value*(this: var Extrema_FuncExtSS; UV: Math_Vector; F: var Math_Vector): bool {.
    cdecl, importcpp: "Value", header: "Extrema_FuncExtSS.hxx".}
proc Derivatives*(this: var Extrema_FuncExtSS; UV: Math_Vector; DF: var Math_Matrix): bool {.
    cdecl, importcpp: "Derivatives", header: "Extrema_FuncExtSS.hxx".}
proc Values*(this: var Extrema_FuncExtSS; UV: Math_Vector; F: var Math_Vector;
            DF: var Math_Matrix): bool {.cdecl, importcpp: "Values",
                                     header: "Extrema_FuncExtSS.hxx".}
proc GetStateNumber*(this: var Extrema_FuncExtSS): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_FuncExtSS.hxx".}
proc NbExt*(this: Extrema_FuncExtSS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "Extrema_FuncExtSS.hxx".}
proc SquareDistance*(this: Extrema_FuncExtSS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_FuncExtSS.hxx".}
proc PointOnS1*(this: Extrema_FuncExtSS; N: cint): Extrema_POnSurf {.noSideEffect,
    cdecl, importcpp: "PointOnS1", header: "Extrema_FuncExtSS.hxx".}
proc PointOnS2*(this: Extrema_FuncExtSS; N: cint): Extrema_POnSurf {.noSideEffect,
    cdecl, importcpp: "PointOnS2", header: "Extrema_FuncExtSS.hxx".}