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


proc `new`*(this: var TopOpeBRepBuildBlockBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_BlockBuilder::operator new",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildBlockBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_BlockBuilder::operator delete",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildBlockBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_BlockBuilder::operator new[]",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildBlockBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_BlockBuilder::operator delete[]",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc `new`*(this: var TopOpeBRepBuildBlockBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_BlockBuilder::operator new",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildBlockBuilder; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_BlockBuilder::operator delete",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
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
proc moreBlock*(this: TopOpeBRepBuildBlockBuilder): StandardBoolean {.noSideEffect,
    importcpp: "MoreBlock", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc nextBlock*(this: var TopOpeBRepBuildBlockBuilder) {.importcpp: "NextBlock",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc blockIterator*(this: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildBlockIterator {.
    noSideEffect, importcpp: "BlockIterator",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc element*(this: TopOpeBRepBuildBlockBuilder; bi: TopOpeBRepBuildBlockIterator): TopoDS_Shape {.
    noSideEffect, importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc element*(this: TopOpeBRepBuildBlockBuilder; i: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc element*(this: TopOpeBRepBuildBlockBuilder; s: TopoDS_Shape): int {.noSideEffect,
    importcpp: "Element", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc elementIsValid*(this: TopOpeBRepBuildBlockBuilder;
                    bi: TopOpeBRepBuildBlockIterator): StandardBoolean {.
    noSideEffect, importcpp: "ElementIsValid",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc elementIsValid*(this: TopOpeBRepBuildBlockBuilder; i: int): StandardBoolean {.
    noSideEffect, importcpp: "ElementIsValid",
    header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc addElement*(this: var TopOpeBRepBuildBlockBuilder; s: TopoDS_Shape): int {.
    importcpp: "AddElement", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc setValid*(this: var TopOpeBRepBuildBlockBuilder;
              bi: TopOpeBRepBuildBlockIterator; isvalid: StandardBoolean) {.
    importcpp: "SetValid", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc setValid*(this: var TopOpeBRepBuildBlockBuilder; i: int; isvalid: StandardBoolean) {.
    importcpp: "SetValid", header: "TopOpeBRepBuild_BlockBuilder.hxx".}
proc currentBlockIsRegular*(this: var TopOpeBRepBuildBlockBuilder): StandardBoolean {.
    importcpp: "CurrentBlockIsRegular", header: "TopOpeBRepBuild_BlockBuilder.hxx".}