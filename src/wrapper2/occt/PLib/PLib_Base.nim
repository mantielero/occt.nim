##  Created on: 1997-10-22
##  Created by: Philippe MANGIN / Sergey SOKOLOV
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real

discard "forward decl of PLib_Base"
discard "forward decl of PLib_Base"
type
  Handle_PLib_Base* = handle[PLib_Base]

## ! To work with different polynomial's Bases

type
  PLib_Base* {.importcpp: "PLib_Base", header: "PLib_Base.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Convert
                                                                                              ## the
                                                                                              ## polynomial
                                                                                              ## P(t)
                                                                                              ## in
                                                                                              ## the
                                                                                              ## canonical
                                                                                              ## base.


proc ToCoefficients*(this: PLib_Base; Dimension: Standard_Integer;
                    Degree: Standard_Integer; CoeffinBase: TColStd_Array1OfReal;
                    Coefficients: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "ToCoefficients", header: "PLib_Base.hxx".}
proc D0*(this: var PLib_Base; U: Standard_Real; BasisValue: var TColStd_Array1OfReal) {.
    importcpp: "D0", header: "PLib_Base.hxx".}
proc D1*(this: var PLib_Base; U: Standard_Real; BasisValue: var TColStd_Array1OfReal;
        BasisD1: var TColStd_Array1OfReal) {.importcpp: "D1", header: "PLib_Base.hxx".}
proc D2*(this: var PLib_Base; U: Standard_Real; BasisValue: var TColStd_Array1OfReal;
        BasisD1: var TColStd_Array1OfReal; BasisD2: var TColStd_Array1OfReal) {.
    importcpp: "D2", header: "PLib_Base.hxx".}
proc D3*(this: var PLib_Base; U: Standard_Real; BasisValue: var TColStd_Array1OfReal;
        BasisD1: var TColStd_Array1OfReal; BasisD2: var TColStd_Array1OfReal;
        BasisD3: var TColStd_Array1OfReal) {.importcpp: "D3", header: "PLib_Base.hxx".}
proc WorkDegree*(this: PLib_Base): Standard_Integer {.noSideEffect,
    importcpp: "WorkDegree", header: "PLib_Base.hxx".}
proc ReduceDegree*(this: PLib_Base; Dimension: Standard_Integer;
                  MaxDegree: Standard_Integer; Tol: Standard_Real;
                  BaseCoeff: var Standard_Real; NewDegree: var Standard_Integer;
                  MaxError: var Standard_Real) {.noSideEffect,
    importcpp: "ReduceDegree", header: "PLib_Base.hxx".}
type
  PLib_Basebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "PLib_Base::get_type_name(@)",
                              header: "PLib_Base.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PLib_Base::get_type_descriptor(@)", header: "PLib_Base.hxx".}
proc DynamicType*(this: PLib_Base): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "PLib_Base.hxx".}