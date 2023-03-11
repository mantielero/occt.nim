import gprop_types
import ../gp/gp_types
##  Created on: 1992-08-24
##  Created by: Michel CHAUVAT
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of gp_Ax1"
discard "forward decl of GProp_PrincipalProps"

{.push header:"GProp_GProps.hxx".}
proc newGProp_GProps*(): GProp_GProps {.cdecl, constructor,
                                     importcpp: "GProp_GProps(@)".}
proc newGProp_GProps*(SystemLocation: gp_Pnt): GProp_GProps {.cdecl, constructor,
    importcpp: "GProp_GProps(@)".}
proc Add*(this: var GProp_GProps; Item: GProp_GProps; Density: cfloat = 1.0) {.cdecl,
    importcpp: "Add".}
proc Mass*(this: GProp_GProps): cfloat {.noSideEffect, cdecl, importcpp: "Mass",
                                     .}
proc CentreOfMass*(this: GProp_GProps): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "CentreOfMass".}
proc MatrixOfInertia*(this: GProp_GProps): gp_Mat {.noSideEffect, cdecl,
    importcpp: "MatrixOfInertia".}
proc StaticMoments*(this: GProp_GProps; Ix: var cfloat; Iy: var cfloat; Iz: var cfloat) {.
    noSideEffect, cdecl, importcpp: "StaticMoments".}
proc MomentOfInertia*(this: GProp_GProps; A: gp_Ax1): cfloat {.noSideEffect, cdecl,
    importcpp: "MomentOfInertia".}
proc PrincipalProperties*(this: GProp_GProps): GProp_PrincipalProps {.noSideEffect,
    cdecl, importcpp: "PrincipalProperties".}
proc RadiusOfGyration*(this: GProp_GProps; A: gp_Ax1): cfloat {.noSideEffect, cdecl,
    importcpp: "RadiusOfGyration".}
{.pop.}