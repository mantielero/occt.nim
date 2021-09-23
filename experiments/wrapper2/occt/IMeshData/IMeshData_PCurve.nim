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
  IMeshData_ParametersList, ../Standard/Standard_Type, IMeshData_Face

discard "forward decl of gp_Pnt2d"
type
  IMeshData_PCurve* {.importcpp: "IMeshData_PCurve",
                     header: "IMeshData_PCurve.hxx", bycopy.} = object of IMeshData_ParametersList ##
                                                                                            ## !
                                                                                            ## Destructor.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Constructor.


proc destroyIMeshData_PCurve*(this: var IMeshData_PCurve) {.
    importcpp: "#.~IMeshData_PCurve()", header: "IMeshData_PCurve.hxx".}
proc InsertPoint*(this: var IMeshData_PCurve; thePosition: Standard_Integer;
                 thePoint: gp_Pnt2d; theParamOnPCurve: Standard_Real) {.
    importcpp: "InsertPoint", header: "IMeshData_PCurve.hxx".}
proc AddPoint*(this: var IMeshData_PCurve; thePoint: gp_Pnt2d;
              theParamOnPCurve: Standard_Real) {.importcpp: "AddPoint",
    header: "IMeshData_PCurve.hxx".}
proc GetPoint*(this: var IMeshData_PCurve; theIndex: Standard_Integer): var gp_Pnt2d {.
    importcpp: "GetPoint", header: "IMeshData_PCurve.hxx".}
proc GetIndex*(this: var IMeshData_PCurve; theIndex: Standard_Integer): var Standard_Integer {.
    importcpp: "GetIndex", header: "IMeshData_PCurve.hxx".}
proc RemovePoint*(this: var IMeshData_PCurve; theIndex: Standard_Integer) {.
    importcpp: "RemovePoint", header: "IMeshData_PCurve.hxx".}
proc IsForward*(this: IMeshData_PCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsForward", header: "IMeshData_PCurve.hxx".}
proc IsInternal*(this: IMeshData_PCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsInternal", header: "IMeshData_PCurve.hxx".}
proc GetOrientation*(this: IMeshData_PCurve): TopAbs_Orientation {.noSideEffect,
    importcpp: "GetOrientation", header: "IMeshData_PCurve.hxx".}
proc GetFace*(this: IMeshData_PCurve): IFacePtr {.noSideEffect, importcpp: "GetFace",
    header: "IMeshData_PCurve.hxx".}
type
  IMeshData_PCurvebase_type* = IMeshData_ParametersList

proc get_type_name*(): cstring {.importcpp: "IMeshData_PCurve::get_type_name(@)",
                              header: "IMeshData_PCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_PCurve::get_type_descriptor(@)",
    header: "IMeshData_PCurve.hxx".}
proc DynamicType*(this: IMeshData_PCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_PCurve.hxx".}