##  Created on: 1997-06-25
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColStd/TColStd_Array1OfReal, ../TColgp/TColgp_Array1OfVec,
  ../TColgp/TColgp_Array1OfVec2d, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfInteger, ../GeomAbs/GeomAbs_Shape

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Approx_SweepFunction"
discard "forward decl of Approx_SweepFunction"
type
  Handle_Approx_SweepFunction* = handle[Approx_SweepFunction]

## ! defined the function used by SweepApproximation to
## ! perform sweeping application.

type
  Approx_SweepFunction* {.importcpp: "Approx_SweepFunction",
                         header: "Approx_SweepFunction.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## compute
                                                                                              ## the
                                                                                              ## section
                                                                                              ## for
                                                                                              ## v
                                                                                              ## =
                                                                                              ## param


proc D0*(this: var Approx_SweepFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        Poles2d: var TColgp_Array1OfPnt2d; Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D0", header: "Approx_SweepFunction.hxx".}
proc D1*(this: var Approx_SweepFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        DPoles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
        DPoles2d: var TColgp_Array1OfVec2d; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.importcpp: "D1",
    header: "Approx_SweepFunction.hxx".}
proc D2*(this: var Approx_SweepFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        DPoles: var TColgp_Array1OfVec; D2Poles: var TColgp_Array1OfVec;
        Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
        D2Poles2d: var TColgp_Array1OfVec2d; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal; D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D2", header: "Approx_SweepFunction.hxx".}
proc Nb2dCurves*(this: Approx_SweepFunction): Standard_Integer {.noSideEffect,
    importcpp: "Nb2dCurves", header: "Approx_SweepFunction.hxx".}
proc SectionShape*(this: Approx_SweepFunction; NbPoles: var Standard_Integer;
                  NbKnots: var Standard_Integer; Degree: var Standard_Integer) {.
    noSideEffect, importcpp: "SectionShape", header: "Approx_SweepFunction.hxx".}
proc Knots*(this: Approx_SweepFunction; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "Approx_SweepFunction.hxx".}
proc Mults*(this: Approx_SweepFunction; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "Approx_SweepFunction.hxx".}
proc IsRational*(this: Approx_SweepFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Approx_SweepFunction.hxx".}
proc NbIntervals*(this: Approx_SweepFunction; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Approx_SweepFunction.hxx".}
proc Intervals*(this: Approx_SweepFunction; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "Approx_SweepFunction.hxx".}
proc SetInterval*(this: var Approx_SweepFunction; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "Approx_SweepFunction.hxx".}
proc Resolution*(this: Approx_SweepFunction; Index: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "Approx_SweepFunction.hxx".}
proc GetTolerance*(this: Approx_SweepFunction; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "Approx_SweepFunction.hxx".}
proc SetTolerance*(this: var Approx_SweepFunction; Tol3d: Standard_Real;
                  Tol2d: Standard_Real) {.importcpp: "SetTolerance",
                                        header: "Approx_SweepFunction.hxx".}
proc BarycentreOfSurf*(this: Approx_SweepFunction): gp_Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "Approx_SweepFunction.hxx".}
proc MaximalSection*(this: Approx_SweepFunction): Standard_Real {.noSideEffect,
    importcpp: "MaximalSection", header: "Approx_SweepFunction.hxx".}
proc GetMinimalWeight*(this: Approx_SweepFunction;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "Approx_SweepFunction.hxx".}
type
  Approx_SweepFunctionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Approx_SweepFunction::get_type_name(@)",
                              header: "Approx_SweepFunction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Approx_SweepFunction::get_type_descriptor(@)",
    header: "Approx_SweepFunction.hxx".}
proc DynamicType*(this: Approx_SweepFunction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Approx_SweepFunction.hxx".}