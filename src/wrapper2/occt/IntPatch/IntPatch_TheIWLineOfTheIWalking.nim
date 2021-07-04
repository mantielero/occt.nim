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

## !!!Ignored construct:  # _IntPatch_TheIWLineOfTheIWalking_HeaderFile [NewLine] # _IntPatch_TheIWLineOfTheIWalking_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ../IntSurf/IntSurf_SequenceOfCouple.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../IntSurf/IntSurf_PathPoint.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../Standard/Standard_Transient.hxx [NewLine] # ../IntSurf/IntSurf_Allocator.hxx [NewLine] class IntSurf_LineOn2S ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntSurf_PathPoint"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Vec"
discard "forward decl of IntPatch_TheIWLineOfTheIWalking"
discard "forward decl of IntPatch_TheIWLineOfTheIWalking"
type
  Handle_IntPatch_TheIWLineOfTheIWalkingIntPatch_TheIWLineOfTheIWalking* = handle[
      IntPatch_TheIWLineOfTheIWalking]
  IntPatch_TheIWLineOfTheIWalking* {.importcpp: "IntPatch_TheIWLineOfTheIWalking", header: "IntPatch_TheIWLineOfTheIWalking.hxx",
                                    bycopy.} = object of Standard_Transient


proc constructIntPatch_TheIWLineOfTheIWalking*(
    theAllocator: IntSurf_Allocator = 0): IntPatch_TheIWLineOfTheIWalking {.
    constructor, importcpp: "IntPatch_TheIWLineOfTheIWalking(@)",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc Reverse*(this: var IntPatch_TheIWLineOfTheIWalking) {.importcpp: "Reverse",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc Cut*(this: var IntPatch_TheIWLineOfTheIWalking; Index: Standard_Integer) {.
    importcpp: "Cut", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc AddPoint*(this: var IntPatch_TheIWLineOfTheIWalking; P: IntSurf_PntOn2S) {.
    importcpp: "AddPoint", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc AddStatusFirst*(this: var IntPatch_TheIWLineOfTheIWalking;
                    Closed: Standard_Boolean; HasFirst: Standard_Boolean) {.
    importcpp: "AddStatusFirst", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc AddStatusFirst*(this: var IntPatch_TheIWLineOfTheIWalking;
                    Closed: Standard_Boolean; HasLast: Standard_Boolean;
                    Index: Standard_Integer; P: IntSurf_PathPoint) {.
    importcpp: "AddStatusFirst", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc AddStatusFirstLast*(this: var IntPatch_TheIWLineOfTheIWalking;
                        Closed: Standard_Boolean; HasFirst: Standard_Boolean;
                        HasLast: Standard_Boolean) {.
    importcpp: "AddStatusFirstLast", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc AddStatusLast*(this: var IntPatch_TheIWLineOfTheIWalking;
                   HasLast: Standard_Boolean) {.importcpp: "AddStatusLast",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc AddStatusLast*(this: var IntPatch_TheIWLineOfTheIWalking;
                   HasLast: Standard_Boolean; Index: Standard_Integer;
                   P: IntSurf_PathPoint) {.importcpp: "AddStatusLast",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc AddIndexPassing*(this: var IntPatch_TheIWLineOfTheIWalking;
                     Index: Standard_Integer) {.importcpp: "AddIndexPassing",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc SetTangentVector*(this: var IntPatch_TheIWLineOfTheIWalking; V: gp_Vec;
                      Index: Standard_Integer) {.importcpp: "SetTangentVector",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc SetTangencyAtBegining*(this: var IntPatch_TheIWLineOfTheIWalking;
                           IsTangent: Standard_Boolean) {.
    importcpp: "SetTangencyAtBegining",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc SetTangencyAtEnd*(this: var IntPatch_TheIWLineOfTheIWalking;
                      IsTangent: Standard_Boolean) {.
    importcpp: "SetTangencyAtEnd", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc NbPoints*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Integer {.
    noSideEffect, importcpp: "NbPoints",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc Value*(this: IntPatch_TheIWLineOfTheIWalking; Index: Standard_Integer): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Value", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc Line*(this: IntPatch_TheIWLineOfTheIWalking): handle[IntSurf_LineOn2S] {.
    noSideEffect, importcpp: "Line", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc IsClosed*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "IsClosed",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc HasFirstPoint*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc HasLastPoint*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc FirstPoint*(this: IntPatch_TheIWLineOfTheIWalking): IntSurf_PathPoint {.
    noSideEffect, importcpp: "FirstPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc FirstPointIndex*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Integer {.
    noSideEffect, importcpp: "FirstPointIndex",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc LastPoint*(this: IntPatch_TheIWLineOfTheIWalking): IntSurf_PathPoint {.
    noSideEffect, importcpp: "LastPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc LastPointIndex*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Integer {.
    noSideEffect, importcpp: "LastPointIndex",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc NbPassingPoint*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Integer {.
    noSideEffect, importcpp: "NbPassingPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc PassingPoint*(this: IntPatch_TheIWLineOfTheIWalking; Index: Standard_Integer;
                  IndexLine: var Standard_Integer; IndexPnts: var Standard_Integer) {.
    noSideEffect, importcpp: "PassingPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc TangentVector*(this: IntPatch_TheIWLineOfTheIWalking;
                   Index: var Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "TangentVector", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc IsTangentAtBegining*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangentAtBegining",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc IsTangentAtEnd*(this: IntPatch_TheIWLineOfTheIWalking): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangentAtEnd",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
type
  IntPatch_TheIWLineOfTheIWalkingbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IntPatch_TheIWLineOfTheIWalking::get_type_name(@)",
                              header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntPatch_TheIWLineOfTheIWalking::get_type_descriptor(@)",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc DynamicType*(this: IntPatch_TheIWLineOfTheIWalking): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
## !!!Ignored construct:  # TheStartPoint IntSurf_PathPoint [NewLine] # TheStartPoint_hxx < IntSurf_PathPoint . hxx > [NewLine] # IntWalk_IWLine IntPatch_TheIWLineOfTheIWalking [NewLine] # IntWalk_IWLine_hxx < IntPatch_TheIWLineOfTheIWalking . hxx > [NewLine] # Handle_IntWalk_IWLine opencascade :: handle < IntPatch_TheIWLineOfTheIWalking > [end of template] [NewLine] # < IntWalk_IWLine . lxx > [NewLine] # TheStartPoint [NewLine] # TheStartPoint_hxx [NewLine] # IntWalk_IWLine [NewLine] # IntWalk_IWLine_hxx [NewLine] # Handle_IntWalk_IWLine [NewLine] #  _IntPatch_TheIWLineOfTheIWalking_HeaderFile [NewLine]
## Error: did not expect <!!!
