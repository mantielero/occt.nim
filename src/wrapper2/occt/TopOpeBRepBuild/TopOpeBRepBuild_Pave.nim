##  Created on: 1994-11-14
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TopOpeBRepDS/TopOpeBRepDS_Kind, TopOpeBRepBuild_Loop

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_Pave"
discard "forward decl of TopOpeBRepBuild_Pave"
type
  Handle_TopOpeBRepBuild_Pave* = handle[TopOpeBRepBuild_Pave]
  TopOpeBRepBuild_Pave* {.importcpp: "TopOpeBRepBuild_Pave",
                         header: "TopOpeBRepBuild_Pave.hxx", bycopy.} = object of TopOpeBRepBuild_Loop ##
                                                                                                ## !
                                                                                                ## V
                                                                                                ## =
                                                                                                ## vertex,
                                                                                                ## P
                                                                                                ## =
                                                                                                ## parameter
                                                                                                ## of
                                                                                                ## vertex
                                                                                                ## <V>
                                                                                                ##
                                                                                                ## !
                                                                                                ## bound
                                                                                                ## =
                                                                                                ## True
                                                                                                ## if
                                                                                                ## <V>
                                                                                                ## is
                                                                                                ## an
                                                                                                ## old
                                                                                                ## vertex
                                                                                                ##
                                                                                                ## !
                                                                                                ## bound
                                                                                                ## =
                                                                                                ## False
                                                                                                ## if
                                                                                                ## <V>
                                                                                                ## is
                                                                                                ## a
                                                                                                ## new
                                                                                                ## vertex


proc constructTopOpeBRepBuild_Pave*(V: TopoDS_Shape; P: Standard_Real;
                                   bound: Standard_Boolean): TopOpeBRepBuild_Pave {.
    constructor, importcpp: "TopOpeBRepBuild_Pave(@)",
    header: "TopOpeBRepBuild_Pave.hxx".}
proc HasSameDomain*(this: var TopOpeBRepBuild_Pave; b: Standard_Boolean) {.
    importcpp: "HasSameDomain", header: "TopOpeBRepBuild_Pave.hxx".}
proc SameDomain*(this: var TopOpeBRepBuild_Pave; VSD: TopoDS_Shape) {.
    importcpp: "SameDomain", header: "TopOpeBRepBuild_Pave.hxx".}
proc HasSameDomain*(this: TopOpeBRepBuild_Pave): Standard_Boolean {.noSideEffect,
    importcpp: "HasSameDomain", header: "TopOpeBRepBuild_Pave.hxx".}
proc SameDomain*(this: TopOpeBRepBuild_Pave): TopoDS_Shape {.noSideEffect,
    importcpp: "SameDomain", header: "TopOpeBRepBuild_Pave.hxx".}
proc Vertex*(this: TopOpeBRepBuild_Pave): TopoDS_Shape {.noSideEffect,
    importcpp: "Vertex", header: "TopOpeBRepBuild_Pave.hxx".}
proc ChangeVertex*(this: var TopOpeBRepBuild_Pave): var TopoDS_Shape {.
    importcpp: "ChangeVertex", header: "TopOpeBRepBuild_Pave.hxx".}
proc Parameter*(this: TopOpeBRepBuild_Pave): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRepBuild_Pave.hxx".}
proc Parameter*(this: var TopOpeBRepBuild_Pave; Par: Standard_Real) {.
    importcpp: "Parameter", header: "TopOpeBRepBuild_Pave.hxx".}
proc InterferenceType*(this: var TopOpeBRepBuild_Pave): var TopOpeBRepDS_Kind {.
    importcpp: "InterferenceType", header: "TopOpeBRepBuild_Pave.hxx".}
proc IsShape*(this: TopOpeBRepBuild_Pave): Standard_Boolean {.noSideEffect,
    importcpp: "IsShape", header: "TopOpeBRepBuild_Pave.hxx".}
proc Shape*(this: TopOpeBRepBuild_Pave): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopOpeBRepBuild_Pave.hxx".}
proc Dump*(this: TopOpeBRepBuild_Pave) {.noSideEffect, importcpp: "Dump",
                                      header: "TopOpeBRepBuild_Pave.hxx".}
type
  TopOpeBRepBuild_Pavebase_type* = TopOpeBRepBuild_Loop

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepBuild_Pave::get_type_name(@)",
                              header: "TopOpeBRepBuild_Pave.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepBuild_Pave::get_type_descriptor(@)",
    header: "TopOpeBRepBuild_Pave.hxx".}
proc DynamicType*(this: TopOpeBRepBuild_Pave): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRepBuild_Pave.hxx".}