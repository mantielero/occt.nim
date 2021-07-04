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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_SequenceOfReal, ../Standard/Standard_Address,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf"
type
  HLRBRep_TheQuadCurvExactInterCSurf* {.importcpp: "HLRBRep_TheQuadCurvExactInterCSurf", header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx",
                                       bycopy.} = object ## ! Provides the signed distance function : Q(w)
                                                      ## ! and its first derivative dQ(w)/dw


proc constructHLRBRep_TheQuadCurvExactInterCSurf*(S: Standard_Address; C: gp_Lin): HLRBRep_TheQuadCurvExactInterCSurf {.
    constructor, importcpp: "HLRBRep_TheQuadCurvExactInterCSurf(@)",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc IsDone*(this: HLRBRep_TheQuadCurvExactInterCSurf): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc NbRoots*(this: HLRBRep_TheQuadCurvExactInterCSurf): Standard_Integer {.
    noSideEffect, importcpp: "NbRoots",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc Root*(this: HLRBRep_TheQuadCurvExactInterCSurf; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Root",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc NbIntervals*(this: HLRBRep_TheQuadCurvExactInterCSurf): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc Intervals*(this: HLRBRep_TheQuadCurvExactInterCSurf; Index: Standard_Integer;
               U1: var Standard_Real; U2: var Standard_Real) {.noSideEffect,
    importcpp: "Intervals", header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}