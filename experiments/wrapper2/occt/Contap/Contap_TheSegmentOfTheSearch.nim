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

## !!!Ignored construct:  # _Contap_TheSegmentOfTheSearch_HeaderFile [NewLine] # _Contap_TheSegmentOfTheSearch_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # Contap_ThePathPointOfTheSearch.hxx [NewLine] class Adaptor2d_HCurve2d ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Contap_ThePathPointOfTheSearch"
type
  Contap_TheSegmentOfTheSearch* {.importcpp: "Contap_TheSegmentOfTheSearch",
                                 header: "Contap_TheSegmentOfTheSearch.hxx",
                                 bycopy.} = object ## ! Empty constructor.


proc constructContap_TheSegmentOfTheSearch*(): Contap_TheSegmentOfTheSearch {.
    constructor, importcpp: "Contap_TheSegmentOfTheSearch(@)",
    header: "Contap_TheSegmentOfTheSearch.hxx".}
proc SetValue*(this: var Contap_TheSegmentOfTheSearch; A: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "SetValue", header: "Contap_TheSegmentOfTheSearch.hxx".}
proc SetLimitPoint*(this: var Contap_TheSegmentOfTheSearch;
                   V: Contap_ThePathPointOfTheSearch; First: Standard_Boolean) {.
    importcpp: "SetLimitPoint", header: "Contap_TheSegmentOfTheSearch.hxx".}
proc Curve*(this: Contap_TheSegmentOfTheSearch): handle[Adaptor2d_HCurve2d] {.
    noSideEffect, importcpp: "Curve", header: "Contap_TheSegmentOfTheSearch.hxx".}
proc HasFirstPoint*(this: Contap_TheSegmentOfTheSearch): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstPoint",
    header: "Contap_TheSegmentOfTheSearch.hxx".}
proc FirstPoint*(this: Contap_TheSegmentOfTheSearch): Contap_ThePathPointOfTheSearch {.
    noSideEffect, importcpp: "FirstPoint",
    header: "Contap_TheSegmentOfTheSearch.hxx".}
proc HasLastPoint*(this: Contap_TheSegmentOfTheSearch): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastPoint",
    header: "Contap_TheSegmentOfTheSearch.hxx".}
proc LastPoint*(this: Contap_TheSegmentOfTheSearch): Contap_ThePathPointOfTheSearch {.
    noSideEffect, importcpp: "LastPoint",
    header: "Contap_TheSegmentOfTheSearch.hxx".}
## !!!Ignored construct:  # TheVertex opencascade :: handle < Adaptor3d_HVertex > [end of template] [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc opencascade :: handle < Adaptor2d_HCurve2d > [end of template] [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # ThePathPoint Contap_ThePathPointOfTheSearch [NewLine] # ThePathPoint_hxx < Contap_ThePathPointOfTheSearch . hxx > [NewLine] # IntStart_Segment Contap_TheSegmentOfTheSearch [NewLine] # IntStart_Segment_hxx < Contap_TheSegmentOfTheSearch . hxx > [NewLine] # < IntStart_Segment . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # ThePathPoint [NewLine] # ThePathPoint_hxx [NewLine] # IntStart_Segment [NewLine] # IntStart_Segment_hxx [NewLine] #  _Contap_TheSegmentOfTheSearch_HeaderFile [NewLine]
## Error: did not expect <!!!
