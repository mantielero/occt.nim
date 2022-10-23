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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of IntSurf_LineOn2S"
type
  HandleIntSurfLineOn2S* = Handle[IntSurfLineOn2S]
  IntSurfLineOn2S* {.importcpp: "IntSurf_LineOn2S", header: "IntSurf_LineOn2S.hxx",
                    bycopy.} = object of StandardTransient


proc newIntSurfLineOn2S*(theAllocator: IntSurfAllocator = cast[IntSurfAllocator](0)): IntSurfLineOn2S {.cdecl,
    constructor, importcpp: "IntSurf_LineOn2S(@)", header: "IntSurf_LineOn2S.hxx".}
proc add*(this: var IntSurfLineOn2S; p: IntSurfPntOn2S) {.cdecl, importcpp: "Add",
    header: "IntSurf_LineOn2S.hxx".}
proc nbPoints*(this: IntSurfLineOn2S): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints", header: "IntSurf_LineOn2S.hxx".}
proc value*(this: IntSurfLineOn2S; index: cint): IntSurfPntOn2S {.noSideEffect, cdecl,
    importcpp: "Value", header: "IntSurf_LineOn2S.hxx".}
proc reverse*(this: var IntSurfLineOn2S) {.cdecl, importcpp: "Reverse",
                                       header: "IntSurf_LineOn2S.hxx".}
proc split*(this: var IntSurfLineOn2S; index: cint): Handle[IntSurfLineOn2S] {.cdecl,
    importcpp: "Split", header: "IntSurf_LineOn2S.hxx".}
proc value*(this: var IntSurfLineOn2S; index: cint; p: IntSurfPntOn2S) {.cdecl,
    importcpp: "Value", header: "IntSurf_LineOn2S.hxx".}
proc setUV*(this: var IntSurfLineOn2S; index: cint; onFirst: bool; u: cfloat; v: cfloat) {.
    cdecl, importcpp: "SetUV", header: "IntSurf_LineOn2S.hxx".}
proc clear*(this: var IntSurfLineOn2S) {.cdecl, importcpp: "Clear", header: "IntSurf_LineOn2S.hxx".}
proc insertBefore*(this: var IntSurfLineOn2S; i: cint; p: IntSurfPntOn2S) {.cdecl,
    importcpp: "InsertBefore", header: "IntSurf_LineOn2S.hxx".}
proc removePoint*(this: var IntSurfLineOn2S; i: cint) {.cdecl,
    importcpp: "RemovePoint", header: "IntSurf_LineOn2S.hxx".}
proc isOutSurf1Box*(this: var IntSurfLineOn2S; theP: Pnt2dObj): bool {.cdecl,
    importcpp: "IsOutSurf1Box", header: "IntSurf_LineOn2S.hxx".}
proc isOutSurf2Box*(this: var IntSurfLineOn2S; theP: Pnt2dObj): bool {.cdecl,
    importcpp: "IsOutSurf2Box", header: "IntSurf_LineOn2S.hxx".}
proc isOutBox*(this: var IntSurfLineOn2S; theP: PntObj): bool {.cdecl,
    importcpp: "IsOutBox", header: "IntSurf_LineOn2S.hxx".}