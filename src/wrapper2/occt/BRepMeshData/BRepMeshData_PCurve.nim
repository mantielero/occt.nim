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
  ../IMeshData/IMeshData_PCurve, ../Standard/Standard_Type,
  ../NCollection/NCollection_IncAllocator

## ! Default implementation of pcurve data model entity.

type
  BRepMeshData_PCurve* {.importcpp: "BRepMeshData_PCurve",
                        header: "BRepMeshData_PCurve.hxx", bycopy.} = object of IMeshData_PCurve ##
                                                                                          ## !
                                                                                          ## Removes
                                                                                          ## parameter
                                                                                          ## with
                                                                                          ## the
                                                                                          ## given
                                                                                          ## index.


proc BRepMeshData_PCurve*(this: var BRepMeshData_PCurve; theDFace: IFacePtr;
                         theOrientation: TopAbs_Orientation;
                         theAllocator: handle[NCollection_IncAllocator]): DEFINE_INC_ALLOC {.
    importcpp: "BRepMeshData_PCurve", header: "BRepMeshData_PCurve.hxx".}
  ## ! Constructor.
proc destroyBRepMeshData_PCurve*(this: var BRepMeshData_PCurve) {.
    importcpp: "#.~BRepMeshData_PCurve()", header: "BRepMeshData_PCurve.hxx".}
proc InsertPoint*(this: var BRepMeshData_PCurve; thePosition: Standard_Integer;
                 thePoint: gp_Pnt2d; theParamOnPCurve: Standard_Real) {.
    importcpp: "InsertPoint", header: "BRepMeshData_PCurve.hxx".}
proc AddPoint*(this: var BRepMeshData_PCurve; thePoint: gp_Pnt2d;
              theParamOnPCurve: Standard_Real) {.importcpp: "AddPoint",
    header: "BRepMeshData_PCurve.hxx".}
proc GetPoint*(this: var BRepMeshData_PCurve; theIndex: Standard_Integer): var gp_Pnt2d {.
    importcpp: "GetPoint", header: "BRepMeshData_PCurve.hxx".}
proc GetIndex*(this: var BRepMeshData_PCurve; theIndex: Standard_Integer): var Standard_Integer {.
    importcpp: "GetIndex", header: "BRepMeshData_PCurve.hxx".}
proc RemovePoint*(this: var BRepMeshData_PCurve; theIndex: Standard_Integer) {.
    importcpp: "RemovePoint", header: "BRepMeshData_PCurve.hxx".}
proc GetParameter*(this: var BRepMeshData_PCurve; theIndex: Standard_Integer): var Standard_Real {.
    importcpp: "GetParameter", header: "BRepMeshData_PCurve.hxx".}
proc ParametersNb*(this: BRepMeshData_PCurve): Standard_Integer {.noSideEffect,
    importcpp: "ParametersNb", header: "BRepMeshData_PCurve.hxx".}
proc Clear*(this: var BRepMeshData_PCurve; isKeepEndPoints: Standard_Boolean) {.
    importcpp: "Clear", header: "BRepMeshData_PCurve.hxx".}
type
  BRepMeshData_PCurvebase_type* = IMeshData_PCurve

proc get_type_name*(): cstring {.importcpp: "BRepMeshData_PCurve::get_type_name(@)",
                              header: "BRepMeshData_PCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMeshData_PCurve::get_type_descriptor(@)",
    header: "BRepMeshData_PCurve.hxx".}
proc DynamicType*(this: BRepMeshData_PCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_PCurve.hxx".}