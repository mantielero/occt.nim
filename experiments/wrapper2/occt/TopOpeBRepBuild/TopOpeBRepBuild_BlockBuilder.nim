##  Created on: 1993-02-25
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepBuild_ShapeSet"
discard "forward decl of TopOpeBRepBuild_BlockIterator"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuildBlockBuilder* {.importcpp: "TopOpeBRepBuild_BlockBuilder",
                                header: "TopOpeBRepBuild_BlockBuilder.hxx", bycopy.} = object


proc constructTopOpeBRepBuildBlockBuilder*(): TopOpeBRepBuildBlockBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_BlockBuilder(@)",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc constructTopOpeBRepBuildBlockBuilder*(ss: var TopOpeBRepBuildShapeSet): TopOpeBRepBuildBlockBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_BlockBuilder(@)",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc makeBlock*(this: var TopOpeBRepBuildBlockBuilder;
               ss: var TopOpeBRepBuildShapeSet) {.importcpp: "MakeBlock",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc initBlock*(this: var TopOpeBRepBuildBlockBuilder) {.importcpp: "InitBlock",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc moreBlock*(this: TopOpeBRepBuildBlockBuilder): bool {.noSideEffect,
    importcpp: "MoreBlock", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc nextBlock*(this: var TopOpeBRepBuildBlockBuilder) {.importcpp: "NextBlock",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc blockIterator*(this: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildBlockIterator {.
    noSideEffect, importcpp: "BlockIterator",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc element*(this: TopOpeBRepBuildBlockBuilder; bi: TopOpeBRepBuildBlockIterator): TopoDS_Shape {.
    noSideEffect, importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc element*(this: TopOpeBRepBuildBlockBuilder; i: cint): TopoDS_Shape {.
    noSideEffect, importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc element*(this: TopOpeBRepBuildBlockBuilder; s: TopoDS_Shape): cint {.
    noSideEffect, importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc elementIsValid*(this: TopOpeBRepBuildBlockBuilder;
                    bi: TopOpeBRepBuildBlockIterator): bool {.noSideEffect,
    importcpp: "ElementIsValid", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc elementIsValid*(this: TopOpeBRepBuildBlockBuilder; i: cint): bool {.noSideEffect,
    importcpp: "ElementIsValid", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc addElement*(this: var TopOpeBRepBuildBlockBuilder; s: TopoDS_Shape): cint {.
    importcpp: "AddElement", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc setValid*(this: var TopOpeBRepBuildBlockBuilder;
              bi: TopOpeBRepBuildBlockIterator; isvalid: bool) {.
    importcpp: "SetValid", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc setValid*(this: var TopOpeBRepBuildBlockBuilder; i: cint; isvalid: bool) {.
    importcpp: "SetValid", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc currentBlockIsRegular*(this: var TopOpeBRepBuildBlockBuilder): bool {.
    importcpp: "CurrentBlockIsRegular", header: "TopOpeBRepBuild_BlockBuilder.hxx".}

























