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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Boolean

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of BRepOffset_Analyse"
type
  BRepOffset_MakeLoops* {.importcpp: "BRepOffset_MakeLoops",
                         header: "BRepOffset_MakeLoops.hxx", bycopy.} = object


proc constructBRepOffset_MakeLoops*(): BRepOffset_MakeLoops {.constructor,
    importcpp: "BRepOffset_MakeLoops(@)", header: "BRepOffset_MakeLoops.hxx".}
proc Build*(this: var BRepOffset_MakeLoops; LF: TopTools_ListOfShape;
           AsDes: handle[BRepAlgo_AsDes]; Image: var BRepAlgo_Image;
           theImageVV: var BRepAlgo_Image) {.importcpp: "Build",
    header: "BRepOffset_MakeLoops.hxx".}
proc BuildOnContext*(this: var BRepOffset_MakeLoops; LContext: TopTools_ListOfShape;
                    Analyse: BRepOffset_Analyse; AsDes: handle[BRepAlgo_AsDes];
                    Image: var BRepAlgo_Image; InSide: Standard_Boolean) {.
    importcpp: "BuildOnContext", header: "BRepOffset_MakeLoops.hxx".}
proc BuildFaces*(this: var BRepOffset_MakeLoops; LF: TopTools_ListOfShape;
                AsDes: handle[BRepAlgo_AsDes]; Image: var BRepAlgo_Image) {.
    importcpp: "BuildFaces", header: "BRepOffset_MakeLoops.hxx".}