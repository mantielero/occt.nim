##  Created on: 1998-02-26
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Adaptor3d/Adaptor3d_Curve, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_CurveType

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomFill_SnglrFunc* {.importcpp: "GeomFill_SnglrFunc",
                       header: "GeomFill_SnglrFunc.hxx", bycopy.} = object of Adaptor3d_Curve


proc constructGeomFill_SnglrFunc*(HC: handle[Adaptor3d_HCurve]): GeomFill_SnglrFunc {.
    constructor, importcpp: "GeomFill_SnglrFunc(@)",
    header: "GeomFill_SnglrFunc.hxx".}
proc SetRatio*(this: var GeomFill_SnglrFunc; Ratio: Standard_Real) {.
    importcpp: "SetRatio", header: "GeomFill_SnglrFunc.hxx".}
proc FirstParameter*(this: GeomFill_SnglrFunc): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "GeomFill_SnglrFunc.hxx".}
proc LastParameter*(this: GeomFill_SnglrFunc): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "GeomFill_SnglrFunc.hxx".}
proc NbIntervals*(this: GeomFill_SnglrFunc; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_SnglrFunc.hxx".}
proc Intervals*(this: GeomFill_SnglrFunc; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_SnglrFunc.hxx".}
proc Value*(this: GeomFill_SnglrFunc; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "GeomFill_SnglrFunc.hxx".}
proc IsPeriodic*(this: GeomFill_SnglrFunc): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "GeomFill_SnglrFunc.hxx".}
proc Period*(this: GeomFill_SnglrFunc): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "GeomFill_SnglrFunc.hxx".}
proc D0*(this: GeomFill_SnglrFunc; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "GeomFill_SnglrFunc.hxx".}
proc D1*(this: GeomFill_SnglrFunc; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomFill_SnglrFunc.hxx".}
proc D2*(this: GeomFill_SnglrFunc; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "GeomFill_SnglrFunc.hxx".}
proc D3*(this: GeomFill_SnglrFunc; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "GeomFill_SnglrFunc.hxx".}
proc DN*(this: GeomFill_SnglrFunc; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "GeomFill_SnglrFunc.hxx".}
proc Resolution*(this: GeomFill_SnglrFunc; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "GeomFill_SnglrFunc.hxx".}
proc GetType*(this: GeomFill_SnglrFunc): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "GeomFill_SnglrFunc.hxx".}