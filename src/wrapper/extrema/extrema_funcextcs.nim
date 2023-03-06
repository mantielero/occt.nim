import extrema_types
import ../math/math_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
##  Created on: 1996-01-22
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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Math_Matrix"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"

proc newExtrema_FuncExtCS*(): Extrema_FuncExtCS {.cdecl, constructor,
    importcpp: "Extrema_FuncExtCS(@)", header: "Extrema_FuncExtCS.hxx".}
proc newExtrema_FuncExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface): Extrema_FuncExtCS {.
    cdecl, constructor, importcpp: "Extrema_FuncExtCS(@)",
    header: "Extrema_FuncExtCS.hxx".}
proc Initialize*(this: var Extrema_FuncExtCS; C: Adaptor3d_Curve; S: Adaptor3d_Surface) {.
    cdecl, importcpp: "Initialize", header: "Extrema_FuncExtCS.hxx".}
proc NbVariables*(this: Extrema_FuncExtCS): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_FuncExtCS.hxx".}
proc NbEquations*(this: Extrema_FuncExtCS): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Extrema_FuncExtCS.hxx".}
proc Value*(this: var Extrema_FuncExtCS; UV: Math_Vector; F: var Math_Vector): bool {.
    cdecl, importcpp: "Value", header: "Extrema_FuncExtCS.hxx".}
proc Derivatives*(this: var Extrema_FuncExtCS; UV: Math_Vector; DF: var Math_Matrix): bool {.
    cdecl, importcpp: "Derivatives", header: "Extrema_FuncExtCS.hxx".}
proc Values*(this: var Extrema_FuncExtCS; UV: Math_Vector; F: var Math_Vector;
            DF: var Math_Matrix): bool {.cdecl, importcpp: "Values",
                                     header: "Extrema_FuncExtCS.hxx".}
proc GetStateNumber*(this: var Extrema_FuncExtCS): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_FuncExtCS.hxx".}
proc NbExt*(this: Extrema_FuncExtCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "Extrema_FuncExtCS.hxx".}
proc SquareDistance*(this: Extrema_FuncExtCS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_FuncExtCS.hxx".}
proc PointOnCurve*(this: Extrema_FuncExtCS; N: cint): Extrema_POnCurv {.noSideEffect,
    cdecl, importcpp: "PointOnCurve", header: "Extrema_FuncExtCS.hxx".}
proc PointOnSurface*(this: Extrema_FuncExtCS; N: cint): Extrema_POnSurf {.
    noSideEffect, cdecl, importcpp: "PointOnSurface",
    header: "Extrema_FuncExtCS.hxx".}
proc SquareDistances*(this: var Extrema_FuncExtCS): var TColStd_SequenceOfReal {.
    cdecl, importcpp: "SquareDistances", header: "Extrema_FuncExtCS.hxx".}
proc PointsOnCurve*(this: var Extrema_FuncExtCS): var Extrema_SequenceOfPOnCurv {.
    cdecl, importcpp: "PointsOnCurve", header: "Extrema_FuncExtCS.hxx".}
proc PointsOnSurf*(this: var Extrema_FuncExtCS): var Extrema_SequenceOfPOnSurf {.
    cdecl, importcpp: "PointsOnSurf", header: "Extrema_FuncExtCS.hxx".}