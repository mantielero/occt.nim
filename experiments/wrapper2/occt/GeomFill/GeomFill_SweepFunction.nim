##  Created on: 1997-11-20
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../gp/gp_Mat, ../gp/gp_Vec, ../Approx/Approx_SweepFunction,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfVec2d,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_SweepFunction"
discard "forward decl of GeomFill_SweepFunction"
type
  Handle_GeomFill_SweepFunction* = handle[GeomFill_SweepFunction]

## ! Function to approximate by SweepApproximation from
## ! Approx. To bulid general sweep Surface.

type
  GeomFill_SweepFunction* {.importcpp: "GeomFill_SweepFunction",
                           header: "GeomFill_SweepFunction.hxx", bycopy.} = object of Approx_SweepFunction


proc constructGeomFill_SweepFunction*(Section: handle[GeomFill_SectionLaw];
                                     Location: handle[GeomFill_LocationLaw];
                                     FirstParameter: Standard_Real;
                                     FirstParameterOnS: Standard_Real;
                                     RatioParameterOnS: Standard_Real): GeomFill_SweepFunction {.
    constructor, importcpp: "GeomFill_SweepFunction(@)",
    header: "GeomFill_SweepFunction.hxx".}
proc D0*(this: var GeomFill_SweepFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        Poles2d: var TColgp_Array1OfPnt2d; Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_SweepFunction.hxx".}
proc D1*(this: var GeomFill_SweepFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        DPoles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
        DPoles2d: var TColgp_Array1OfVec2d; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.importcpp: "D1",
    header: "GeomFill_SweepFunction.hxx".}
proc D2*(this: var GeomFill_SweepFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        DPoles: var TColgp_Array1OfVec; D2Poles: var TColgp_Array1OfVec;
        Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
        D2Poles2d: var TColgp_Array1OfVec2d; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal; D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_SweepFunction.hxx".}
proc Nb2dCurves*(this: GeomFill_SweepFunction): Standard_Integer {.noSideEffect,
    importcpp: "Nb2dCurves", header: "GeomFill_SweepFunction.hxx".}
proc SectionShape*(this: GeomFill_SweepFunction; NbPoles: var Standard_Integer;
                  NbKnots: var Standard_Integer; Degree: var Standard_Integer) {.
    noSideEffect, importcpp: "SectionShape", header: "GeomFill_SweepFunction.hxx".}
proc Knots*(this: GeomFill_SweepFunction; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_SweepFunction.hxx".}
proc Mults*(this: GeomFill_SweepFunction; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_SweepFunction.hxx".}
proc IsRational*(this: GeomFill_SweepFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_SweepFunction.hxx".}
proc NbIntervals*(this: GeomFill_SweepFunction; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_SweepFunction.hxx".}
proc Intervals*(this: GeomFill_SweepFunction; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_SweepFunction.hxx".}
proc SetInterval*(this: var GeomFill_SweepFunction; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_SweepFunction.hxx".}
proc Resolution*(this: GeomFill_SweepFunction; Index: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "GeomFill_SweepFunction.hxx".}
proc GetTolerance*(this: GeomFill_SweepFunction; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_SweepFunction.hxx".}
proc SetTolerance*(this: var GeomFill_SweepFunction; Tol3d: Standard_Real;
                  Tol2d: Standard_Real) {.importcpp: "SetTolerance",
                                        header: "GeomFill_SweepFunction.hxx".}
proc BarycentreOfSurf*(this: GeomFill_SweepFunction): gp_Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_SweepFunction.hxx".}
proc MaximalSection*(this: GeomFill_SweepFunction): Standard_Real {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_SweepFunction.hxx".}
proc GetMinimalWeight*(this: GeomFill_SweepFunction;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "GeomFill_SweepFunction.hxx".}
type
  GeomFill_SweepFunctionbase_type* = Approx_SweepFunction

proc get_type_name*(): cstring {.importcpp: "GeomFill_SweepFunction::get_type_name(@)",
                              header: "GeomFill_SweepFunction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_SweepFunction::get_type_descriptor(@)",
    header: "GeomFill_SweepFunction.hxx".}
proc DynamicType*(this: GeomFill_SweepFunction): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_SweepFunction.hxx".}