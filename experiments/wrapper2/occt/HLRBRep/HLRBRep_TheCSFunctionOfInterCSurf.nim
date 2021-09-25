##  Created on: 1992-10-14
##  Created by: Christophe MARION
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

discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  HLRBRepTheCSFunctionOfInterCSurf* {.importcpp: "HLRBRep_TheCSFunctionOfInterCSurf", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx",
                                     bycopy.} = object of MathFunctionSetWithDerivatives


proc constructHLRBRepTheCSFunctionOfInterCSurf*(s: StandardAddress; c: Lin): HLRBRepTheCSFunctionOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheCSFunctionOfInterCSurf(@)",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc nbVariables*(this: HLRBRepTheCSFunctionOfInterCSurf): int {.noSideEffect,
    importcpp: "NbVariables", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc nbEquations*(this: HLRBRepTheCSFunctionOfInterCSurf): int {.noSideEffect,
    importcpp: "NbEquations", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc value*(this: var HLRBRepTheCSFunctionOfInterCSurf; x: MathVector;
           f: var MathVector): bool {.importcpp: "Value", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc derivatives*(this: var HLRBRepTheCSFunctionOfInterCSurf; x: MathVector;
                 d: var MathMatrix): bool {.importcpp: "Derivatives", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc values*(this: var HLRBRepTheCSFunctionOfInterCSurf; x: MathVector;
            f: var MathVector; d: var MathMatrix): bool {.importcpp: "Values",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc point*(this: HLRBRepTheCSFunctionOfInterCSurf): Pnt {.noSideEffect,
    importcpp: "Point", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc root*(this: HLRBRepTheCSFunctionOfInterCSurf): float {.noSideEffect,
    importcpp: "Root", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc auxillarSurface*(this: HLRBRepTheCSFunctionOfInterCSurf): StandardAddress {.
    noSideEffect, importcpp: "AuxillarSurface",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc auxillarCurve*(this: HLRBRepTheCSFunctionOfInterCSurf): Lin {.noSideEffect,
    importcpp: "AuxillarCurve", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
