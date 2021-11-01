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
    constructor, importcpp: "TopOpeBRepBuild_BlockBuilder(@)", dynlib: tkbool.}
proc newTopOpeBRepBuildBlockBuilder*(ss: var TopOpeBRepBuildShapeSet): TopOpeBRepBuildBlockBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_BlockBuilder(@)", dynlib: tkbool.}
proc makeBlock*(this: var TopOpeBRepBuildBlockBuilder;
               ss: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "MakeBlock",
    dynlib: tkbool.}
proc initBlock*(this: var TopOpeBRepBuildBlockBuilder) {.cdecl,
    importcpp: "InitBlock", dynlib: tkbool.}
proc moreBlock*(this: TopOpeBRepBuildBlockBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreBlock", dynlib: tkbool.}
proc nextBlock*(this: var TopOpeBRepBuildBlockBuilder) {.cdecl,
    importcpp: "NextBlock", dynlib: tkbool.}
proc blockIterator*(this: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildBlockIterator {.
    noSideEffect, cdecl, importcpp: "BlockIterator", dynlib: tkbool.}
proc element*(this: TopOpeBRepBuildBlockBuilder; bi: TopOpeBRepBuildBlockIterator): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Element", dynlib: tkbool.}
proc element*(this: TopOpeBRepBuildBlockBuilder; i: cint): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Element", dynlib: tkbool.}
proc element*(this: TopOpeBRepBuildBlockBuilder; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "Element", dynlib: tkbool.}
proc elementIsValid*(this: TopOpeBRepBuildBlockBuilder;
                    bi: TopOpeBRepBuildBlockIterator): bool {.noSideEffect, cdecl,
    importcpp: "ElementIsValid", dynlib: tkbool.}
proc elementIsValid*(this: TopOpeBRepBuildBlockBuilder; i: cint): bool {.noSideEffect,
    cdecl, importcpp: "ElementIsValid", dynlib: tkbool.}
proc addElement*(this: var TopOpeBRepBuildBlockBuilder; s: TopoDS_Shape): cint {.cdecl,
    importcpp: "AddElement", dynlib: tkbool.}
proc setValid*(this: var TopOpeBRepBuildBlockBuilder;
              bi: TopOpeBRepBuildBlockIterator; isvalid: bool) {.cdecl,
    importcpp: "SetValid", dynlib: tkbool.}
proc setValid*(this: var TopOpeBRepBuildBlockBuilder; i: cint; isvalid: bool) {.cdecl,
    importcpp: "SetValid", dynlib: tkbool.}
proc currentBlockIsRegular*(this: var TopOpeBRepBuildBlockBuilder): bool {.cdecl,
    importcpp: "CurrentBlockIsRegular", dynlib: tkbool.}