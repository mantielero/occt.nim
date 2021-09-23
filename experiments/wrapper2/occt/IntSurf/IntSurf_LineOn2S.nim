##  Created on: 1993-02-22
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Bnd/Bnd_Box,
  ../Bnd/Bnd_Box2d, IntSurf_SequenceOfPntOn2S, ../Standard/Standard_Transient,
  IntSurf_Allocator, ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of IntSurf_LineOn2S"
type
  Handle_IntSurf_LineOn2S* = handle[IntSurf_LineOn2S]
  IntSurf_LineOn2S* {.importcpp: "IntSurf_LineOn2S",
                     header: "IntSurf_LineOn2S.hxx", bycopy.} = object of Standard_Transient


proc constructIntSurf_LineOn2S*(theAllocator: IntSurf_Allocator = 0): IntSurf_LineOn2S {.
    constructor, importcpp: "IntSurf_LineOn2S(@)", header: "IntSurf_LineOn2S.hxx".}
proc Add*(this: var IntSurf_LineOn2S; P: IntSurf_PntOn2S) {.importcpp: "Add",
    header: "IntSurf_LineOn2S.hxx".}
proc NbPoints*(this: IntSurf_LineOn2S): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntSurf_LineOn2S.hxx".}
proc Value*(this: IntSurf_LineOn2S; Index: Standard_Integer): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Value", header: "IntSurf_LineOn2S.hxx".}
proc Reverse*(this: var IntSurf_LineOn2S) {.importcpp: "Reverse",
                                        header: "IntSurf_LineOn2S.hxx".}
proc Split*(this: var IntSurf_LineOn2S; Index: Standard_Integer): handle[
    IntSurf_LineOn2S] {.importcpp: "Split", header: "IntSurf_LineOn2S.hxx".}
proc Value*(this: var IntSurf_LineOn2S; Index: Standard_Integer; P: IntSurf_PntOn2S) {.
    importcpp: "Value", header: "IntSurf_LineOn2S.hxx".}
proc SetUV*(this: var IntSurf_LineOn2S; Index: Standard_Integer;
           OnFirst: Standard_Boolean; U: Standard_Real; V: Standard_Real) {.
    importcpp: "SetUV", header: "IntSurf_LineOn2S.hxx".}
proc Clear*(this: var IntSurf_LineOn2S) {.importcpp: "Clear",
                                      header: "IntSurf_LineOn2S.hxx".}
proc InsertBefore*(this: var IntSurf_LineOn2S; I: Standard_Integer; P: IntSurf_PntOn2S) {.
    importcpp: "InsertBefore", header: "IntSurf_LineOn2S.hxx".}
proc RemovePoint*(this: var IntSurf_LineOn2S; I: Standard_Integer) {.
    importcpp: "RemovePoint", header: "IntSurf_LineOn2S.hxx".}
proc IsOutSurf1Box*(this: var IntSurf_LineOn2S; theP: gp_Pnt2d): Standard_Boolean {.
    importcpp: "IsOutSurf1Box", header: "IntSurf_LineOn2S.hxx".}
proc IsOutSurf2Box*(this: var IntSurf_LineOn2S; theP: gp_Pnt2d): Standard_Boolean {.
    importcpp: "IsOutSurf2Box", header: "IntSurf_LineOn2S.hxx".}
proc IsOutBox*(this: var IntSurf_LineOn2S; theP: gp_Pnt): Standard_Boolean {.
    importcpp: "IsOutBox", header: "IntSurf_LineOn2S.hxx".}
type
  IntSurf_LineOn2Sbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IntSurf_LineOn2S::get_type_name(@)",
                              header: "IntSurf_LineOn2S.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntSurf_LineOn2S::get_type_descriptor(@)",
    header: "IntSurf_LineOn2S.hxx".}
proc DynamicType*(this: IntSurf_LineOn2S): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntSurf_LineOn2S.hxx".}