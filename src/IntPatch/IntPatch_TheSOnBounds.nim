##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _IntPatch_TheSOnBounds_HeaderFile [NewLine] # _IntPatch_TheSOnBounds_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < IntPatch_SequenceOfSegmentOfTheSOnBounds . hxx > [NewLine] # < IntPatch_SequenceOfPathPointOfTheSOnBounds . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of IntPatch_HCurve2dTool"
discard "forward decl of IntPatch_HInterTool"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_ArcFunction"
discard "forward decl of IntPatch_ThePathPointOfTheSOnBounds"
discard "forward decl of IntPatch_TheSegmentOfTheSOnBounds"
type
  IntPatchTheSOnBounds* {.importcpp: "IntPatch_TheSOnBounds",
                         header: "IntPatch_TheSOnBounds.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor.


proc constructIntPatchTheSOnBounds*(): IntPatchTheSOnBounds {.constructor,
    importcpp: "IntPatch_TheSOnBounds(@)", header: "IntPatch_TheSOnBounds.hxx".}
## !!!Ignored construct:  ! Algorithm to find the points and parts of curves of Domain
## ! (domain of of restriction of a surface) which verify
## ! F = 0.
## ! TolBoundary defines if a curve is on Q.
## ! TolTangency defines if a point is on Q. void Perform ( IntPatch_ArcFunction & F , const Handle ( Adaptor3d_TopolTool ) & Domain , const Standard_Real TolBoundary , const Standard_Real TolTangency , const Standard_Boolean RecheckOnRegularity = Standard_False ) ;
## Error: token expected: ) but got: &!!!

proc isDone*(this: IntPatchTheSOnBounds): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntPatch_TheSOnBounds.hxx".}
proc allArcSolution*(this: IntPatchTheSOnBounds): bool {.noSideEffect,
    importcpp: "AllArcSolution", header: "IntPatch_TheSOnBounds.hxx".}
proc nbPoints*(this: IntPatchTheSOnBounds): int {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_TheSOnBounds.hxx".}
proc point*(this: IntPatchTheSOnBounds; index: int): IntPatchThePathPointOfTheSOnBounds {.
    noSideEffect, importcpp: "Point", header: "IntPatch_TheSOnBounds.hxx".}
proc nbSegments*(this: IntPatchTheSOnBounds): int {.noSideEffect,
    importcpp: "NbSegments", header: "IntPatch_TheSOnBounds.hxx".}
proc segment*(this: IntPatchTheSOnBounds; index: int): IntPatchTheSegmentOfTheSOnBounds {.
    noSideEffect, importcpp: "Segment", header: "IntPatch_TheSOnBounds.hxx".}
## !!!Ignored construct:  # TheVertex Handle ( Adaptor3d_HVertex ) [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc Handle ( Adaptor2d_HCurve2d ) [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # TheArcTool IntPatch_HCurve2dTool [NewLine] # TheArcTool_hxx < IntPatch_HCurve2dTool . hxx > [NewLine] # TheSOBTool IntPatch_HInterTool [NewLine] # TheSOBTool_hxx < IntPatch_HInterTool . hxx > [NewLine] # Handle_TheTopolTool Handle ( Adaptor3d_TopolTool ) [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheFunction IntPatch_ArcFunction [NewLine] # TheFunction_hxx < IntPatch_ArcFunction . hxx > [NewLine] # IntStart_ThePathPoint IntPatch_ThePathPointOfTheSOnBounds [NewLine] # IntStart_ThePathPoint_hxx < IntPatch_ThePathPointOfTheSOnBounds . hxx > [NewLine] # IntStart_SequenceOfPathPoint IntPatch_SequenceOfPathPointOfTheSOnBounds [NewLine] # IntStart_SequenceOfPathPoint_hxx < IntPatch_SequenceOfPathPointOfTheSOnBounds . hxx > [NewLine] # IntStart_TheSegment IntPatch_TheSegmentOfTheSOnBounds [NewLine] # IntStart_TheSegment_hxx < IntPatch_TheSegmentOfTheSOnBounds . hxx > [NewLine] # IntStart_SequenceOfSegment IntPatch_SequenceOfSegmentOfTheSOnBounds [NewLine] # IntStart_SequenceOfSegment_hxx < IntPatch_SequenceOfSegmentOfTheSOnBounds . hxx > [NewLine] # IntStart_SearchOnBoundaries IntPatch_TheSOnBounds [NewLine] # IntStart_SearchOnBoundaries_hxx < IntPatch_TheSOnBounds . hxx > [NewLine] # < IntStart_SearchOnBoundaries . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # TheArcTool [NewLine] # TheArcTool_hxx [NewLine] # TheSOBTool [NewLine] # TheSOBTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheFunction [NewLine] # TheFunction_hxx [NewLine] # IntStart_ThePathPoint [NewLine] # IntStart_ThePathPoint_hxx [NewLine] # IntStart_SequenceOfPathPoint [NewLine] # IntStart_SequenceOfPathPoint_hxx [NewLine] # IntStart_TheSegment [NewLine] # IntStart_TheSegment_hxx [NewLine] # IntStart_SequenceOfSegment [NewLine] # IntStart_SequenceOfSegment_hxx [NewLine] # IntStart_SearchOnBoundaries [NewLine] # IntStart_SearchOnBoundaries_hxx [NewLine] #  _IntPatch_TheSOnBounds_HeaderFile
## Error: did not expect <!!!














































