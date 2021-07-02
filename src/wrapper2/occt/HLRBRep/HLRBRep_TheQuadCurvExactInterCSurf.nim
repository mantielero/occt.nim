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
discard "forward decl of HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf"
type
  HLRBRepTheQuadCurvExactInterCSurf* {.importcpp: "HLRBRep_TheQuadCurvExactInterCSurf", header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx",
                                      bycopy.} = object ## ! Provides the signed distance function : Q(w)
                                                     ## ! and its first derivative dQ(w)/dw


proc constructHLRBRepTheQuadCurvExactInterCSurf*(s: StandardAddress; c: GpLin): HLRBRepTheQuadCurvExactInterCSurf {.
    constructor, importcpp: "HLRBRep_TheQuadCurvExactInterCSurf(@)",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc isDone*(this: HLRBRepTheQuadCurvExactInterCSurf): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc nbRoots*(this: HLRBRepTheQuadCurvExactInterCSurf): StandardInteger {.
    noSideEffect, importcpp: "NbRoots",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc root*(this: HLRBRepTheQuadCurvExactInterCSurf; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Root",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc nbIntervals*(this: HLRBRepTheQuadCurvExactInterCSurf): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals",
    header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}
proc intervals*(this: HLRBRepTheQuadCurvExactInterCSurf; index: StandardInteger;
               u1: var StandardReal; u2: var StandardReal) {.noSideEffect,
    importcpp: "Intervals", header: "HLRBRep_TheQuadCurvExactInterCSurf.hxx".}

