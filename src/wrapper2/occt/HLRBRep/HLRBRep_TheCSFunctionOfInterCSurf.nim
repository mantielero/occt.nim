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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Address, ../gp/gp_Lin,
  ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../math/math_FunctionSetWithDerivatives, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  HLRBRep_TheCSFunctionOfInterCSurf* {.importcpp: "HLRBRep_TheCSFunctionOfInterCSurf", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx",
                                      bycopy.} = object of math_FunctionSetWithDerivatives


proc constructHLRBRep_TheCSFunctionOfInterCSurf*(S: Standard_Address; C: gp_Lin): HLRBRep_TheCSFunctionOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheCSFunctionOfInterCSurf(@)",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc NbVariables*(this: HLRBRep_TheCSFunctionOfInterCSurf): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc NbEquations*(this: HLRBRep_TheCSFunctionOfInterCSurf): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc Value*(this: var HLRBRep_TheCSFunctionOfInterCSurf; X: math_Vector;
           F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc Derivatives*(this: var HLRBRep_TheCSFunctionOfInterCSurf; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc Values*(this: var HLRBRep_TheCSFunctionOfInterCSurf; X: math_Vector;
            F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc Point*(this: HLRBRep_TheCSFunctionOfInterCSurf): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc Root*(this: HLRBRep_TheCSFunctionOfInterCSurf): Standard_Real {.noSideEffect,
    importcpp: "Root", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc AuxillarSurface*(this: HLRBRep_TheCSFunctionOfInterCSurf): Standard_Address {.
    noSideEffect, importcpp: "AuxillarSurface",
    header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}
proc AuxillarCurve*(this: HLRBRep_TheCSFunctionOfInterCSurf): gp_Lin {.noSideEffect,
    importcpp: "AuxillarCurve", header: "HLRBRep_TheCSFunctionOfInterCSurf.hxx".}