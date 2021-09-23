##  Created on: 1996-03-29
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Law_Function, ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Function"
discard "forward decl of Law_Constant"
discard "forward decl of Law_Constant"
type
  Handle_Law_Constant* = handle[Law_Constant]

## ! Loi constante

type
  Law_Constant* {.importcpp: "Law_Constant", header: "Law_Constant.hxx", bycopy.} = object of Law_Function


proc constructLaw_Constant*(): Law_Constant {.constructor,
    importcpp: "Law_Constant(@)", header: "Law_Constant.hxx".}
proc Set*(this: var Law_Constant; Radius: Standard_Real; PFirst: Standard_Real;
         PLast: Standard_Real) {.importcpp: "Set", header: "Law_Constant.hxx".}
proc Continuity*(this: Law_Constant): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Law_Constant.hxx".}
proc NbIntervals*(this: Law_Constant; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Law_Constant.hxx".}
proc Intervals*(this: Law_Constant; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "Law_Constant.hxx".}
proc Value*(this: var Law_Constant; X: Standard_Real): Standard_Real {.
    importcpp: "Value", header: "Law_Constant.hxx".}
proc D1*(this: var Law_Constant; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real) {.importcpp: "D1", header: "Law_Constant.hxx".}
proc D2*(this: var Law_Constant; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real; D2: var Standard_Real) {.importcpp: "D2",
    header: "Law_Constant.hxx".}
proc Trim*(this: Law_Constant; PFirst: Standard_Real; PLast: Standard_Real;
          Tol: Standard_Real): handle[Law_Function] {.noSideEffect,
    importcpp: "Trim", header: "Law_Constant.hxx".}
proc Bounds*(this: var Law_Constant; PFirst: var Standard_Real;
            PLast: var Standard_Real) {.importcpp: "Bounds",
                                     header: "Law_Constant.hxx".}
type
  Law_Constantbase_type* = Law_Function

proc get_type_name*(): cstring {.importcpp: "Law_Constant::get_type_name(@)",
                              header: "Law_Constant.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Law_Constant::get_type_descriptor(@)", header: "Law_Constant.hxx".}
proc DynamicType*(this: Law_Constant): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_Constant.hxx".}