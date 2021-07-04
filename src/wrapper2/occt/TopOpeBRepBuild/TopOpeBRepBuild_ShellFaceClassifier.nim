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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Pnt,
  ../TopoDS/TopoDS_Shell, ../BRep/BRep_Builder,
  ../TopOpeBRepTool/TopOpeBRepTool_SolidClassifier,
  ../TopTools/TopTools_DataMapOfShapeShape, ../TopoDS/TopoDS_Shape,
  TopOpeBRepBuild_CompositeClassifier, ../TopAbs/TopAbs_State

discard "forward decl of TopOpeBRepBuild_BlockBuilder"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuild_ShellFaceClassifier* {.importcpp: "TopOpeBRepBuild_ShellFaceClassifier", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx",
                                        bycopy.} = object of TopOpeBRepBuild_CompositeClassifier ##
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


proc constructTopOpeBRepBuild_ShellFaceClassifier*(
    BB: TopOpeBRepBuild_BlockBuilder): TopOpeBRepBuild_ShellFaceClassifier {.
    constructor, importcpp: "TopOpeBRepBuild_ShellFaceClassifier(@)",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc Clear*(this: var TopOpeBRepBuild_ShellFaceClassifier) {.importcpp: "Clear",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc CompareShapes*(this: var TopOpeBRepBuild_ShellFaceClassifier; B1: TopoDS_Shape;
                   B2: TopoDS_Shape): TopAbs_State {.importcpp: "CompareShapes",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc CompareElementToShape*(this: var TopOpeBRepBuild_ShellFaceClassifier;
                           F: TopoDS_Shape; S: TopoDS_Shape): TopAbs_State {.
    importcpp: "CompareElementToShape",
    header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc ResetShape*(this: var TopOpeBRepBuild_ShellFaceClassifier; S: TopoDS_Shape) {.
    importcpp: "ResetShape", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc ResetElement*(this: var TopOpeBRepBuild_ShellFaceClassifier; F: TopoDS_Shape) {.
    importcpp: "ResetElement", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc CompareElement*(this: var TopOpeBRepBuild_ShellFaceClassifier; F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "CompareElement", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}
proc State*(this: var TopOpeBRepBuild_ShellFaceClassifier): TopAbs_State {.
    importcpp: "State", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx".}