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

## !!!Ignored construct:  # _IntPatch_TheSegmentOfTheSOnBounds_HeaderFile [NewLine] # _IntPatch_TheSegmentOfTheSOnBounds_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # IntPatch_ThePathPointOfTheSOnBounds.hxx [NewLine] class Adaptor2d_HCurve2d ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of IntPatch_ThePathPointOfTheSOnBounds"
type
  IntPatch_TheSegmentOfTheSOnBounds* {.importcpp: "IntPatch_TheSegmentOfTheSOnBounds", header: "IntPatch_TheSegmentOfTheSOnBounds.hxx",
                                      bycopy.} = object ## ! Empty constructor.


proc constructIntPatch_TheSegmentOfTheSOnBounds*(): IntPatch_TheSegmentOfTheSOnBounds {.
    constructor, importcpp: "IntPatch_TheSegmentOfTheSOnBounds(@)",
    header: "IntPatch_TheSegmentOfTheSOnBounds.hxx".}
proc SetValue*(this: var IntPatch_TheSegmentOfTheSOnBounds;
              A: handle[Adaptor2d_HCurve2d]) {.importcpp: "SetValue",
    header: "IntPatch_TheSegmentOfTheSOnBounds.hxx".}
proc SetLimitPoint*(this: var IntPatch_TheSegmentOfTheSOnBounds;
                   V: IntPatch_ThePathPointOfTheSOnBounds; First: Standard_Boolean) {.
    importcpp: "SetLimitPoint", header: "IntPatch_TheSegmentOfTheSOnBounds.hxx".}
proc Curve*(this: IntPatch_TheSegmentOfTheSOnBounds): handle[Adaptor2d_HCurve2d] {.
    noSideEffect, importcpp: "Curve",
    header: "IntPatch_TheSegmentOfTheSOnBounds.hxx".}
proc HasFirstPoint*(this: IntPatch_TheSegmentOfTheSOnBounds): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstPoint",
    header: "IntPatch_TheSegmentOfTheSOnBounds.hxx".}
proc FirstPoint*(this: IntPatch_TheSegmentOfTheSOnBounds): IntPatch_ThePathPointOfTheSOnBounds {.
    noSideEffect, importcpp: "FirstPoint",
    header: "IntPatch_TheSegmentOfTheSOnBounds.hxx".}
proc HasLastPoint*(this: IntPatch_TheSegmentOfTheSOnBounds): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastPoint",
    header: "IntPatch_TheSegmentOfTheSOnBounds.hxx".}
proc LastPoint*(this: IntPatch_TheSegmentOfTheSOnBounds): IntPatch_ThePathPointOfTheSOnBounds {.
    noSideEffect, importcpp: "LastPoint",
    header: "IntPatch_TheSegmentOfTheSOnBounds.hxx".}
## !!!Ignored construct:  # TheVertex opencascade :: handle < Adaptor3d_HVertex > [end of template] [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc opencascade :: handle < Adaptor2d_HCurve2d > [end of template] [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # ThePathPoint IntPatch_ThePathPointOfTheSOnBounds [NewLine] # ThePathPoint_hxx < IntPatch_ThePathPointOfTheSOnBounds . hxx > [NewLine] # IntStart_Segment IntPatch_TheSegmentOfTheSOnBounds [NewLine] # IntStart_Segment_hxx < IntPatch_TheSegmentOfTheSOnBounds . hxx > [NewLine] # < IntStart_Segment . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # ThePathPoint [NewLine] # ThePathPoint_hxx [NewLine] # IntStart_Segment [NewLine] # IntStart_Segment_hxx [NewLine] #  _IntPatch_TheSegmentOfTheSOnBounds_HeaderFile [NewLine]
## Error: did not expect <!!!
