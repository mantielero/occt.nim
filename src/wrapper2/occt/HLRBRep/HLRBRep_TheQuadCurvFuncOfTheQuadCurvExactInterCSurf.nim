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
  ../Standard/Standard_Handle, ../IntSurf/IntSurf_Quadric, ../gp/gp_Lin,
  ../math/math_FunctionWithDerivative, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of IntSurf_Quadric"
discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
type
  HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf* {.
      importcpp: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf",
      header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx", bycopy.} = object of math_FunctionWithDerivative ##
                                                                                                                   ## !
                                                                                                                   ## Create
                                                                                                                   ## the
                                                                                                                   ## function.


proc constructHLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf*(
    Q: IntSurf_Quadric; C: gp_Lin): HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf {.
    constructor,
    importcpp: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf(@)",
    header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx".}
proc Value*(this: var HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf;
           Param: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value",
    header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx".}
proc Derivative*(this: var HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf;
                Param: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative",
    header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx".}
proc Values*(this: var HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf;
            Param: Standard_Real; F: var Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Values",
    header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx".}