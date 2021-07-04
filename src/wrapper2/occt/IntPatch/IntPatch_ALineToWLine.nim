##  Created on: 1993-11-26
##  Created by: Modelistation
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

import
  IntPatch_SequenceOfLine, ../IntSurf/IntSurf_Quadric,
  ../Standard/Standard_DefineAlloc, ../Standard/Standard_Handle,
  ../Standard/Standard_Macro

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntPatch_ALine"
discard "forward decl of IntSurf_PntOn2S"
type
  IntPatch_ALineToWLine* {.importcpp: "IntPatch_ALineToWLine",
                          header: "IntPatch_ALineToWLine.hxx", bycopy.} = object ## !
                                                                            ## Constructor
                                                                            ## !
                                                                            ## Computes step
                                                                            ## value to
                                                                            ## construct
                                                                            ## point-line. The step
                                                                            ## depends on
                                                                            ## ! the
                                                                            ## local
                                                                            ## curvature of the
                                                                            ## intersection line
                                                                            ## computed in
                                                                            ## thePOn2S.
                                                                            ## !
                                                                            ## theTgMagnitude is the
                                                                            ## magnitude of
                                                                            ## tangent
                                                                            ## vector to the
                                                                            ## intersection
                                                                            ## ! line (in the
                                                                            ## point
                                                                            ## thePOn2S).
                                                                            ## !
                                                                            ## Computed step is
                                                                            ## always in the
                                                                            ## range
                                                                            ## [theStepMin,
                                                                            ## theStepMax].
                                                                            ## !
                                                                            ## Returns
                                                                            ## FALSE if the step
                                                                            ## cannot be
                                                                            ## computed. In this
                                                                            ## case, its
                                                                            ## value
                                                                            ## ! will not be
                                                                            ## changed.
    ## ! Approximate number of points in resulting
    ## ! WLine (precise number of points is computed
    ## ! by the algorithms)


proc constructIntPatch_ALineToWLine*(theS1: handle[Adaptor3d_HSurface];
                                    theS2: handle[Adaptor3d_HSurface];
                                    theNbPoints: Standard_Integer = 200): IntPatch_ALineToWLine {.
    constructor, importcpp: "IntPatch_ALineToWLine(@)",
    header: "IntPatch_ALineToWLine.hxx".}
proc SetTolOpenDomain*(this: var IntPatch_ALineToWLine; aT: Standard_Real) {.
    importcpp: "SetTolOpenDomain", header: "IntPatch_ALineToWLine.hxx".}
proc TolOpenDomain*(this: IntPatch_ALineToWLine): Standard_Real {.noSideEffect,
    importcpp: "TolOpenDomain", header: "IntPatch_ALineToWLine.hxx".}
proc SetTolTransition*(this: var IntPatch_ALineToWLine; aT: Standard_Real) {.
    importcpp: "SetTolTransition", header: "IntPatch_ALineToWLine.hxx".}
proc TolTransition*(this: IntPatch_ALineToWLine): Standard_Real {.noSideEffect,
    importcpp: "TolTransition", header: "IntPatch_ALineToWLine.hxx".}
proc SetTol3D*(this: var IntPatch_ALineToWLine; aT: Standard_Real) {.
    importcpp: "SetTol3D", header: "IntPatch_ALineToWLine.hxx".}
proc Tol3D*(this: IntPatch_ALineToWLine): Standard_Real {.noSideEffect,
    importcpp: "Tol3D", header: "IntPatch_ALineToWLine.hxx".}
proc MakeWLine*(this: IntPatch_ALineToWLine; aline: handle[IntPatch_ALine];
               theLines: var IntPatch_SequenceOfLine) {.noSideEffect,
    importcpp: "MakeWLine", header: "IntPatch_ALineToWLine.hxx".}
proc MakeWLine*(this: IntPatch_ALineToWLine; aline: handle[IntPatch_ALine];
               paraminf: Standard_Real; paramsup: Standard_Real;
               theLines: var IntPatch_SequenceOfLine) {.noSideEffect,
    importcpp: "MakeWLine", header: "IntPatch_ALineToWLine.hxx".}