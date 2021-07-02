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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntPatch_ALine"
discard "forward decl of IntSurf_PntOn2S"
type
  IntPatchALineToWLine* {.importcpp: "IntPatch_ALineToWLine",
                         header: "IntPatch_ALineToWLine.hxx", bycopy.} = object ## !
                                                                           ## Constructor
                                                                           ## !
                                                                           ## Computes step value to
                                                                           ## construct
                                                                           ## point-line. The step
                                                                           ## depends on
                                                                           ## ! the local
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
                                                                           ## ! line (in the point
                                                                           ## thePOn2S).
                                                                           ## !
                                                                           ## Computed step is
                                                                           ## always in the range
                                                                           ## [theStepMin,
                                                                           ## theStepMax].
                                                                           ## !
                                                                           ## Returns FALSE if the step
                                                                           ## cannot be
                                                                           ## computed. In this case, its value
                                                                           ## ! will not be
                                                                           ## changed.
    ## ! Approximate number of points in resulting
    ## ! WLine (precise number of points is computed
    ## ! by the algorithms)


proc constructIntPatchALineToWLine*(theS1: Handle[Adaptor3dHSurface];
                                   theS2: Handle[Adaptor3dHSurface];
                                   theNbPoints: StandardInteger = 200): IntPatchALineToWLine {.
    constructor, importcpp: "IntPatch_ALineToWLine(@)",
    header: "IntPatch_ALineToWLine.hxx".}
proc setTolOpenDomain*(this: var IntPatchALineToWLine; aT: StandardReal) {.
    importcpp: "SetTolOpenDomain", header: "IntPatch_ALineToWLine.hxx".}
proc tolOpenDomain*(this: IntPatchALineToWLine): StandardReal {.noSideEffect,
    importcpp: "TolOpenDomain", header: "IntPatch_ALineToWLine.hxx".}
proc setTolTransition*(this: var IntPatchALineToWLine; aT: StandardReal) {.
    importcpp: "SetTolTransition", header: "IntPatch_ALineToWLine.hxx".}
proc tolTransition*(this: IntPatchALineToWLine): StandardReal {.noSideEffect,
    importcpp: "TolTransition", header: "IntPatch_ALineToWLine.hxx".}
proc setTol3D*(this: var IntPatchALineToWLine; aT: StandardReal) {.
    importcpp: "SetTol3D", header: "IntPatch_ALineToWLine.hxx".}
proc tol3D*(this: IntPatchALineToWLine): StandardReal {.noSideEffect,
    importcpp: "Tol3D", header: "IntPatch_ALineToWLine.hxx".}
proc makeWLine*(this: IntPatchALineToWLine; aline: Handle[IntPatchALine];
               theLines: var IntPatchSequenceOfLine) {.noSideEffect,
    importcpp: "MakeWLine", header: "IntPatch_ALineToWLine.hxx".}
proc makeWLine*(this: IntPatchALineToWLine; aline: Handle[IntPatchALine];
               paraminf: StandardReal; paramsup: StandardReal;
               theLines: var IntPatchSequenceOfLine) {.noSideEffect,
    importcpp: "MakeWLine", header: "IntPatch_ALineToWLine.hxx".}

