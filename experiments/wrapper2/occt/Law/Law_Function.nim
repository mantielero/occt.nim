##  Created on: 1993-12-24
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Real

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Function"
discard "forward decl of Law_Function"
type
  Handle_Law_Function* = handle[Law_Function]

## ! Root class for evolution laws.

type
  Law_Function* {.importcpp: "Law_Function", header: "Law_Function.hxx", bycopy.} = object of Standard_Transient


proc Continuity*(this: Law_Function): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Law_Function.hxx".}
proc NbIntervals*(this: Law_Function; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Law_Function.hxx".}
proc Intervals*(this: Law_Function; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "Law_Function.hxx".}
proc Value*(this: var Law_Function; X: Standard_Real): Standard_Real {.
    importcpp: "Value", header: "Law_Function.hxx".}
proc D1*(this: var Law_Function; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real) {.importcpp: "D1", header: "Law_Function.hxx".}
proc D2*(this: var Law_Function; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real; D2: var Standard_Real) {.importcpp: "D2",
    header: "Law_Function.hxx".}
proc Trim*(this: Law_Function; PFirst: Standard_Real; PLast: Standard_Real;
          Tol: Standard_Real): handle[Law_Function] {.noSideEffect,
    importcpp: "Trim", header: "Law_Function.hxx".}
proc Bounds*(this: var Law_Function; PFirst: var Standard_Real;
            PLast: var Standard_Real) {.importcpp: "Bounds",
                                     header: "Law_Function.hxx".}
type
  Law_Functionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Law_Function::get_type_name(@)",
                              header: "Law_Function.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Law_Function::get_type_descriptor(@)", header: "Law_Function.hxx".}
proc DynamicType*(this: Law_Function): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_Function.hxx".}