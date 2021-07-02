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

discard "forward decl of gp_Pnt"
type
  IMeshDataCurve* {.importcpp: "IMeshData_Curve", header: "IMeshData_Curve.hxx",
                   bycopy.} = object of IMeshDataParametersList ## ! Destructor.
                                                           ## ! Constructor.


proc destroyIMeshDataCurve*(this: var IMeshDataCurve) {.
    importcpp: "#.~IMeshData_Curve()", header: "IMeshData_Curve.hxx".}
proc insertPoint*(this: var IMeshDataCurve; thePosition: StandardInteger;
                 thePoint: GpPnt; theParamOnPCurve: StandardReal) {.
    importcpp: "InsertPoint", header: "IMeshData_Curve.hxx".}
proc addPoint*(this: var IMeshDataCurve; thePoint: GpPnt;
              theParamOnCurve: StandardReal) {.importcpp: "AddPoint",
    header: "IMeshData_Curve.hxx".}
proc getPoint*(this: var IMeshDataCurve; theIndex: StandardInteger): var GpPnt {.
    importcpp: "GetPoint", header: "IMeshData_Curve.hxx".}
proc removePoint*(this: var IMeshDataCurve; theIndex: StandardInteger) {.
    importcpp: "RemovePoint", header: "IMeshData_Curve.hxx".}
type
  IMeshDataCurvebaseType* = IMeshDataParametersList

proc getTypeName*(): cstring {.importcpp: "IMeshData_Curve::get_type_name(@)",
                            header: "IMeshData_Curve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_Curve::get_type_descriptor(@)",
    header: "IMeshData_Curve.hxx".}
proc dynamicType*(this: IMeshDataCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Curve.hxx".}

