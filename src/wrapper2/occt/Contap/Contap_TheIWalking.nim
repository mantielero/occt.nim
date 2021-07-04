##  Created on: 1993-02-05
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _Contap_TheIWalking_HeaderFile [NewLine] # _Contap_TheIWalking_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../IntSurf/IntSurf_SequenceOfPathPoint.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] # ../IntWalk/IntWalk_VectorOfWalkingData.hxx [NewLine] # ../IntWalk/IntWalk_VectorOfInteger.hxx [NewLine] # ../IntSurf/IntSurf_PntOn2S.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] # ../TColStd/TColStd_SequenceOfInteger.hxx [NewLine] # ../TColStd/TColStd_DataMapOfIntegerListOfInteger.hxx [NewLine] # Contap_SequenceOfIWLineOfTheIWalking.hxx [NewLine] # ../IntSurf/IntSurf_SequenceOfInteriorPoint.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColStd/TColStd_SequenceOfReal.hxx [NewLine] # ../IntWalk/IntWalk_StatusDeflection.hxx [NewLine] # ../Bnd/Bnd_Range.hxx [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntSurf_PathPoint"
discard "forward decl of IntSurf_PathPointTool"
discard "forward decl of IntSurf_InteriorPoint"
discard "forward decl of IntSurf_InteriorPointTool"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of Contap_SurfFunction"
discard "forward decl of Contap_TheIWLineOfTheIWalking"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of math_FunctionSetRoot"
type
  Contap_TheIWalking* {.importcpp: "Contap_TheIWalking",
                       header: "Contap_TheIWalking.hxx", bycopy.} = object ## ! Deflection is the maximum deflection admitted between two
                                                                      ## !
                                                                      ## consecutive points on a resulting polyline.
                                                                      ## ! Step is the maximum increment admitted between two
                                                                      ## !
                                                                      ## consecutive points (in 2d space).
                                                                      ## ! Epsilon is the tolerance beyond which 2 points
                                                                      ## ! are confused.
                                                                      ## !
                                                                      ## theToFillHoles is the flag defining whether possible holes
                                                                      ## ! between resulting curves are filled or not
                                                                      ## ! in case of Contap walking
                                                                      ## theToFillHoles is True
    ##  Estimated U-range for section curve
    ##  Estimated V-range for section curve


proc constructContap_TheIWalking*(Epsilon: Standard_Real;
                                 Deflection: Standard_Real; Step: Standard_Real;
    theToFillHoles: Standard_Boolean = Standard_False): Contap_TheIWalking {.
    constructor, importcpp: "Contap_TheIWalking(@)",
    header: "Contap_TheIWalking.hxx".}
proc SetTolerance*(this: var Contap_TheIWalking; Epsilon: Standard_Real;
                  Deflection: Standard_Real; Step: Standard_Real) {.
    importcpp: "SetTolerance", header: "Contap_TheIWalking.hxx".}
proc Perform*(this: var Contap_TheIWalking; Pnts1: IntSurf_SequenceOfPathPoint;
             Pnts2: IntSurf_SequenceOfInteriorPoint;
             Func: var Contap_SurfFunction; S: handle[Adaptor3d_HSurface];
             Reversed: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "Contap_TheIWalking.hxx".}
proc Perform*(this: var Contap_TheIWalking; Pnts1: IntSurf_SequenceOfPathPoint;
             Func: var Contap_SurfFunction; S: handle[Adaptor3d_HSurface];
             Reversed: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "Contap_TheIWalking.hxx".}
proc IsDone*(this: Contap_TheIWalking): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Contap_TheIWalking.hxx".}
proc NbLines*(this: Contap_TheIWalking): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "Contap_TheIWalking.hxx".}
proc Value*(this: Contap_TheIWalking; Index: Standard_Integer): handle[
    Contap_TheIWLineOfTheIWalking] {.noSideEffect, importcpp: "Value",
                                    header: "Contap_TheIWalking.hxx".}
proc NbSinglePnts*(this: Contap_TheIWalking): Standard_Integer {.noSideEffect,
    importcpp: "NbSinglePnts", header: "Contap_TheIWalking.hxx".}
proc SinglePnt*(this: Contap_TheIWalking; Index: Standard_Integer): IntSurf_PathPoint {.
    noSideEffect, importcpp: "SinglePnt", header: "Contap_TheIWalking.hxx".}
## !!!Ignored construct:  # ThePointOfPath IntSurf_PathPoint [NewLine] # ThePointOfPath_hxx < IntSurf_PathPoint . hxx > [NewLine] # ThePointOfPathTool IntSurf_PathPointTool [NewLine] # ThePointOfPathTool_hxx < IntSurf_PathPointTool . hxx > [NewLine] # ThePOPIterator IntSurf_SequenceOfPathPoint [NewLine] # ThePOPIterator_hxx < IntSurf_SequenceOfPathPoint . hxx > [NewLine] # ThePointOfLoop IntSurf_InteriorPoint [NewLine] # ThePointOfLoop_hxx < IntSurf_InteriorPoint . hxx > [NewLine] # ThePointOfLoopTool IntSurf_InteriorPointTool [NewLine] # ThePointOfLoopTool_hxx < IntSurf_InteriorPointTool . hxx > [NewLine] # ThePOLIterator IntSurf_SequenceOfInteriorPoint [NewLine] # ThePOLIterator_hxx < IntSurf_SequenceOfInteriorPoint . hxx > [NewLine] # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheIWFunction Contap_SurfFunction [NewLine] # TheIWFunction_hxx < Contap_SurfFunction . hxx > [NewLine] # IntWalk_TheIWLine Contap_TheIWLineOfTheIWalking [NewLine] # IntWalk_TheIWLine_hxx < Contap_TheIWLineOfTheIWalking . hxx > [NewLine] # IntWalk_SequenceOfIWLine Contap_SequenceOfIWLineOfTheIWalking [NewLine] # IntWalk_SequenceOfIWLine_hxx < Contap_SequenceOfIWLineOfTheIWalking . hxx > [NewLine] # Handle_IntWalk_TheIWLine opencascade :: handle < Contap_TheIWLineOfTheIWalking > [end of template] [NewLine] # IntWalk_IWalking Contap_TheIWalking [NewLine] # IntWalk_IWalking_hxx < Contap_TheIWalking . hxx > [NewLine] # < IntWalk_IWalking . lxx > [NewLine] # ThePointOfPath [NewLine] # ThePointOfPath_hxx [NewLine] # ThePointOfPathTool [NewLine] # ThePointOfPathTool_hxx [NewLine] # ThePOPIterator [NewLine] # ThePOPIterator_hxx [NewLine] # ThePointOfLoop [NewLine] # ThePointOfLoop_hxx [NewLine] # ThePointOfLoopTool [NewLine] # ThePointOfLoopTool_hxx [NewLine] # ThePOLIterator [NewLine] # ThePOLIterator_hxx [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # TheIWFunction [NewLine] # TheIWFunction_hxx [NewLine] # IntWalk_TheIWLine [NewLine] # IntWalk_TheIWLine_hxx [NewLine] # IntWalk_SequenceOfIWLine [NewLine] # IntWalk_SequenceOfIWLine_hxx [NewLine] # Handle_IntWalk_TheIWLine [NewLine] # IntWalk_IWalking [NewLine] # IntWalk_IWalking_hxx [NewLine] #  _Contap_TheIWalking_HeaderFile [NewLine]
## Error: did not expect <!!!
