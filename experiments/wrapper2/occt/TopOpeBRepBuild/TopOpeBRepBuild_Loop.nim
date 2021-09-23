##  Created on: 1995-12-19
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Shape, TopOpeBRepBuild_BlockIterator,
  ../Standard/Standard_Transient

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_BlockIterator"
discard "forward decl of TopOpeBRepBuild_Loop"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  Handle_TopOpeBRepBuild_Loop* = handle[TopOpeBRepBuild_Loop]

## ! a Loop is an existing shape (Shell,Wire) or a set
## ! of shapes (Faces,Edges) which are connex.
## ! a set of connex shape is represented by a BlockIterator

type
  TopOpeBRepBuild_Loop* {.importcpp: "TopOpeBRepBuild_Loop",
                         header: "TopOpeBRepBuild_Loop.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepBuild_Loop*(S: TopoDS_Shape): TopOpeBRepBuild_Loop {.
    constructor, importcpp: "TopOpeBRepBuild_Loop(@)",
    header: "TopOpeBRepBuild_Loop.hxx".}
proc constructTopOpeBRepBuild_Loop*(BI: TopOpeBRepBuild_BlockIterator): TopOpeBRepBuild_Loop {.
    constructor, importcpp: "TopOpeBRepBuild_Loop(@)",
    header: "TopOpeBRepBuild_Loop.hxx".}
proc IsShape*(this: TopOpeBRepBuild_Loop): Standard_Boolean {.noSideEffect,
    importcpp: "IsShape", header: "TopOpeBRepBuild_Loop.hxx".}
proc Shape*(this: TopOpeBRepBuild_Loop): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopOpeBRepBuild_Loop.hxx".}
proc BlockIterator*(this: TopOpeBRepBuild_Loop): TopOpeBRepBuild_BlockIterator {.
    noSideEffect, importcpp: "BlockIterator", header: "TopOpeBRepBuild_Loop.hxx".}
proc Dump*(this: TopOpeBRepBuild_Loop) {.noSideEffect, importcpp: "Dump",
                                      header: "TopOpeBRepBuild_Loop.hxx".}
type
  TopOpeBRepBuild_Loopbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepBuild_Loop::get_type_name(@)",
                              header: "TopOpeBRepBuild_Loop.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepBuild_Loop::get_type_descriptor(@)",
    header: "TopOpeBRepBuild_Loop.hxx".}
proc DynamicType*(this: TopOpeBRepBuild_Loop): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRepBuild_Loop.hxx".}