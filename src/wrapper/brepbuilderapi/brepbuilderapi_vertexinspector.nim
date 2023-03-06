import brepbuilderapi_types
import ../ncollection/ncollection_types
import ../tcolstd/tcolstd_types
import ../gp/gp_types




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





proc vertexInspector*(theTol: cfloat): BRepBuilderAPI_VertexInspector {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_VertexInspector(@)",
    header: "BRepBuilderAPI_VertexInspector.hxx".}
proc add*(this: var BRepBuilderAPI_VertexInspector; thePnt: XyzObj) {.cdecl,
    importcpp: "Add", header: "BRepBuilderAPI_VertexInspector.hxx".}
proc clearResList*(this: var BRepBuilderAPI_VertexInspector) {.cdecl,
    importcpp: "ClearResList", header: "BRepBuilderAPI_VertexInspector.hxx".}
proc setCurrent*(this: var BRepBuilderAPI_VertexInspector; theCurPnt: XyzObj) {.cdecl,
    importcpp: "SetCurrent", header: "BRepBuilderAPI_VertexInspector.hxx".}
proc resInd*(this: var BRepBuilderAPI_VertexInspector): TColStdListOfInteger {.cdecl,
    importcpp: "ResInd", header: "BRepBuilderAPI_VertexInspector.hxx".}
proc inspect*(this: var BRepBuilderAPI_VertexInspector; theTarget: cint): NCollectionCellFilterAction {.
    cdecl, importcpp: "Inspect", header: "BRepBuilderAPI_VertexInspector.hxx".}


