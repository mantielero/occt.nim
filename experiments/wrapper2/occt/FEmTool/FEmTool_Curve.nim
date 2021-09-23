##  Created on: 1997-09-12
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, ../TColStd/TColStd_Array2OfReal

discard "forward decl of PLib_Base"
discard "forward decl of Standard_DimensionError"
discard "forward decl of FEmTool_Curve"
discard "forward decl of FEmTool_Curve"
type
  Handle_FEmTool_Curve* = handle[FEmTool_Curve]

## ! Curve defined by Polynomial Elements.

type
  FEmTool_Curve* {.importcpp: "FEmTool_Curve", header: "FEmTool_Curve.hxx", bycopy.} = object of Standard_Transient


proc constructFEmTool_Curve*(Dimension: Standard_Integer;
                            NbElements: Standard_Integer;
                            TheBase: handle[PLib_Base]; Tolerance: Standard_Real): FEmTool_Curve {.
    constructor, importcpp: "FEmTool_Curve(@)", header: "FEmTool_Curve.hxx".}
proc Knots*(this: FEmTool_Curve): var TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Knots", header: "FEmTool_Curve.hxx".}
proc SetElement*(this: var FEmTool_Curve; IndexOfElement: Standard_Integer;
                Coeffs: TColStd_Array2OfReal) {.importcpp: "SetElement",
    header: "FEmTool_Curve.hxx".}
proc D0*(this: var FEmTool_Curve; U: Standard_Real; Pnt: var TColStd_Array1OfReal) {.
    importcpp: "D0", header: "FEmTool_Curve.hxx".}
proc D1*(this: var FEmTool_Curve; U: Standard_Real; Vec: var TColStd_Array1OfReal) {.
    importcpp: "D1", header: "FEmTool_Curve.hxx".}
proc D2*(this: var FEmTool_Curve; U: Standard_Real; Vec: var TColStd_Array1OfReal) {.
    importcpp: "D2", header: "FEmTool_Curve.hxx".}
proc Length*(this: var FEmTool_Curve; FirstU: Standard_Real; LastU: Standard_Real;
            Length: var Standard_Real) {.importcpp: "Length",
                                      header: "FEmTool_Curve.hxx".}
proc GetElement*(this: var FEmTool_Curve; IndexOfElement: Standard_Integer;
                Coeffs: var TColStd_Array2OfReal) {.importcpp: "GetElement",
    header: "FEmTool_Curve.hxx".}
proc GetPolynom*(this: var FEmTool_Curve; Coeffs: var TColStd_Array1OfReal) {.
    importcpp: "GetPolynom", header: "FEmTool_Curve.hxx".}
proc NbElements*(this: FEmTool_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbElements", header: "FEmTool_Curve.hxx".}
proc Dimension*(this: FEmTool_Curve): Standard_Integer {.noSideEffect,
    importcpp: "Dimension", header: "FEmTool_Curve.hxx".}
proc Base*(this: FEmTool_Curve): handle[PLib_Base] {.noSideEffect, importcpp: "Base",
    header: "FEmTool_Curve.hxx".}
proc Degree*(this: FEmTool_Curve; IndexOfElement: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Degree", header: "FEmTool_Curve.hxx".}
proc SetDegree*(this: var FEmTool_Curve; IndexOfElement: Standard_Integer;
               Degree: Standard_Integer) {.importcpp: "SetDegree",
    header: "FEmTool_Curve.hxx".}
proc ReduceDegree*(this: var FEmTool_Curve; IndexOfElement: Standard_Integer;
                  Tol: Standard_Real; NewDegree: var Standard_Integer;
                  MaxError: var Standard_Real) {.importcpp: "ReduceDegree",
    header: "FEmTool_Curve.hxx".}
type
  FEmTool_Curvebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "FEmTool_Curve::get_type_name(@)",
                              header: "FEmTool_Curve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "FEmTool_Curve::get_type_descriptor(@)",
    header: "FEmTool_Curve.hxx".}
proc DynamicType*(this: FEmTool_Curve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "FEmTool_Curve.hxx".}