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

discard "forward decl of IntSurf_Quadric"
discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
type
  HLRBRepTheQuadCurvFuncOfTheQuadCurvExactInterCSurf* {.
      importcpp: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf",
      header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx", bycopy.} = object of MathFunctionWithDerivative ##
                                                                                                                  ## !
                                                                                                                  ## Create
                                                                                                                  ## the
                                                                                                                  ## function.


proc constructHLRBRepTheQuadCurvFuncOfTheQuadCurvExactInterCSurf*(
    q: IntSurfQuadric; c: Lin): HLRBRepTheQuadCurvFuncOfTheQuadCurvExactInterCSurf {.
    constructor,
    importcpp: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf(@)",
    header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx".}
proc value*(this: var HLRBRepTheQuadCurvFuncOfTheQuadCurvExactInterCSurf;
           param: float; f: var float): bool {.importcpp: "Value",
    header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx".}
proc derivative*(this: var HLRBRepTheQuadCurvFuncOfTheQuadCurvExactInterCSurf;
                param: float; d: var float): bool {.importcpp: "Derivative",
    header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx".}
proc values*(this: var HLRBRepTheQuadCurvFuncOfTheQuadCurvExactInterCSurf;
            param: float; f: var float; d: var float): bool {.importcpp: "Values",
    header: "HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx".}
