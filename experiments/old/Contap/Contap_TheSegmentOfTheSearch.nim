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

## !!!Ignored construct:  # _Contap_TheSegmentOfTheSearch_HeaderFile [NewLine] # _Contap_TheSegmentOfTheSearch_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Contap_ThePathPointOfTheSearch . hxx > [NewLine] class Adaptor2d_HCurve2d ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Contap_ThePathPointOfTheSearch"
type
  ContapTheSegmentOfTheSearch* {.importcpp: "Contap_TheSegmentOfTheSearch",
                                header: "Contap_TheSegmentOfTheSearch.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor.
    adaptor2dHCurve2d* {.importc: "Adaptor2d_HCurve2d".}: Handle


proc constructContapTheSegmentOfTheSearch*(): ContapTheSegmentOfTheSearch {.
    constructor, importcpp: "Contap_TheSegmentOfTheSearch(@)",
    header: "Contap_TheSegmentOfTheSearch.hxx".}
## !!!Ignored construct:  ! Defines the concerned arc. void SetValue ( const Handle ( Adaptor2d_HCurve2d ) & A ) ;
## Error: token expected: ) but got: &!!!

proc setLimitPoint*(this: var ContapTheSegmentOfTheSearch;
                   v: ContapThePathPointOfTheSearch; first: bool) {.
    importcpp: "SetLimitPoint", header: "Contap_TheSegmentOfTheSearch.hxx".}
## !!!Ignored construct:  & Curve ( ) const ;
## Error: identifier expected, but got: &!!!

proc hasFirstPoint*(this: ContapTheSegmentOfTheSearch): bool {.noSideEffect,
    importcpp: "HasFirstPoint", header: "Contap_TheSegmentOfTheSearch.hxx".}
proc firstPoint*(this: ContapTheSegmentOfTheSearch): ContapThePathPointOfTheSearch {.
    noSideEffect, importcpp: "FirstPoint",
    header: "Contap_TheSegmentOfTheSearch.hxx".}
proc hasLastPoint*(this: ContapTheSegmentOfTheSearch): bool {.noSideEffect,
    importcpp: "HasLastPoint", header: "Contap_TheSegmentOfTheSearch.hxx".}
proc lastPoint*(this: ContapTheSegmentOfTheSearch): ContapThePathPointOfTheSearch {.
    noSideEffect, importcpp: "LastPoint",
    header: "Contap_TheSegmentOfTheSearch.hxx".}
## !!!Ignored construct:  arc ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  # TheVertex Handle ( Adaptor3d_HVertex ) [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc Handle ( Adaptor2d_HCurve2d ) [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # ThePathPoint Contap_ThePathPointOfTheSearch [NewLine] # ThePathPoint_hxx < Contap_ThePathPointOfTheSearch . hxx > [NewLine] # IntStart_Segment Contap_TheSegmentOfTheSearch [NewLine] # IntStart_Segment_hxx < Contap_TheSegmentOfTheSearch . hxx > [NewLine] # < IntStart_Segment . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # ThePathPoint [NewLine] # ThePathPoint_hxx [NewLine] # IntStart_Segment [NewLine] # IntStart_Segment_hxx [NewLine] #  _Contap_TheSegmentOfTheSearch_HeaderFile
## Error: did not expect <!!!














































