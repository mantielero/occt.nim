## ! Created on: 2016-06-03
## ! Created by: NIKOLAI BUKHALOV
## ! Copyright (c) 2016 OPEN CASCADE SAS
## !
## ! This file is part of Open CASCADE Technology software library.
## !
## ! This library is free software; you can redistribute it and/or modify it under
## ! the terms of the GNU Lesser General Public License version 2.1 as published
## ! by the Free Software Foundation, with special exception defined in the file
## ! OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
## ! distribution for complete text of the license and disclaimer of any warranty.
## !
## ! Alternatively, this file may be used under the terms of Open CASCADE
## ! commercial license or contractual agreement.

## ! Contains methods to add some special points
## ! (such as apex of cone, pole of sphere,
## ! point on surface boundary etc.) in the intersection line.

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Vec"
discard "forward decl of gp_XYZ"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of math_Vector"
type
  IntPatchSpecialPoints* {.importcpp: "IntPatch_SpecialPoints",
                          header: "IntPatch_SpecialPoints.hxx", bycopy.} = object ## !
                                                                             ## Adds the
                                                                             ## point
                                                                             ## defined as
                                                                             ## intersection
                                                                             ## ! of two
                                                                             ## isolines (U = 0 and V = 0) on
                                                                             ## theQSurf in
                                                                             ## theLine.
                                                                             ## !
                                                                             ## theRefPt is
                                                                             ## used to
                                                                             ## correct
                                                                             ## adjusting
                                                                             ## parameters.
                                                                             ## ! If
                                                                             ## theIsReversed is
                                                                             ## TRUE
                                                                             ## then
                                                                             ## theQSurf
                                                                             ## correspond to the
                                                                             ## !
                                                                             ## second
                                                                             ## (otherwise, the
                                                                             ## first)
                                                                             ## surface
                                                                             ## while
                                                                             ## forming
                                                                             ## !
                                                                             ## intersection
                                                                             ## point
                                                                             ## IntSurf_PntOn2S.
                                                                             ## !
                                                                             ## Computes
                                                                             ## "special
                                                                             ## point" in the
                                                                             ## sphere
                                                                             ## ! The
                                                                             ## parameter
                                                                             ## will be
                                                                             ## found in the
                                                                             ## range [0,
                                                                             ## 2*PI].
                                                                             ## !
                                                                             ## Therefore it
                                                                             ## must be
                                                                             ## adjusted to
                                                                             ## valid
                                                                             ## range by
                                                                             ## ! the
                                                                             ## high-level
                                                                             ## algorithm


proc addCrossUVIsoPoint*(theQSurf: Handle[Adaptor3dHSurface];
                        thePSurf: Handle[Adaptor3dHSurface];
                        theRefPt: IntSurfPntOn2S; theTol3d: StandardReal;
                        theAddedPoint: var IntSurfPntOn2S;
                        theIsReversed: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "IntPatch_SpecialPoints::AddCrossUVIsoPoint(@)",
    header: "IntPatch_SpecialPoints.hxx".}
proc addPointOnUorVIso*(theQSurf: Handle[Adaptor3dHSurface];
                       thePSurf: Handle[Adaptor3dHSurface];
                       theRefPt: IntSurfPntOn2S; theIsU: StandardBoolean;
                       theIsoParameter: StandardReal; theToler: MathVector;
                       theInitPoint: MathVector; theInfBound: MathVector;
                       theSupBound: MathVector; theAddedPoint: var IntSurfPntOn2S;
                       theIsReversed: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "IntPatch_SpecialPoints::AddPointOnUorVIso(@)",
    header: "IntPatch_SpecialPoints.hxx".}
proc addSingularPole*(theQSurf: Handle[Adaptor3dHSurface];
                     thePSurf: Handle[Adaptor3dHSurface];
                     thePtIso: IntSurfPntOn2S; theVertex: var IntPatchPoint;
                     theAddedPoint: var IntSurfPntOn2S;
                     theIsReversed: StandardBoolean = standardFalse;
                     theIsReqRefCheck: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "IntPatch_SpecialPoints::AddSingularPole(@)",
    header: "IntPatch_SpecialPoints.hxx".}
proc continueAfterSpecialPoint*(theQSurf: Handle[Adaptor3dHSurface];
                               thePSurf: Handle[Adaptor3dHSurface];
                               theRefPt: IntSurfPntOn2S;
                               theSPType: IntPatchSpecPntType;
                               theTol2D: StandardReal;
                               theNewPoint: var IntSurfPntOn2S;
                               theIsReversed: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "IntPatch_SpecialPoints::ContinueAfterSpecialPoint(@)",
    header: "IntPatch_SpecialPoints.hxx".}
proc adjustPointAndVertex*(theRefPoint: IntSurfPntOn2S;
                          theArrPeriods: array[4, StandardReal];
                          theNewPoint: var IntSurfPntOn2S;
                          theVertex: ptr IntPatchPoint = 0) {.
    importcpp: "IntPatch_SpecialPoints::AdjustPointAndVertex(@)",
    header: "IntPatch_SpecialPoints.hxx".}

