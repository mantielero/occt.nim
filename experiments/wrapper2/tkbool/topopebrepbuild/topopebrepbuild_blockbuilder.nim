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


proc newTopOpeBRepBuildBlockBuilder*(): TopOpeBRepBuildBlockBuilder {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_BlockBuilder(@)", dynlib: tkfillet.}
proc newTopOpeBRepBuildBlockBuilder*(ss: var TopOpeBRepBuildShapeSet): TopOpeBRepBuildBlockBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_BlockBuilder(@)",
    dynlib: tkfillet.}
proc makeBlock*(this: var TopOpeBRepBuildBlockBuilder;
               ss: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "MakeBlock",
    dynlib: tkfillet.}
proc initBlock*(this: var TopOpeBRepBuildBlockBuilder) {.cdecl,
    importcpp: "InitBlock", dynlib: tkfillet.}
proc moreBlock*(this: TopOpeBRepBuildBlockBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreBlock", dynlib: tkfillet.}
proc nextBlock*(this: var TopOpeBRepBuildBlockBuilder) {.cdecl,
    importcpp: "NextBlock", dynlib: tkfillet.}
proc blockIterator*(this: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildBlockIterator {.
    noSideEffect, cdecl, importcpp: "BlockIterator", dynlib: tkfillet.}
proc element*(this: TopOpeBRepBuildBlockBuilder; bi: TopOpeBRepBuildBlockIterator): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Element", dynlib: tkfillet.}
proc element*(this: TopOpeBRepBuildBlockBuilder; i: cint): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Element", dynlib: tkfillet.}
proc element*(this: TopOpeBRepBuildBlockBuilder; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "Element", dynlib: tkfillet.}
proc elementIsValid*(this: TopOpeBRepBuildBlockBuilder;
                    bi: TopOpeBRepBuildBlockIterator): bool {.noSideEffect, cdecl,
    importcpp: "ElementIsValid", dynlib: tkfillet.}
proc elementIsValid*(this: TopOpeBRepBuildBlockBuilder; i: cint): bool {.noSideEffect,
    cdecl, importcpp: "ElementIsValid", dynlib: tkfillet.}
proc addElement*(this: var TopOpeBRepBuildBlockBuilder; s: TopoDS_Shape): cint {.cdecl,
    importcpp: "AddElement", dynlib: tkfillet.}
proc setValid*(this: var TopOpeBRepBuildBlockBuilder;
              bi: TopOpeBRepBuildBlockIterator; isvalid: bool) {.cdecl,
    importcpp: "SetValid", dynlib: tkfillet.}
proc setValid*(this: var TopOpeBRepBuildBlockBuilder; i: cint; isvalid: bool) {.cdecl,
    importcpp: "SetValid", dynlib: tkfillet.}
proc currentBlockIsRegular*(this: var TopOpeBRepBuildBlockBuilder): bool {.cdecl,
    importcpp: "CurrentBlockIsRegular", dynlib: tkfillet.}