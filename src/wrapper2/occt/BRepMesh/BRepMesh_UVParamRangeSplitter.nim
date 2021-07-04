##  Created on: 2016-07-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  BRepMesh_DefaultRangeSplitter, ../IMeshData/IMeshData_Types

## ! Intended to generate internal mesh nodes using UV parameters of boundary discrete points.

type
  BRepMesh_UVParamRangeSplitter* {.importcpp: "BRepMesh_UVParamRangeSplitter",
                                  header: "BRepMesh_UVParamRangeSplitter.hxx",
                                  bycopy.} = object of BRepMesh_DefaultRangeSplitter ##
                                                                                ## !
                                                                                ## Constructor.
                                                                                ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## U
                                                                                ## parameters.


proc constructBRepMesh_UVParamRangeSplitter*(): BRepMesh_UVParamRangeSplitter {.
    constructor, importcpp: "BRepMesh_UVParamRangeSplitter(@)",
    header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc destroyBRepMesh_UVParamRangeSplitter*(
    this: var BRepMesh_UVParamRangeSplitter) {.
    importcpp: "#.~BRepMesh_UVParamRangeSplitter()",
    header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc Reset*(this: var BRepMesh_UVParamRangeSplitter; theDFace: IFaceHandle;
           theParameters: IMeshTools_Parameters) {.importcpp: "Reset",
    header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc GetParametersU*(this: BRepMesh_UVParamRangeSplitter): IMapOfReal {.
    noSideEffect, importcpp: "GetParametersU",
    header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc GetParametersU*(this: var BRepMesh_UVParamRangeSplitter): var IMapOfReal {.
    importcpp: "GetParametersU", header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc GetParametersV*(this: BRepMesh_UVParamRangeSplitter): IMapOfReal {.
    noSideEffect, importcpp: "GetParametersV",
    header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc GetParametersV*(this: var BRepMesh_UVParamRangeSplitter): var IMapOfReal {.
    importcpp: "GetParametersV", header: "BRepMesh_UVParamRangeSplitter.hxx".}