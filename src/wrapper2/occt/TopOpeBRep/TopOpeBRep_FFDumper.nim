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

import
  ../Standard/Standard, ../Standard/Standard_Type, TopOpeBRep_PFacesFiller,
  ../TopoDS/TopoDS_Face, ../TopTools/TopTools_DataMapOfShapeInteger,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient,
  ../TopOpeBRepDS/TopOpeBRepDS_Kind, ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_FFDumper"
discard "forward decl of TopOpeBRep_FFDumper"
type
  Handle_TopOpeBRep_FFDumper* = handle[TopOpeBRep_FFDumper]
  TopOpeBRep_FFDumper* {.importcpp: "TopOpeBRep_FFDumper",
                        header: "TopOpeBRep_FFDumper.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRep_FFDumper*(PFF: TopOpeBRep_PFacesFiller): TopOpeBRep_FFDumper {.
    constructor, importcpp: "TopOpeBRep_FFDumper(@)",
    header: "TopOpeBRep_FFDumper.hxx".}
proc Init*(this: var TopOpeBRep_FFDumper; PFF: TopOpeBRep_PFacesFiller) {.
    importcpp: "Init", header: "TopOpeBRep_FFDumper.hxx".}
proc DumpLine*(this: var TopOpeBRep_FFDumper; I: Standard_Integer) {.
    importcpp: "DumpLine", header: "TopOpeBRep_FFDumper.hxx".}
proc DumpLine*(this: var TopOpeBRep_FFDumper; L: TopOpeBRep_LineInter) {.
    importcpp: "DumpLine", header: "TopOpeBRep_FFDumper.hxx".}
proc DumpVP*(this: var TopOpeBRep_FFDumper; VP: TopOpeBRep_VPointInter) {.
    importcpp: "DumpVP", header: "TopOpeBRep_FFDumper.hxx".}
proc DumpVP*(this: var TopOpeBRep_FFDumper; VP: TopOpeBRep_VPointInter;
            ISI: Standard_Integer) {.importcpp: "DumpVP",
                                   header: "TopOpeBRep_FFDumper.hxx".}
proc ExploreIndex*(this: TopOpeBRep_FFDumper; S: TopoDS_Shape; ISI: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ExploreIndex", header: "TopOpeBRep_FFDumper.hxx".}
proc DumpDSP*(this: TopOpeBRep_FFDumper; VP: TopOpeBRep_VPointInter;
             GK: TopOpeBRepDS_Kind; G: Standard_Integer; newinDS: Standard_Boolean) {.
    noSideEffect, importcpp: "DumpDSP", header: "TopOpeBRep_FFDumper.hxx".}
proc PFacesFillerDummy*(this: TopOpeBRep_FFDumper): TopOpeBRep_PFacesFiller {.
    noSideEffect, importcpp: "PFacesFillerDummy", header: "TopOpeBRep_FFDumper.hxx".}
type
  TopOpeBRep_FFDumperbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRep_FFDumper::get_type_name(@)",
                              header: "TopOpeBRep_FFDumper.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRep_FFDumper::get_type_descriptor(@)",
    header: "TopOpeBRep_FFDumper.hxx".}
proc DynamicType*(this: TopOpeBRep_FFDumper): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRep_FFDumper.hxx".}