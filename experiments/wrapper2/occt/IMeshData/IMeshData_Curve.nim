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
  IMeshData_ParametersList, ../Standard/Standard_Type

discard "forward decl of gp_Pnt"
type
  IMeshData_Curve* {.importcpp: "IMeshData_Curve", header: "IMeshData_Curve.hxx",
                    bycopy.} = object of IMeshData_ParametersList ## ! Destructor.
                                                             ## ! Constructor.


proc destroyIMeshData_Curve*(this: var IMeshData_Curve) {.
    importcpp: "#.~IMeshData_Curve()", header: "IMeshData_Curve.hxx".}
proc InsertPoint*(this: var IMeshData_Curve; thePosition: Standard_Integer;
                 thePoint: gp_Pnt; theParamOnPCurve: Standard_Real) {.
    importcpp: "InsertPoint", header: "IMeshData_Curve.hxx".}
proc AddPoint*(this: var IMeshData_Curve; thePoint: gp_Pnt;
              theParamOnCurve: Standard_Real) {.importcpp: "AddPoint",
    header: "IMeshData_Curve.hxx".}
proc GetPoint*(this: var IMeshData_Curve; theIndex: Standard_Integer): var gp_Pnt {.
    importcpp: "GetPoint", header: "IMeshData_Curve.hxx".}
proc RemovePoint*(this: var IMeshData_Curve; theIndex: Standard_Integer) {.
    importcpp: "RemovePoint", header: "IMeshData_Curve.hxx".}
type
  IMeshData_Curvebase_type* = IMeshData_ParametersList

proc get_type_name*(): cstring {.importcpp: "IMeshData_Curve::get_type_name(@)",
                              header: "IMeshData_Curve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_Curve::get_type_descriptor(@)",
    header: "IMeshData_Curve.hxx".}
proc DynamicType*(this: IMeshData_Curve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Curve.hxx".}