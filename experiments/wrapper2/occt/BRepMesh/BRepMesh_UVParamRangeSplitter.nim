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

## ! Intended to generate internal mesh nodes using UV parameters of boundary discrete points.

type
  BRepMeshUVParamRangeSplitter* {.importcpp: "BRepMesh_UVParamRangeSplitter",
                                 header: "BRepMesh_UVParamRangeSplitter.hxx",
                                 bycopy.} = object of BRepMeshDefaultRangeSplitter ## !
                                                                              ## Constructor.
                                                                              ## !
                                                                              ## Returns U
                                                                              ## parameters.


proc constructBRepMeshUVParamRangeSplitter*(): BRepMeshUVParamRangeSplitter {.
    constructor, importcpp: "BRepMesh_UVParamRangeSplitter(@)",
    header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc destroyBRepMeshUVParamRangeSplitter*(this: var BRepMeshUVParamRangeSplitter) {.
    importcpp: "#.~BRepMesh_UVParamRangeSplitter()",
    header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc reset*(this: var BRepMeshUVParamRangeSplitter; theDFace: IFaceHandle;
           theParameters: IMeshToolsParameters) {.importcpp: "Reset",
    header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc getParametersU*(this: BRepMeshUVParamRangeSplitter): IMapOfReal {.noSideEffect,
    importcpp: "GetParametersU", header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc getParametersU*(this: var BRepMeshUVParamRangeSplitter): var IMapOfReal {.
    importcpp: "GetParametersU", header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc getParametersV*(this: BRepMeshUVParamRangeSplitter): IMapOfReal {.noSideEffect,
    importcpp: "GetParametersV", header: "BRepMesh_UVParamRangeSplitter.hxx".}
proc getParametersV*(this: var BRepMeshUVParamRangeSplitter): var IMapOfReal {.
    importcpp: "GetParametersV", header: "BRepMesh_UVParamRangeSplitter.hxx".}

























