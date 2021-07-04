##  Created on: 2011-11-24
##  Created by: ANNA MASALSKAYA
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_ListOfInteger, ../NCollection/NCollection_Vector,
  ../gp/gp_XY, ../gp/gp_XYZ, ../NCollection/NCollection_CellFilter

type
  VectorOfPoint* = NCollection_Vector[gp_XYZ]

## =======================================================================
## ! Class BRepBuilderAPI_VertexInspector
## !   derived from NCollection_CellFilter_InspectorXYZ
## !   This class define the Inspector interface for CellFilter algorithm,
## !   working with gp_XYZ points in 3d space.
## !   Used in search of coincidence points with a certain tolerance.
## =======================================================================

type
  BRepBuilderAPI_VertexInspector* {.importcpp: "BRepBuilderAPI_VertexInspector", header: "BRepBuilderAPI_VertexInspector.hxx",
                                   bycopy.} = object of NCollection_CellFilter_InspectorXYZ

  BRepBuilderAPI_VertexInspectorTarget* = Standard_Integer

proc constructBRepBuilderAPI_VertexInspector*(theTol: Standard_Real): BRepBuilderAPI_VertexInspector {.
    constructor, importcpp: "BRepBuilderAPI_VertexInspector(@)",
    header: "BRepBuilderAPI_VertexInspector.hxx".}
proc Add*(this: var BRepBuilderAPI_VertexInspector; thePnt: gp_XYZ) {.
    importcpp: "Add", header: "BRepBuilderAPI_VertexInspector.hxx".}
proc ClearResList*(this: var BRepBuilderAPI_VertexInspector) {.
    importcpp: "ClearResList", header: "BRepBuilderAPI_VertexInspector.hxx".}
proc SetCurrent*(this: var BRepBuilderAPI_VertexInspector; theCurPnt: gp_XYZ) {.
    importcpp: "SetCurrent", header: "BRepBuilderAPI_VertexInspector.hxx".}
proc ResInd*(this: var BRepBuilderAPI_VertexInspector): TColStd_ListOfInteger {.
    importcpp: "ResInd", header: "BRepBuilderAPI_VertexInspector.hxx".}
proc Inspect*(this: var BRepBuilderAPI_VertexInspector; theTarget: Standard_Integer): NCollection_CellFilter_Action {.
    importcpp: "Inspect", header: "BRepBuilderAPI_VertexInspector.hxx".}