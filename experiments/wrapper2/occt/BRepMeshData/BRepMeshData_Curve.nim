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

## ! Default implementation of curve data model entity.

type
  BRepMeshDataCurve* {.importcpp: "BRepMeshData_Curve",
                      header: "BRepMeshData_Curve.hxx", bycopy.} = object of IMeshDataCurve ##
                                                                                     ## !
                                                                                     ## Removes
                                                                                     ## parameter
                                                                                     ## with
                                                                                     ## the
                                                                                     ## given
                                                                                     ## index.


proc bRepMeshDataCurve*(this: var BRepMeshDataCurve;
                       theAllocator: Handle[NCollectionIncAllocator]): Define_Inc_Alloc {.
    importcpp: "BRepMeshData_Curve", header: "BRepMeshData_Curve.hxx".}
  ## ! Constructor.
proc destroyBRepMeshDataCurve*(this: var BRepMeshDataCurve) {.
    importcpp: "#.~BRepMeshData_Curve()", header: "BRepMeshData_Curve.hxx".}
proc insertPoint*(this: var BRepMeshDataCurve; thePosition: int; thePoint: Pnt;
                 theParamOnPCurve: StandardReal) {.importcpp: "InsertPoint",
    header: "BRepMeshData_Curve.hxx".}
proc addPoint*(this: var BRepMeshDataCurve; thePoint: Pnt;
              theParamOnCurve: StandardReal) {.importcpp: "AddPoint",
    header: "BRepMeshData_Curve.hxx".}
proc getPoint*(this: var BRepMeshDataCurve; theIndex: int): var Pnt {.
    importcpp: "GetPoint", header: "BRepMeshData_Curve.hxx".}
proc removePoint*(this: var BRepMeshDataCurve; theIndex: int) {.
    importcpp: "RemovePoint", header: "BRepMeshData_Curve.hxx".}
proc getParameter*(this: var BRepMeshDataCurve; theIndex: int): var StandardReal {.
    importcpp: "GetParameter", header: "BRepMeshData_Curve.hxx".}
proc parametersNb*(this: BRepMeshDataCurve): int {.noSideEffect,
    importcpp: "ParametersNb", header: "BRepMeshData_Curve.hxx".}
proc clear*(this: var BRepMeshDataCurve; isKeepEndPoints: StandardBoolean) {.
    importcpp: "Clear", header: "BRepMeshData_Curve.hxx".}
type
  BRepMeshDataCurvebaseType* = IMeshDataCurve

proc getTypeName*(): cstring {.importcpp: "BRepMeshData_Curve::get_type_name(@)",
                            header: "BRepMeshData_Curve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMeshData_Curve::get_type_descriptor(@)",
    header: "BRepMeshData_Curve.hxx".}
proc dynamicType*(this: BRepMeshDataCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Curve.hxx".}