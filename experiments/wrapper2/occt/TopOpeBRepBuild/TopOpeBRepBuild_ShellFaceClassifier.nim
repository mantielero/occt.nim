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


proc constructTopOpeBRepBuildShellFaceClassifier*(bb: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildShellFaceClassifier {.
    constructor, importcpp: "TopOpeBRepBuild_ShellFaceClassifier(@)",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc clear*(this: var TopOpeBRepBuildShellFaceClassifier) {.importcpp: "Clear",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc compareShapes*(this: var TopOpeBRepBuildShellFaceClassifier; b1: TopoDS_Shape;
                   b2: TopoDS_Shape): TopAbsState {.importcpp: "CompareShapes",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc compareElementToShape*(this: var TopOpeBRepBuildShellFaceClassifier;
                           f: TopoDS_Shape; s: TopoDS_Shape): TopAbsState {.
    importcpp: "CompareElementToShape",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc resetShape*(this: var TopOpeBRepBuildShellFaceClassifier; s: TopoDS_Shape) {.
    importcpp: "ResetShape", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc resetElement*(this: var TopOpeBRepBuildShellFaceClassifier; f: TopoDS_Shape) {.
    importcpp: "ResetElement", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc compareElement*(this: var TopOpeBRepBuildShellFaceClassifier; f: TopoDS_Shape): bool {.
    importcpp: "CompareElement", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc state*(this: var TopOpeBRepBuildShellFaceClassifier): TopAbsState {.
    importcpp: "State", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}

























