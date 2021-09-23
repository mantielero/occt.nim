##  Created on: 1996-07-24
##  Created by: Herve LOUESSARD
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_OStream

discard "forward decl of LocalAnalysis_SurfaceContinuity"
discard "forward decl of LocalAnalysis_CurveContinuity"
discard "forward decl of LocalAnalysis_SurfaceContinuity"
discard "forward decl of LocalAnalysis_CurveContinuity"
type
  LocalAnalysis* {.importcpp: "LocalAnalysis", header: "LocalAnalysis.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## This
                                                                                      ## class
                                                                                      ## compute
                                                                                      ##
                                                                                      ## !
                                                                                      ## s
                                                                                      ## and
                                                                                      ## gives
                                                                                      ## tools
                                                                                      ## to
                                                                                      ## check
                                                                                      ## the
                                                                                      ## local
                                                                                      ##
                                                                                      ## !
                                                                                      ## continuity
                                                                                      ## between
                                                                                      ## two
                                                                                      ## points
                                                                                      ## situated
                                                                                      ## on
                                                                                      ## 2
                                                                                      ## curves)
                                                                                      ##
                                                                                      ## !
                                                                                      ##
                                                                                      ## !
                                                                                      ## This
                                                                                      ## fonction
                                                                                      ## gives
                                                                                      ## informations
                                                                                      ## about
                                                                                      ## a
                                                                                      ## variable
                                                                                      ## CurveContinuity


proc Dump*(surfconti: LocalAnalysis_SurfaceContinuity; o: var Standard_OStream) {.
    importcpp: "LocalAnalysis::Dump(@)", header: "LocalAnalysis.hxx".}
proc Dump*(curvconti: LocalAnalysis_CurveContinuity; o: var Standard_OStream) {.
    importcpp: "LocalAnalysis::Dump(@)", header: "LocalAnalysis.hxx".}