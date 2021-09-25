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

## !!!Ignored construct:  # _Contap_TheIWLineOfTheIWalking_HeaderFile [NewLine] # _Contap_TheIWLineOfTheIWalking_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < IntSurf_SequenceOfCouple . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < IntSurf_PathPoint . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < IntSurf_Allocator . hxx > [NewLine] class IntSurf_LineOn2S ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntSurf_PathPoint"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Vec"
discard "forward decl of Contap_TheIWLineOfTheIWalking"
discard "forward decl of Contap_TheIWLineOfTheIWalking"
type
  HandleContapTheIWLineOfTheIWalkingContapTheIWLineOfTheIWalking* = Handle[
      ContapTheIWLineOfTheIWalking]
  ContapTheIWLineOfTheIWalking* {.importcpp: "Contap_TheIWLineOfTheIWalking",
                                 header: "Contap_TheIWLineOfTheIWalking.hxx",
                                 bycopy.} = object of StandardTransient


proc constructContapTheIWLineOfTheIWalking*(theAllocator: IntSurfAllocator = 0): ContapTheIWLineOfTheIWalking {.
    constructor, importcpp: "Contap_TheIWLineOfTheIWalking(@)",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc reverse*(this: var ContapTheIWLineOfTheIWalking) {.importcpp: "Reverse",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc cut*(this: var ContapTheIWLineOfTheIWalking; index: int) {.importcpp: "Cut",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc addPoint*(this: var ContapTheIWLineOfTheIWalking; p: IntSurfPntOn2S) {.
    importcpp: "AddPoint", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc addStatusFirst*(this: var ContapTheIWLineOfTheIWalking; closed: bool;
                    hasFirst: bool) {.importcpp: "AddStatusFirst",
                                    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc addStatusFirst*(this: var ContapTheIWLineOfTheIWalking; closed: bool;
                    hasLast: bool; index: int; p: IntSurfPathPoint) {.
    importcpp: "AddStatusFirst", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc addStatusFirstLast*(this: var ContapTheIWLineOfTheIWalking; closed: bool;
                        hasFirst: bool; hasLast: bool) {.
    importcpp: "AddStatusFirstLast", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc addStatusLast*(this: var ContapTheIWLineOfTheIWalking; hasLast: bool) {.
    importcpp: "AddStatusLast", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc addStatusLast*(this: var ContapTheIWLineOfTheIWalking; hasLast: bool; index: int;
                   p: IntSurfPathPoint) {.importcpp: "AddStatusLast", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc addIndexPassing*(this: var ContapTheIWLineOfTheIWalking; index: int) {.
    importcpp: "AddIndexPassing", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc setTangentVector*(this: var ContapTheIWLineOfTheIWalking; v: Vec; index: int) {.
    importcpp: "SetTangentVector", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc setTangencyAtBegining*(this: var ContapTheIWLineOfTheIWalking; isTangent: bool) {.
    importcpp: "SetTangencyAtBegining",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc setTangencyAtEnd*(this: var ContapTheIWLineOfTheIWalking; isTangent: bool) {.
    importcpp: "SetTangencyAtEnd", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc nbPoints*(this: ContapTheIWLineOfTheIWalking): int {.noSideEffect,
    importcpp: "NbPoints", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc value*(this: ContapTheIWLineOfTheIWalking; index: int): IntSurfPntOn2S {.
    noSideEffect, importcpp: "Value", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc line*(this: ContapTheIWLineOfTheIWalking): Handle[IntSurfLineOn2S] {.
    noSideEffect, importcpp: "Line", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc isClosed*(this: ContapTheIWLineOfTheIWalking): bool {.noSideEffect,
    importcpp: "IsClosed", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc hasFirstPoint*(this: ContapTheIWLineOfTheIWalking): bool {.noSideEffect,
    importcpp: "HasFirstPoint", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc hasLastPoint*(this: ContapTheIWLineOfTheIWalking): bool {.noSideEffect,
    importcpp: "HasLastPoint", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc firstPoint*(this: ContapTheIWLineOfTheIWalking): IntSurfPathPoint {.
    noSideEffect, importcpp: "FirstPoint",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc firstPointIndex*(this: ContapTheIWLineOfTheIWalking): int {.noSideEffect,
    importcpp: "FirstPointIndex", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc lastPoint*(this: ContapTheIWLineOfTheIWalking): IntSurfPathPoint {.
    noSideEffect, importcpp: "LastPoint",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc lastPointIndex*(this: ContapTheIWLineOfTheIWalking): int {.noSideEffect,
    importcpp: "LastPointIndex", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc nbPassingPoint*(this: ContapTheIWLineOfTheIWalking): int {.noSideEffect,
    importcpp: "NbPassingPoint", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc passingPoint*(this: ContapTheIWLineOfTheIWalking; index: int;
                  indexLine: var int; indexPnts: var int) {.noSideEffect,
    importcpp: "PassingPoint", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc tangentVector*(this: ContapTheIWLineOfTheIWalking; index: var int): Vec {.
    noSideEffect, importcpp: "TangentVector",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc isTangentAtBegining*(this: ContapTheIWLineOfTheIWalking): bool {.noSideEffect,
    importcpp: "IsTangentAtBegining", header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc isTangentAtEnd*(this: ContapTheIWLineOfTheIWalking): bool {.noSideEffect,
    importcpp: "IsTangentAtEnd", header: "Contap_TheIWLineOfTheIWalking.hxx".}
type
  ContapTheIWLineOfTheIWalkingbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Contap_TheIWLineOfTheIWalking::get_type_name(@)",
                            header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Contap_TheIWLineOfTheIWalking::get_type_descriptor(@)",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
proc dynamicType*(this: ContapTheIWLineOfTheIWalking): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Contap_TheIWLineOfTheIWalking.hxx".}
## !!!Ignored construct:  # TheStartPoint IntSurf_PathPoint [NewLine] # TheStartPoint_hxx < IntSurf_PathPoint . hxx > [NewLine] # IntWalk_IWLine Contap_TheIWLineOfTheIWalking [NewLine] # IntWalk_IWLine_hxx < Contap_TheIWLineOfTheIWalking . hxx > [NewLine] # Handle_IntWalk_IWLine opencascade :: handle < Contap_TheIWLineOfTheIWalking > [end of template] [NewLine] # < IntWalk_IWLine . lxx > [NewLine] # TheStartPoint [NewLine] # TheStartPoint_hxx [NewLine] # IntWalk_IWLine [NewLine] # IntWalk_IWLine_hxx [NewLine] # Handle_IntWalk_IWLine [NewLine] #  _Contap_TheIWLineOfTheIWalking_HeaderFile
## Error: did not expect <!!!

