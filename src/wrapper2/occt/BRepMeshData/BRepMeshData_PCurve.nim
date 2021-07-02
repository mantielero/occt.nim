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

## ! Default implementation of pcurve data model entity.

type
  BRepMeshDataPCurve* {.importcpp: "BRepMeshData_PCurve",
                       header: "BRepMeshData_PCurve.hxx", bycopy.} = object of IMeshDataPCurve ##
                                                                                        ## !
                                                                                        ## Removes
                                                                                        ## parameter
                                                                                        ## with
                                                                                        ## the
                                                                                        ## given
                                                                                        ## index.


proc bRepMeshDataPCurve*(this: var BRepMeshDataPCurve; theDFace: IFacePtr;
                        theOrientation: TopAbsOrientation;
                        theAllocator: Handle[NCollectionIncAllocator]): Define_Inc_Alloc {.
    importcpp: "BRepMeshData_PCurve", header: "BRepMeshData_PCurve.hxx".}
  ## ! Constructor.
proc destroyBRepMeshDataPCurve*(this: var BRepMeshDataPCurve) {.
    importcpp: "#.~BRepMeshData_PCurve()", header: "BRepMeshData_PCurve.hxx".}
proc insertPoint*(this: var BRepMeshDataPCurve; thePosition: StandardInteger;
                 thePoint: GpPnt2d; theParamOnPCurve: StandardReal) {.
    importcpp: "InsertPoint", header: "BRepMeshData_PCurve.hxx".}
proc addPoint*(this: var BRepMeshDataPCurve; thePoint: GpPnt2d;
              theParamOnPCurve: StandardReal) {.importcpp: "AddPoint",
    header: "BRepMeshData_PCurve.hxx".}
proc getPoint*(this: var BRepMeshDataPCurve; theIndex: StandardInteger): var GpPnt2d {.
    importcpp: "GetPoint", header: "BRepMeshData_PCurve.hxx".}
proc getIndex*(this: var BRepMeshDataPCurve; theIndex: StandardInteger): var StandardInteger {.
    importcpp: "GetIndex", header: "BRepMeshData_PCurve.hxx".}
proc removePoint*(this: var BRepMeshDataPCurve; theIndex: StandardInteger) {.
    importcpp: "RemovePoint", header: "BRepMeshData_PCurve.hxx".}
proc getParameter*(this: var BRepMeshDataPCurve; theIndex: StandardInteger): var StandardReal {.
    importcpp: "GetParameter", header: "BRepMeshData_PCurve.hxx".}
proc parametersNb*(this: BRepMeshDataPCurve): StandardInteger {.noSideEffect,
    importcpp: "ParametersNb", header: "BRepMeshData_PCurve.hxx".}
proc clear*(this: var BRepMeshDataPCurve; isKeepEndPoints: StandardBoolean) {.
    importcpp: "Clear", header: "BRepMeshData_PCurve.hxx".}
type
  BRepMeshDataPCurvebaseType* = IMeshDataPCurve

proc getTypeName*(): cstring {.importcpp: "BRepMeshData_PCurve::get_type_name(@)",
                            header: "BRepMeshData_PCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMeshData_PCurve::get_type_descriptor(@)",
    header: "BRepMeshData_PCurve.hxx".}
proc dynamicType*(this: BRepMeshDataPCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_PCurve.hxx".}

