##  Created on: 1995-11-15
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Law_BSpline"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Function"
discard "forward decl of Law_BSpFunc"
discard "forward decl of Law_BSpFunc"
type
  Handle_Law_BSpFunc* = handle[Law_BSpFunc]

## ! Law Function based on a BSpline curve 1d.  Package
## ! methods and classes are implemented in package Law
## ! to    construct  the  basis    curve with  several
## ! constraints.

type
  Law_BSpFunc* {.importcpp: "Law_BSpFunc", header: "Law_BSpFunc.hxx", bycopy.} = object of Law_Function


proc constructLaw_BSpFunc*(): Law_BSpFunc {.constructor,
    importcpp: "Law_BSpFunc(@)", header: "Law_BSpFunc.hxx".}
proc constructLaw_BSpFunc*(C: handle[Law_BSpline]; First: Standard_Real;
                          Last: Standard_Real): Law_BSpFunc {.constructor,
    importcpp: "Law_BSpFunc(@)", header: "Law_BSpFunc.hxx".}
proc Continuity*(this: Law_BSpFunc): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Law_BSpFunc.hxx".}
proc NbIntervals*(this: Law_BSpFunc; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Law_BSpFunc.hxx".}
proc Intervals*(this: Law_BSpFunc; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "Law_BSpFunc.hxx".}
proc Value*(this: var Law_BSpFunc; X: Standard_Real): Standard_Real {.
    importcpp: "Value", header: "Law_BSpFunc.hxx".}
proc D1*(this: var Law_BSpFunc; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real) {.importcpp: "D1", header: "Law_BSpFunc.hxx".}
proc D2*(this: var Law_BSpFunc; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real; D2: var Standard_Real) {.importcpp: "D2",
    header: "Law_BSpFunc.hxx".}
proc Trim*(this: Law_BSpFunc; PFirst: Standard_Real; PLast: Standard_Real;
          Tol: Standard_Real): handle[Law_Function] {.noSideEffect,
    importcpp: "Trim", header: "Law_BSpFunc.hxx".}
proc Bounds*(this: var Law_BSpFunc; PFirst: var Standard_Real; PLast: var Standard_Real) {.
    importcpp: "Bounds", header: "Law_BSpFunc.hxx".}
proc Curve*(this: Law_BSpFunc): handle[Law_BSpline] {.noSideEffect,
    importcpp: "Curve", header: "Law_BSpFunc.hxx".}
proc SetCurve*(this: var Law_BSpFunc; C: handle[Law_BSpline]) {.importcpp: "SetCurve",
    header: "Law_BSpFunc.hxx".}
type
  Law_BSpFuncbase_type* = Law_Function

proc get_type_name*(): cstring {.importcpp: "Law_BSpFunc::get_type_name(@)",
                              header: "Law_BSpFunc.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Law_BSpFunc::get_type_descriptor(@)", header: "Law_BSpFunc.hxx".}
proc DynamicType*(this: Law_BSpFunc): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_BSpFunc.hxx".}