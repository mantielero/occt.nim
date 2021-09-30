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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_BlockIterator"
discard "forward decl of TopOpeBRepBuild_Loop"
discard "forward decl of TopOpeBRepBuild_Loop"
type
  HandleC1C1* = Handle[TopOpeBRepBuildLoop]

## ! a Loop is an existing shape (Shell,Wire) or a set
## ! of shapes (Faces,Edges) which are connex.
## ! a set of connex shape is represented by a BlockIterator

type
  TopOpeBRepBuildLoop* {.importcpp: "TopOpeBRepBuild_Loop",
                        header: "TopOpeBRepBuild_Loop.hxx", bycopy.} = object of StandardTransient


proc constructTopOpeBRepBuildLoop*(s: TopoDS_Shape): TopOpeBRepBuildLoop {.
    constructor, importcpp: "TopOpeBRepBuild_Loop(@)",
    header: "TopOpeBRepBuild_Loop.hxx".}
proc constructTopOpeBRepBuildLoop*(bi: TopOpeBRepBuildBlockIterator): TopOpeBRepBuildLoop {.
    constructor, importcpp: "TopOpeBRepBuild_Loop(@)",
    header: "TopOpeBRepBuild_Loop.hxx".}
proc isShape*(this: TopOpeBRepBuildLoop): StandardBoolean {.noSideEffect,
    importcpp: "IsShape", header: "TopOpeBRepBuild_Loop.hxx".}
proc shape*(this: TopOpeBRepBuildLoop): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopOpeBRepBuild_Loop.hxx".}
proc blockIterator*(this: TopOpeBRepBuildLoop): TopOpeBRepBuildBlockIterator {.
    noSideEffect, importcpp: "BlockIterator", header: "TopOpeBRepBuild_Loop.hxx".}
proc dump*(this: TopOpeBRepBuildLoop) {.noSideEffect, importcpp: "Dump",
                                     header: "TopOpeBRepBuild_Loop.hxx".}
type
  TopOpeBRepBuildLoopbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepBuild_Loop::get_type_name(@)",
                            header: "TopOpeBRepBuild_Loop.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepBuild_Loop::get_type_descriptor(@)",
    header: "TopOpeBRepBuild_Loop.hxx".}
proc dynamicType*(this: TopOpeBRepBuildLoop): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRepBuild_Loop.hxx".}