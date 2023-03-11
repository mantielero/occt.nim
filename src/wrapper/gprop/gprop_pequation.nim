import gprop_types
import ../tcolgp/tcolgp_types
import ../gp/gp_types
##  Created on: 1993-06-16
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of gp_Pln"
discard "forward decl of gp_Lin"

{.push header:"GProp_PEquation.hxx".}
proc newGProp_PEquation*(Pnts: TColgp_Array1OfPnt; Tol: cfloat): GProp_PEquation {.
    cdecl, constructor, importcpp: "GProp_PEquation(@)".}
proc IsPlanar*(this: GProp_PEquation): bool {.noSideEffect, cdecl,
    importcpp: "IsPlanar".}
proc IsLinear*(this: GProp_PEquation): bool {.noSideEffect, cdecl,
    importcpp: "IsLinear".}
proc IsPoint*(this: GProp_PEquation): bool {.noSideEffect, cdecl,
    importcpp: "IsPoint".}
proc IsSpace*(this: GProp_PEquation): bool {.noSideEffect, cdecl,
    importcpp: "IsSpace".}
proc Plane*(this: GProp_PEquation): gp_Pln {.noSideEffect, cdecl, importcpp: "Plane",
    .}
proc Line*(this: GProp_PEquation): gp_Lin {.noSideEffect, cdecl, importcpp: "Line",
                                        .}
proc Point*(this: GProp_PEquation): gp_Pnt {.noSideEffect, cdecl, importcpp: "Point",
    .}
proc Box*(this: GProp_PEquation; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
         V3: var gp_Vec) {.noSideEffect, cdecl, importcpp: "Box".}
{.pop.}