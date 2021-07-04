##  Created on: 2016-04-07
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
  ../IMeshData/IMeshData_Curve, ../Standard/Standard_Type,
  ../NCollection/NCollection_IncAllocator, ../IMeshData/IMeshData_Types

## ! Default implementation of curve data model entity.

type
  BRepMeshData_Curve* {.importcpp: "BRepMeshData_Curve",
                       header: "BRepMeshData_Curve.hxx", bycopy.} = object of IMeshData_Curve ##
                                                                                       ## !
                                                                                       ## Removes
                                                                                       ## parameter
                                                                                       ## with
                                                                                       ## the
                                                                                       ## given
                                                                                       ## index.


proc BRepMeshData_Curve*(this: var BRepMeshData_Curve;
                        theAllocator: handle[NCollection_IncAllocator]): DEFINE_INC_ALLOC {.
    importcpp: "BRepMeshData_Curve", header: "BRepMeshData_Curve.hxx".}
  ## ! Constructor.
proc destroyBRepMeshData_Curve*(this: var BRepMeshData_Curve) {.
    importcpp: "#.~BRepMeshData_Curve()", header: "BRepMeshData_Curve.hxx".}
proc InsertPoint*(this: var BRepMeshData_Curve; thePosition: Standard_Integer;
                 thePoint: gp_Pnt; theParamOnPCurve: Standard_Real) {.
    importcpp: "InsertPoint", header: "BRepMeshData_Curve.hxx".}
proc AddPoint*(this: var BRepMeshData_Curve; thePoint: gp_Pnt;
              theParamOnCurve: Standard_Real) {.importcpp: "AddPoint",
    header: "BRepMeshData_Curve.hxx".}
proc GetPoint*(this: var BRepMeshData_Curve; theIndex: Standard_Integer): var gp_Pnt {.
    importcpp: "GetPoint", header: "BRepMeshData_Curve.hxx".}
proc RemovePoint*(this: var BRepMeshData_Curve; theIndex: Standard_Integer) {.
    importcpp: "RemovePoint", header: "BRepMeshData_Curve.hxx".}
proc GetParameter*(this: var BRepMeshData_Curve; theIndex: Standard_Integer): var Standard_Real {.
    importcpp: "GetParameter", header: "BRepMeshData_Curve.hxx".}
proc ParametersNb*(this: BRepMeshData_Curve): Standard_Integer {.noSideEffect,
    importcpp: "ParametersNb", header: "BRepMeshData_Curve.hxx".}
proc Clear*(this: var BRepMeshData_Curve; isKeepEndPoints: Standard_Boolean) {.
    importcpp: "Clear", header: "BRepMeshData_Curve.hxx".}
type
  BRepMeshData_Curvebase_type* = IMeshData_Curve

proc get_type_name*(): cstring {.importcpp: "BRepMeshData_Curve::get_type_name(@)",
                              header: "BRepMeshData_Curve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMeshData_Curve::get_type_descriptor(@)",
    header: "BRepMeshData_Curve.hxx".}
proc DynamicType*(this: BRepMeshData_Curve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Curve.hxx".}