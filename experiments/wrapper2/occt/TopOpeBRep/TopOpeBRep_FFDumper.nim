##  Created on: 1996-10-23
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_FFDumper"
discard "forward decl of TopOpeBRep_FFDumper"
type
  HandleC1C1* = Handle[TopOpeBRepFFDumper]
  TopOpeBRepFFDumper* {.importcpp: "TopOpeBRep_FFDumper",
                       header: "TopOpeBRep_FFDumper.hxx", bycopy.} = object of StandardTransient


proc constructTopOpeBRepFFDumper*(pff: TopOpeBRepPFacesFiller): TopOpeBRepFFDumper {.
    constructor, importcpp: "TopOpeBRep_FFDumper(@)",
    header: "TopOpeBRep_FFDumper.hxx".}
proc init*(this: var TopOpeBRepFFDumper; pff: TopOpeBRepPFacesFiller) {.
    importcpp: "Init", header: "TopOpeBRep_FFDumper.hxx".}
proc dumpLine*(this: var TopOpeBRepFFDumper; i: cint) {.importcpp: "DumpLine",
    header: "TopOpeBRep_FFDumper.hxx".}
proc dumpLine*(this: var TopOpeBRepFFDumper; L: TopOpeBRepLineInter) {.
    importcpp: "DumpLine", header: "TopOpeBRep_FFDumper.hxx".}
proc dumpVP*(this: var TopOpeBRepFFDumper; vp: TopOpeBRepVPointInter) {.
    importcpp: "DumpVP", header: "TopOpeBRep_FFDumper.hxx".}
proc dumpVP*(this: var TopOpeBRepFFDumper; vp: TopOpeBRepVPointInter; isi: cint) {.
    importcpp: "DumpVP", header: "TopOpeBRep_FFDumper.hxx".}
proc exploreIndex*(this: TopOpeBRepFFDumper; s: TopoDS_Shape; isi: cint): cint {.
    noSideEffect, importcpp: "ExploreIndex", header: "TopOpeBRep_FFDumper.hxx".}
proc dumpDSP*(this: TopOpeBRepFFDumper; vp: TopOpeBRepVPointInter;
             gk: TopOpeBRepDS_Kind; g: cint; newinDS: bool) {.noSideEffect,
    importcpp: "DumpDSP", header: "TopOpeBRep_FFDumper.hxx".}
proc pFacesFillerDummy*(this: TopOpeBRepFFDumper): TopOpeBRepPFacesFiller {.
    noSideEffect, importcpp: "PFacesFillerDummy", header: "TopOpeBRep_FFDumper.hxx".}
type
  TopOpeBRepFFDumperbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRep_FFDumper::get_type_name(@)",
                            header: "TopOpeBRep_FFDumper.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRep_FFDumper::get_type_descriptor(@)",
    header: "TopOpeBRep_FFDumper.hxx".}
proc dynamicType*(this: TopOpeBRepFFDumper): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRep_FFDumper.hxx".}

























