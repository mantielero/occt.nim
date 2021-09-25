##  Created on: 1996-09-05
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of BRepOffset_Analyse"
type
  BRepOffsetMakeLoops* {.importcpp: "BRepOffset_MakeLoops",
                        header: "BRepOffset_MakeLoops.hxx", bycopy.} = object


proc constructBRepOffsetMakeLoops*(): BRepOffsetMakeLoops {.constructor,
    importcpp: "BRepOffset_MakeLoops(@)", header: "BRepOffset_MakeLoops.hxx".}
proc build*(this: var BRepOffsetMakeLoops; lf: TopToolsListOfShape;
           asDes: Handle[BRepAlgoAsDes]; image: var BRepAlgoImage;
           theImageVV: var BRepAlgoImage) {.importcpp: "Build",
    header: "BRepOffset_MakeLoops.hxx".}
proc buildOnContext*(this: var BRepOffsetMakeLoops; lContext: TopToolsListOfShape;
                    analyse: BRepOffsetAnalyse; asDes: Handle[BRepAlgoAsDes];
                    image: var BRepAlgoImage; inSide: bool) {.
    importcpp: "BuildOnContext", header: "BRepOffset_MakeLoops.hxx".}
proc buildFaces*(this: var BRepOffsetMakeLoops; lf: TopToolsListOfShape;
                asDes: Handle[BRepAlgoAsDes]; image: var BRepAlgoImage) {.
    importcpp: "BuildFaces", header: "BRepOffset_MakeLoops.hxx".}
