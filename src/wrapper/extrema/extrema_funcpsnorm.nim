import extrema_types
import ../math/math_types
import ../gp/gp_types
import ../adaptor3d/adaptor3d_types
##  Created on: 1991-07-24
##  Created by: Michel CHAUVAT
##  Copyright (c) 1991-1999 Matra Datavision
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

proc newExtrema_FuncPSNorm*(): Extrema_FuncPSNorm {.cdecl, constructor,
    importcpp: "Extrema_FuncPSNorm(@)", header: "Extrema_FuncPSNorm.hxx".}
proc newExtrema_FuncPSNorm*(P: gp_Pnt; S: Adaptor3d_Surface): Extrema_FuncPSNorm {.
    cdecl, constructor, importcpp: "Extrema_FuncPSNorm(@)",
    header: "Extrema_FuncPSNorm.hxx".}
proc Initialize*(this: var Extrema_FuncPSNorm; S: Adaptor3d_Surface) {.cdecl,
    importcpp: "Initialize", header: "Extrema_FuncPSNorm.hxx".}
proc SetPoint*(this: var Extrema_FuncPSNorm; P: gp_Pnt) {.cdecl, importcpp: "SetPoint",
    header: "Extrema_FuncPSNorm.hxx".}
proc NbVariables*(this: Extrema_FuncPSNorm): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_FuncPSNorm.hxx".}
proc NbEquations*(this: Extrema_FuncPSNorm): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Extrema_FuncPSNorm.hxx".}
proc Value*(this: var Extrema_FuncPSNorm; UV: Math_Vector; F: var Math_Vector): bool {.
    cdecl, importcpp: "Value", header: "Extrema_FuncPSNorm.hxx".}
proc Derivatives*(this: var Extrema_FuncPSNorm; UV: Math_Vector; DF: var Math_Matrix): bool {.
    cdecl, importcpp: "Derivatives", header: "Extrema_FuncPSNorm.hxx".}
proc Values*(this: var Extrema_FuncPSNorm; UV: Math_Vector; F: var Math_Vector;
            DF: var Math_Matrix): bool {.cdecl, importcpp: "Values",
                                     header: "Extrema_FuncPSNorm.hxx".}
proc GetStateNumber*(this: var Extrema_FuncPSNorm): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_FuncPSNorm.hxx".}
proc NbExt*(this: Extrema_FuncPSNorm): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "Extrema_FuncPSNorm.hxx".}
proc SquareDistance*(this: Extrema_FuncPSNorm; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_FuncPSNorm.hxx".}
proc Point*(this: Extrema_FuncPSNorm; N: cint): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_FuncPSNorm.hxx".}