##  Created on: 1998-05-12
##  Created by: Roman BORISOV
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Transient, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Approx_CurvlinFunc"
discard "forward decl of Approx_CurvlinFunc"
type
  Handle_Approx_CurvlinFunc* = handle[Approx_CurvlinFunc]

## ! defines an abstract curve with
## ! curvilinear parametrization

type
  Approx_CurvlinFunc* {.importcpp: "Approx_CurvlinFunc",
                       header: "Approx_CurvlinFunc.hxx", bycopy.} = object of Standard_Transient


proc constructApprox_CurvlinFunc*(C: handle[Adaptor3d_HCurve]; Tol: Standard_Real): Approx_CurvlinFunc {.
    constructor, importcpp: "Approx_CurvlinFunc(@)",
    header: "Approx_CurvlinFunc.hxx".}
proc constructApprox_CurvlinFunc*(C2D: handle[Adaptor2d_HCurve2d];
                                 S: handle[Adaptor3d_HSurface]; Tol: Standard_Real): Approx_CurvlinFunc {.
    constructor, importcpp: "Approx_CurvlinFunc(@)",
    header: "Approx_CurvlinFunc.hxx".}
proc constructApprox_CurvlinFunc*(C2D1: handle[Adaptor2d_HCurve2d];
                                 C2D2: handle[Adaptor2d_HCurve2d];
                                 S1: handle[Adaptor3d_HSurface];
                                 S2: handle[Adaptor3d_HSurface];
                                 Tol: Standard_Real): Approx_CurvlinFunc {.
    constructor, importcpp: "Approx_CurvlinFunc(@)",
    header: "Approx_CurvlinFunc.hxx".}
proc SetTol*(this: var Approx_CurvlinFunc; Tol: Standard_Real) {.importcpp: "SetTol",
    header: "Approx_CurvlinFunc.hxx".}
proc FirstParameter*(this: Approx_CurvlinFunc): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Approx_CurvlinFunc.hxx".}
proc LastParameter*(this: Approx_CurvlinFunc): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Approx_CurvlinFunc.hxx".}
proc NbIntervals*(this: Approx_CurvlinFunc; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Approx_CurvlinFunc.hxx".}
proc Intervals*(this: Approx_CurvlinFunc; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "Approx_CurvlinFunc.hxx".}
proc Trim*(this: var Approx_CurvlinFunc; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real) {.importcpp: "Trim", header: "Approx_CurvlinFunc.hxx".}
proc Length*(this: var Approx_CurvlinFunc) {.importcpp: "Length",
    header: "Approx_CurvlinFunc.hxx".}
proc Length*(this: Approx_CurvlinFunc; C: var Adaptor3d_Curve; FirstU: Standard_Real;
            LasrU: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "Length", header: "Approx_CurvlinFunc.hxx".}
proc GetLength*(this: Approx_CurvlinFunc): Standard_Real {.noSideEffect,
    importcpp: "GetLength", header: "Approx_CurvlinFunc.hxx".}
proc GetUParameter*(this: Approx_CurvlinFunc; C: var Adaptor3d_Curve;
                   S: Standard_Real; NumberOfCurve: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetUParameter", header: "Approx_CurvlinFunc.hxx".}
proc GetSParameter*(this: Approx_CurvlinFunc; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "GetSParameter", header: "Approx_CurvlinFunc.hxx".}
proc EvalCase1*(this: Approx_CurvlinFunc; S: Standard_Real; Order: Standard_Integer;
               Result: var TColStd_Array1OfReal): Standard_Boolean {.noSideEffect,
    importcpp: "EvalCase1", header: "Approx_CurvlinFunc.hxx".}
proc EvalCase2*(this: Approx_CurvlinFunc; S: Standard_Real; Order: Standard_Integer;
               Result: var TColStd_Array1OfReal): Standard_Boolean {.noSideEffect,
    importcpp: "EvalCase2", header: "Approx_CurvlinFunc.hxx".}
proc EvalCase3*(this: var Approx_CurvlinFunc; S: Standard_Real;
               Order: Standard_Integer; Result: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "EvalCase3", header: "Approx_CurvlinFunc.hxx".}
type
  Approx_CurvlinFuncbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Approx_CurvlinFunc::get_type_name(@)",
                              header: "Approx_CurvlinFunc.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Approx_CurvlinFunc::get_type_descriptor(@)",
    header: "Approx_CurvlinFunc.hxx".}
proc DynamicType*(this: Approx_CurvlinFunc): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Approx_CurvlinFunc.hxx".}