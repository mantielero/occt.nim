##  Created on: 1993-06-17
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

discard "forward decl of TopOpeBRepBuild_BlockBuilder"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuildShellFaceClassifier* {.importcpp: "TopOpeBRepBuild_ShellFaceClassifier", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx",
                                       bycopy.} = object of TopOpeBRepBuildCompositeClassifier ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## classifier
                                                                                          ## in
                                                                                          ## 3D
                                                                                          ## space,
                                                                                          ## to
                                                                                          ## compare
                                                                                          ## :
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## face
                                                                                          ## with
                                                                                          ## a
                                                                                          ## set
                                                                                          ## of
                                                                                          ## faces
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## shell
                                                                                          ## with
                                                                                          ## a
                                                                                          ## set
                                                                                          ## of
                                                                                          ## faces
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## shell
                                                                                          ## with
                                                                                          ## a
                                                                                          ## shell


proc newTopOpeBRepBuildShellFaceClassifier*(bb: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildShellFaceClassifier {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_ShellFaceClassifier(@)",
    dynlib: tkbool.}
proc clear*(this: var TopOpeBRepBuildShellFaceClassifier) {.cdecl,
    importcpp: "Clear", dynlib: tkbool.}
proc compareShapes*(this: var TopOpeBRepBuildShellFaceClassifier; b1: TopoDS_Shape;
                   b2: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "CompareShapes", dynlib: tkbool.}
proc compareElementToShape*(this: var TopOpeBRepBuildShellFaceClassifier;
                           f: TopoDS_Shape; s: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "CompareElementToShape", dynlib: tkbool.}
proc resetShape*(this: var TopOpeBRepBuildShellFaceClassifier; s: TopoDS_Shape) {.
    cdecl, importcpp: "ResetShape", dynlib: tkbool.}
proc resetElement*(this: var TopOpeBRepBuildShellFaceClassifier; f: TopoDS_Shape) {.
    cdecl, importcpp: "ResetElement", dynlib: tkbool.}
proc compareElement*(this: var TopOpeBRepBuildShellFaceClassifier; f: TopoDS_Shape): bool {.
    cdecl, importcpp: "CompareElement", dynlib: tkbool.}
proc state*(this: var TopOpeBRepBuildShellFaceClassifier): TopAbsState {.cdecl,
    importcpp: "State", dynlib: tkbool.}