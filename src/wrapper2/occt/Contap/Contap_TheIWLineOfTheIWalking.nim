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

## !!!Ignored construct:  # _Contap_TheIWLineOfTheIWalking_HeaderFile [NewLine] # _Contap_TheIWLineOfTheIWalking_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ../IntSurf/IntSurf_SequenceOfCouple.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../IntSurf/IntSurf_PathPoint.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../Standard/Standard_Transient.hxx [NewLine] # ../IntSurf/IntSurf_Allocator.hxx [NewLine] class IntSurf_LineOn2S ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntSurf_PathPoint"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Vec"
discard "forward decl of Contap_TheIWLineOfTheIWalking"
discard "forward decl of Contap_TheIWLineOfTheIWalking"
type
  Handle_Contap_TheIWLineOfTheIWalkingContap_TheIWLineOfTheIWalking* = handle[
      Contap_TheIWLineOfTheIWalking]
  Contap_TheIWLineOfTheIWalking* {.importcpp: "Contap_TheIWLineOfTheIWalking",
                                  header: "Contap_TheIWLineOfTheIWalking.hxx",
                                  bycopy.} = object of Standard_Transient


proc constructContap_TheIWLineOfTheIWalking*(theAllocator: IntSurf_Allocator = 0): Contap_TheIWLineOfTheIWalking {.
    constructor, importcpp: "Contap_TheIWLineOfTheIWalking(@)",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc Reverse*(this: var Contap_TheIWLineOfTheIWalking) {.importcpp: "Reverse",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc Cut*(this: var Contap_TheIWLineOfTheIWalking; Index: Standard_Integer) {.
    importcpp: "Cut", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc AddPoint*(this: var Contap_TheIWLineOfTheIWalking; P: IntSurf_PntOn2S) {.
    importcpp: "AddPoint", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc AddStatusFirst*(this: var Contap_TheIWLineOfTheIWalking;
                    Closed: Standard_Boolean; HasFirst: Standard_Boolean) {.
    importcpp: "AddStatusFirst", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc AddStatusFirst*(this: var Contap_TheIWLineOfTheIWalking;
                    Closed: Standard_Boolean; HasLast: Standard_Boolean;
                    Index: Standard_Integer; P: IntSurf_PathPoint) {.
    importcpp: "AddStatusFirst", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc AddStatusFirstLast*(this: var Contap_TheIWLineOfTheIWalking;
                        Closed: Standard_Boolean; HasFirst: Standard_Boolean;
                        HasLast: Standard_Boolean) {.
    importcpp: "AddStatusFirstLast", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc AddStatusLast*(this: var Contap_TheIWLineOfTheIWalking;
                   HasLast: Standard_Boolean) {.importcpp: "AddStatusLast",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc AddStatusLast*(this: var Contap_TheIWLineOfTheIWalking;
                   HasLast: Standard_Boolean; Index: Standard_Integer;
                   P: IntSurf_PathPoint) {.importcpp: "AddStatusLast",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc AddIndexPassing*(this: var Contap_TheIWLineOfTheIWalking;
                     Index: Standard_Integer) {.importcpp: "AddIndexPassing",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc SetTangentVector*(this: var Contap_TheIWLineOfTheIWalking; V: gp_Vec;
                      Index: Standard_Integer) {.importcpp: "SetTangentVector",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc SetTangencyAtBegining*(this: var Contap_TheIWLineOfTheIWalking;
                           IsTangent: Standard_Boolean) {.
    importcpp: "SetTangencyAtBegining",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc SetTangencyAtEnd*(this: var Contap_TheIWLineOfTheIWalking;
                      IsTangent: Standard_Boolean) {.
    importcpp: "SetTangencyAtEnd", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc NbPoints*(this: Contap_TheIWLineOfTheIWalking): Standard_Integer {.
    noSideEffect, importcpp: "NbPoints",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc Value*(this: Contap_TheIWLineOfTheIWalking; Index: Standard_Integer): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Value", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc Line*(this: Contap_TheIWLineOfTheIWalking): handle[IntSurf_LineOn2S] {.
    noSideEffect, importcpp: "Line", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc IsClosed*(this: Contap_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "IsClosed",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc HasFirstPoint*(this: Contap_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstPoint",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc HasLastPoint*(this: Contap_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastPoint",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc FirstPoint*(this: Contap_TheIWLineOfTheIWalking): IntSurf_PathPoint {.
    noSideEffect, importcpp: "FirstPoint",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc FirstPointIndex*(this: Contap_TheIWLineOfTheIWalking): Standard_Integer {.
    noSideEffect, importcpp: "FirstPointIndex",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc LastPoint*(this: Contap_TheIWLineOfTheIWalking): IntSurf_PathPoint {.
    noSideEffect, importcpp: "LastPoint",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc LastPointIndex*(this: Contap_TheIWLineOfTheIWalking): Standard_Integer {.
    noSideEffect, importcpp: "LastPointIndex",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc NbPassingPoint*(this: Contap_TheIWLineOfTheIWalking): Standard_Integer {.
    noSideEffect, importcpp: "NbPassingPoint",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc PassingPoint*(this: Contap_TheIWLineOfTheIWalking; Index: Standard_Integer;
                  IndexLine: var Standard_Integer; IndexPnts: var Standard_Integer) {.
    noSideEffect, importcpp: "PassingPoint",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc TangentVector*(this: Contap_TheIWLineOfTheIWalking;
                   Index: var Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "TangentVector", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc IsTangentAtBegining*(this: Contap_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangentAtBegining",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc IsTangentAtEnd*(this: Contap_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangentAtEnd",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
type
  Contap_TheIWLineOfTheIWalkingbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Contap_TheIWLineOfTheIWalking::get_type_name(@)",
                              header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Contap_TheIWLineOfTheIWalking::get_type_descriptor(@)",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc DynamicType*(this: Contap_TheIWLineOfTheIWalking): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
## !!!Ignored construct:  # TheStartPoint IntSurf_PathPoint [NewLine] # TheStartPoint_hxx < IntSurf_PathPoint . hxx > [NewLine] # IntWalk_IWLine Contap_TheIWLineOfTheIWalking [NewLine] # IntWalk_IWLine_hxx < Contap_TheIWLineOfTheIWalking . hxx > [NewLine] # Handle_IntWalk_IWLine opencascade :: handle < Contap_TheIWLineOfTheIWalking > [end of template] [NewLine] # < IntWalk_IWLine . lxx > [NewLine] # TheStartPoint [NewLine] # TheStartPoint_hxx [NewLine] # IntWalk_IWLine [NewLine] # IntWalk_IWLine_hxx [NewLine] # Handle_IntWalk_IWLine [NewLine] #  _Contap_TheIWLineOfTheIWalking_HeaderFile [NewLine]
## Error: did not expect <!!!
