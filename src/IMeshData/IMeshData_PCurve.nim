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

discard "forward decl of gp_Pnt2d"
type
  IMeshDataPCurve* {.importcpp: "IMeshData_PCurve", header: "IMeshData_PCurve.hxx",
                    bycopy.} = object of IMeshDataParametersList ## ! Destructor.
                                                            ## ! Constructor.


proc destroyIMeshDataPCurve*(this: var IMeshDataPCurve) {.
    importcpp: "#.~IMeshData_PCurve()", header: "IMeshData_PCurve.hxx".}
proc insertPoint*(this: var IMeshDataPCurve; thePosition: cint; thePoint: Pnt2d;
                 theParamOnPCurve: cfloat) {.importcpp: "InsertPoint",
    header: "IMeshData_PCurve.hxx".}
proc addPoint*(this: var IMeshDataPCurve; thePoint: Pnt2d; theParamOnPCurve: cfloat) {.
    importcpp: "AddPoint", header: "IMeshData_PCurve.hxx".}
proc getPoint*(this: var IMeshDataPCurve; theIndex: cint): var Pnt2d {.
    importcpp: "GetPoint", header: "IMeshData_PCurve.hxx".}
proc getIndex*(this: var IMeshDataPCurve; theIndex: cint): var cint {.
    importcpp: "GetIndex", header: "IMeshData_PCurve.hxx".}
proc removePoint*(this: var IMeshDataPCurve; theIndex: cint) {.
    importcpp: "RemovePoint", header: "IMeshData_PCurve.hxx".}
proc isForward*(this: IMeshDataPCurve): bool {.noSideEffect, importcpp: "IsForward",
    header: "IMeshData_PCurve.hxx".}
proc isInternal*(this: IMeshDataPCurve): bool {.noSideEffect,
    importcpp: "IsInternal", header: "IMeshData_PCurve.hxx".}
proc getOrientation*(this: IMeshDataPCurve): TopAbsOrientation {.noSideEffect,
    importcpp: "GetOrientation", header: "IMeshData_PCurve.hxx".}
proc getFace*(this: IMeshDataPCurve): IFacePtr {.noSideEffect, importcpp: "GetFace",
    header: "IMeshData_PCurve.hxx".}
type
  IMeshDataPCurvebaseType* = IMeshDataParametersList

proc getTypeName*(): cstring {.importcpp: "IMeshData_PCurve::get_type_name(@)",
                            header: "IMeshData_PCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_PCurve::get_type_descriptor(@)",
    header: "IMeshData_PCurve.hxx".}
proc dynamicType*(this: IMeshDataPCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_PCurve.hxx".}

























