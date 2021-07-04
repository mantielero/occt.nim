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
  ../Standard/Standard_Type, ../gp/gp_Pnt2d, ../BRepAdaptor/BRepAdaptor_HSurface,
  ../IMeshData/IMeshData_Types, ../IMeshData/IMeshData_Face

discard "forward decl of IMeshTools_Parameters"
type
  BRepMesh_DefaultRangeSplitter* {.importcpp: "BRepMesh_DefaultRangeSplitter",
                                  header: "BRepMesh_DefaultRangeSplitter.hxx",
                                  bycopy.} = object ## ! Constructor.
                                                 ## ! Computes parametric tolerance taking length along U and V into account.
                                                 ## ! Returns face model.
                                                 ## ! Computes length along U direction.


proc constructBRepMesh_DefaultRangeSplitter*(): BRepMesh_DefaultRangeSplitter {.
    constructor, importcpp: "BRepMesh_DefaultRangeSplitter(@)",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc destroyBRepMesh_DefaultRangeSplitter*(
    this: var BRepMesh_DefaultRangeSplitter) {.
    importcpp: "#.~BRepMesh_DefaultRangeSplitter()",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc Reset*(this: var BRepMesh_DefaultRangeSplitter; theDFace: IFaceHandle;
           theParameters: IMeshTools_Parameters) {.importcpp: "Reset",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc AddPoint*(this: var BRepMesh_DefaultRangeSplitter; thePoint: gp_Pnt2d) {.
    importcpp: "AddPoint", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc AdjustRange*(this: var BRepMesh_DefaultRangeSplitter) {.
    importcpp: "AdjustRange", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc IsValid*(this: var BRepMesh_DefaultRangeSplitter): Standard_Boolean {.
    importcpp: "IsValid", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc Scale*(this: BRepMesh_DefaultRangeSplitter; thePoint: gp_Pnt2d;
           isToFaceBasis: Standard_Boolean): gp_Pnt2d {.noSideEffect,
    importcpp: "Scale", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc GenerateSurfaceNodes*(this: BRepMesh_DefaultRangeSplitter;
                          theParameters: IMeshTools_Parameters): handle[
    ListOfPnt2d] {.noSideEffect, importcpp: "GenerateSurfaceNodes",
                  header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc Point*(this: BRepMesh_DefaultRangeSplitter; thePoint2d: gp_Pnt2d): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc GetDFace*(this: BRepMesh_DefaultRangeSplitter): IFaceHandle {.noSideEffect,
    importcpp: "GetDFace", header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc GetSurface*(this: BRepMesh_DefaultRangeSplitter): handle[BRepAdaptor_HSurface] {.
    noSideEffect, importcpp: "GetSurface",
    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc GetRangeU*(this: BRepMesh_DefaultRangeSplitter): pair[Standard_Real,
    Standard_Real] {.noSideEffect, importcpp: "GetRangeU",
                    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc GetRangeV*(this: BRepMesh_DefaultRangeSplitter): pair[Standard_Real,
    Standard_Real] {.noSideEffect, importcpp: "GetRangeV",
                    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc GetDelta*(this: BRepMesh_DefaultRangeSplitter): pair[Standard_Real,
    Standard_Real] {.noSideEffect, importcpp: "GetDelta",
                    header: "BRepMesh_DefaultRangeSplitter.hxx".}
proc GetToleranceUV*(this: BRepMesh_DefaultRangeSplitter): pair[Standard_Real,
    Standard_Real] {.noSideEffect, importcpp: "GetToleranceUV",
                    header: "BRepMesh_DefaultRangeSplitter.hxx".}