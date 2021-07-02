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

## !!!Ignored construct:  # _IntPatch_TheIWLineOfTheIWalking_HeaderFile [NewLine] # _IntPatch_TheIWLineOfTheIWalking_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < IntSurf_SequenceOfCouple . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < IntSurf_PathPoint . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < IntSurf_Allocator . hxx > [NewLine] class IntSurf_LineOn2S ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntSurf_PathPoint"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Vec"
discard "forward decl of IntPatch_TheIWLineOfTheIWalking"
discard "forward decl of IntPatch_TheIWLineOfTheIWalking"
type
  HandleIntPatchTheIWLineOfTheIWalkingIntPatchTheIWLineOfTheIWalking* = Handle[
      IntPatchTheIWLineOfTheIWalking]
  IntPatchTheIWLineOfTheIWalking* {.importcpp: "IntPatch_TheIWLineOfTheIWalking", header: "IntPatch_TheIWLineOfTheIWalking.hxx",
                                   bycopy.} = object of StandardTransient


proc constructIntPatchTheIWLineOfTheIWalking*(theAllocator: IntSurfAllocator = 0): IntPatchTheIWLineOfTheIWalking {.
    constructor, importcpp: "IntPatch_TheIWLineOfTheIWalking(@)",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc reverse*(this: var IntPatchTheIWLineOfTheIWalking) {.importcpp: "Reverse",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc cut*(this: var IntPatchTheIWLineOfTheIWalking; index: StandardInteger) {.
    importcpp: "Cut", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc addPoint*(this: var IntPatchTheIWLineOfTheIWalking; p: IntSurfPntOn2S) {.
    importcpp: "AddPoint", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc addStatusFirst*(this: var IntPatchTheIWLineOfTheIWalking;
                    closed: StandardBoolean; hasFirst: StandardBoolean) {.
    importcpp: "AddStatusFirst", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc addStatusFirst*(this: var IntPatchTheIWLineOfTheIWalking;
                    closed: StandardBoolean; hasLast: StandardBoolean;
                    index: StandardInteger; p: IntSurfPathPoint) {.
    importcpp: "AddStatusFirst", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc addStatusFirstLast*(this: var IntPatchTheIWLineOfTheIWalking;
                        closed: StandardBoolean; hasFirst: StandardBoolean;
                        hasLast: StandardBoolean) {.
    importcpp: "AddStatusFirstLast", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc addStatusLast*(this: var IntPatchTheIWLineOfTheIWalking;
                   hasLast: StandardBoolean) {.importcpp: "AddStatusLast",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc addStatusLast*(this: var IntPatchTheIWLineOfTheIWalking;
                   hasLast: StandardBoolean; index: StandardInteger;
                   p: IntSurfPathPoint) {.importcpp: "AddStatusLast", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc addIndexPassing*(this: var IntPatchTheIWLineOfTheIWalking;
                     index: StandardInteger) {.importcpp: "AddIndexPassing",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc setTangentVector*(this: var IntPatchTheIWLineOfTheIWalking; v: GpVec;
                      index: StandardInteger) {.importcpp: "SetTangentVector",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc setTangencyAtBegining*(this: var IntPatchTheIWLineOfTheIWalking;
                           isTangent: StandardBoolean) {.
    importcpp: "SetTangencyAtBegining",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc setTangencyAtEnd*(this: var IntPatchTheIWLineOfTheIWalking;
                      isTangent: StandardBoolean) {.importcpp: "SetTangencyAtEnd",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc nbPoints*(this: IntPatchTheIWLineOfTheIWalking): StandardInteger {.
    noSideEffect, importcpp: "NbPoints",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc value*(this: IntPatchTheIWLineOfTheIWalking; index: StandardInteger): IntSurfPntOn2S {.
    noSideEffect, importcpp: "Value", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc line*(this: IntPatchTheIWLineOfTheIWalking): Handle[IntSurfLineOn2S] {.
    noSideEffect, importcpp: "Line", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc isClosed*(this: IntPatchTheIWLineOfTheIWalking): StandardBoolean {.
    noSideEffect, importcpp: "IsClosed",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc hasFirstPoint*(this: IntPatchTheIWLineOfTheIWalking): StandardBoolean {.
    noSideEffect, importcpp: "HasFirstPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc hasLastPoint*(this: IntPatchTheIWLineOfTheIWalking): StandardBoolean {.
    noSideEffect, importcpp: "HasLastPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc firstPoint*(this: IntPatchTheIWLineOfTheIWalking): IntSurfPathPoint {.
    noSideEffect, importcpp: "FirstPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc firstPointIndex*(this: IntPatchTheIWLineOfTheIWalking): StandardInteger {.
    noSideEffect, importcpp: "FirstPointIndex",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc lastPoint*(this: IntPatchTheIWLineOfTheIWalking): IntSurfPathPoint {.
    noSideEffect, importcpp: "LastPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc lastPointIndex*(this: IntPatchTheIWLineOfTheIWalking): StandardInteger {.
    noSideEffect, importcpp: "LastPointIndex",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc nbPassingPoint*(this: IntPatchTheIWLineOfTheIWalking): StandardInteger {.
    noSideEffect, importcpp: "NbPassingPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc passingPoint*(this: IntPatchTheIWLineOfTheIWalking; index: StandardInteger;
                  indexLine: var StandardInteger; indexPnts: var StandardInteger) {.
    noSideEffect, importcpp: "PassingPoint",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc tangentVector*(this: IntPatchTheIWLineOfTheIWalking;
                   index: var StandardInteger): GpVec {.noSideEffect,
    importcpp: "TangentVector", header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc isTangentAtBegining*(this: IntPatchTheIWLineOfTheIWalking): StandardBoolean {.
    noSideEffect, importcpp: "IsTangentAtBegining",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc isTangentAtEnd*(this: IntPatchTheIWLineOfTheIWalking): StandardBoolean {.
    noSideEffect, importcpp: "IsTangentAtEnd",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
type
  IntPatchTheIWLineOfTheIWalkingbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IntPatch_TheIWLineOfTheIWalking::get_type_name(@)",
                            header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntPatch_TheIWLineOfTheIWalking::get_type_descriptor(@)",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
proc dynamicType*(this: IntPatchTheIWLineOfTheIWalking): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IntPatch_TheIWLineOfTheIWalking.hxx".}
## !!!Ignored construct:  # TheStartPoint IntSurf_PathPoint [NewLine] # TheStartPoint_hxx < IntSurf_PathPoint . hxx > [NewLine] # IntWalk_IWLine IntPatch_TheIWLineOfTheIWalking [NewLine] # IntWalk_IWLine_hxx < IntPatch_TheIWLineOfTheIWalking . hxx > [NewLine] # Handle_IntWalk_IWLine opencascade :: handle < IntPatch_TheIWLineOfTheIWalking > [end of template] [NewLine] # < IntWalk_IWLine . lxx > [NewLine] # TheStartPoint [NewLine] # TheStartPoint_hxx [NewLine] # IntWalk_IWLine [NewLine] # IntWalk_IWLine_hxx [NewLine] # Handle_IntWalk_IWLine [NewLine] #  _IntPatch_TheIWLineOfTheIWalking_HeaderFile
## Error: did not expect <!!!


