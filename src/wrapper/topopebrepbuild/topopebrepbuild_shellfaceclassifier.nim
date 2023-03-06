import ../topabs/topabs_types
import ../topods/topods_types
import topopebrepbuild_types





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



proc newTopOpeBRepBuildShellFaceClassifier*(bb: TopOpeBRepBuildBlockBuilder): TopOpeBRepBuildShellFaceClassifier {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_ShellFaceClassifier(@)",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc clear*(this: var TopOpeBRepBuildShellFaceClassifier) {.cdecl,
    importcpp: "Clear", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc compareShapes*(this: var TopOpeBRepBuildShellFaceClassifier; b1: TopoDS_Shape;
                   b2: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "CompareShapes", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc compareElementToShape*(this: var TopOpeBRepBuildShellFaceClassifier;
                           f: TopoDS_Shape; s: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "CompareElementToShape", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc resetShape*(this: var TopOpeBRepBuildShellFaceClassifier; s: TopoDS_Shape) {.
    cdecl, importcpp: "ResetShape", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc resetElement*(this: var TopOpeBRepBuildShellFaceClassifier; f: TopoDS_Shape) {.
    cdecl, importcpp: "ResetElement", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc compareElement*(this: var TopOpeBRepBuildShellFaceClassifier; f: TopoDS_Shape): bool {.
    cdecl, importcpp: "CompareElement", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc state*(this: var TopOpeBRepBuildShellFaceClassifier): TopAbsState {.cdecl,
    importcpp: "State", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}


