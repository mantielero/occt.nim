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

discard "forward decl of IMeshTools_Parameters"
type
  BRepMeshDefaultRangeSplitter* {.importcpp: "BRepMesh_DefaultRangeSplitter",
                                 header: "BRepMesh_DefaultRangeSplitter.hxx",
                                 bycopy.} = object ## ! Constructor.
                                                ## ! Computes parametric tolerance taking length along U and V into account.
                                                ## ! Returns face model.
                                                ## ! Computes length along U direction.


proc constructBRepMeshDefaultRangeSplitter*(): BRepMeshDefaultRangeSplitter {.
    constructor, importcpp: "BRepMesh_DefaultRangeSplitter(@)",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc destroyBRepMeshDefaultRangeSplitter*(this: var BRepMeshDefaultRangeSplitter) {.
    importcpp: "#.~BRepMesh_DefaultRangeSplitter()",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc reset*(this: var BRepMeshDefaultRangeSplitter; theDFace: IFaceHandle;
           theParameters: IMeshToolsParameters) {.importcpp: "Reset",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc addPoint*(this: var BRepMeshDefaultRangeSplitter; thePoint: Pnt2d) {.
    importcpp: "AddPoint", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc adjustRange*(this: var BRepMeshDefaultRangeSplitter) {.
    importcpp: "AdjustRange", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc isValid*(this: var BRepMeshDefaultRangeSplitter): bool {.importcpp: "IsValid",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc scale*(this: BRepMeshDefaultRangeSplitter; thePoint: Pnt2d; isToFaceBasis: bool): Pnt2d {.
    noSideEffect, importcpp: "Scale", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc generateSurfaceNodes*(this: BRepMeshDefaultRangeSplitter;
                          theParameters: IMeshToolsParameters): Handle[ListOfPnt2d] {.
    noSideEffect, importcpp: "GenerateSurfaceNodes",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc point*(this: BRepMeshDefaultRangeSplitter; thePoint2d: Pnt2d): Pnt {.
    noSideEffect, importcpp: "Point", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc getDFace*(this: BRepMeshDefaultRangeSplitter): IFaceHandle {.noSideEffect,
    importcpp: "GetDFace", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc getSurface*(this: BRepMeshDefaultRangeSplitter): Handle[BRepAdaptorHSurface] {.
    noSideEffect, importcpp: "GetSurface",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc getRangeU*(this: BRepMeshDefaultRangeSplitter): Pair[cfloat, cfloat] {.
    noSideEffect, importcpp: "GetRangeU",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc getRangeV*(this: BRepMeshDefaultRangeSplitter): Pair[cfloat, cfloat] {.
    noSideEffect, importcpp: "GetRangeV",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc getDelta*(this: BRepMeshDefaultRangeSplitter): Pair[cfloat, cfloat] {.
    noSideEffect, importcpp: "GetDelta",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc getToleranceUV*(this: BRepMeshDefaultRangeSplitter): Pair[cfloat, cfloat] {.
    noSideEffect, importcpp: "GetToleranceUV",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}

























