##  Created on: 1998-05-12
##  Created by: Philippe NOUAILLE
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Address,
  ../math/math_Vector, ../Blend/Blend_Point, ../gp/gp_Pnt,
  ../Approx/Approx_SweepFunction, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfVec2d,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of BRepBlend_Line"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Blend_AppFunction"
discard "forward decl of gp_Pnt"
discard "forward decl of Blend_Point"
discard "forward decl of BRepBlend_AppFuncRoot"
discard "forward decl of BRepBlend_AppFuncRoot"
type
  Handle_BRepBlend_AppFuncRoot* = handle[BRepBlend_AppFuncRoot]

## ! Function to approximate by AppSurface

type
  BRepBlend_AppFuncRoot* {.importcpp: "BRepBlend_AppFuncRoot",
                          header: "BRepBlend_AppFuncRoot.hxx", bycopy.} = object of Approx_SweepFunction ##
                                                                                                  ## !
                                                                                                  ## compute
                                                                                                  ## the
                                                                                                  ## section
                                                                                                  ## for
                                                                                                  ## v
                                                                                                  ## =
                                                                                                  ## param


proc D0*(this: var BRepBlend_AppFuncRoot; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        Poles2d: var TColgp_Array1OfPnt2d; Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D0", header: "BRepBlend_AppFuncRoot.hxx".}
proc D1*(this: var BRepBlend_AppFuncRoot; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        DPoles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
        DPoles2d: var TColgp_Array1OfVec2d; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.importcpp: "D1",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc D2*(this: var BRepBlend_AppFuncRoot; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        DPoles: var TColgp_Array1OfVec; D2Poles: var TColgp_Array1OfVec;
        Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
        D2Poles2d: var TColgp_Array1OfVec2d; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal; D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D2", header: "BRepBlend_AppFuncRoot.hxx".}
proc Nb2dCurves*(this: BRepBlend_AppFuncRoot): Standard_Integer {.noSideEffect,
    importcpp: "Nb2dCurves", header: "BRepBlend_AppFuncRoot.hxx".}
proc SectionShape*(this: BRepBlend_AppFuncRoot; NbPoles: var Standard_Integer;
                  NbKnots: var Standard_Integer; Degree: var Standard_Integer) {.
    noSideEffect, importcpp: "SectionShape", header: "BRepBlend_AppFuncRoot.hxx".}
proc Knots*(this: BRepBlend_AppFuncRoot; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "BRepBlend_AppFuncRoot.hxx".}
proc Mults*(this: BRepBlend_AppFuncRoot; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "BRepBlend_AppFuncRoot.hxx".}
proc IsRational*(this: BRepBlend_AppFuncRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepBlend_AppFuncRoot.hxx".}
proc NbIntervals*(this: BRepBlend_AppFuncRoot; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BRepBlend_AppFuncRoot.hxx".}
proc Intervals*(this: BRepBlend_AppFuncRoot; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "BRepBlend_AppFuncRoot.hxx".}
proc SetInterval*(this: var BRepBlend_AppFuncRoot; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "BRepBlend_AppFuncRoot.hxx".}
proc Resolution*(this: BRepBlend_AppFuncRoot; Index: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "BRepBlend_AppFuncRoot.hxx".}
proc GetTolerance*(this: BRepBlend_AppFuncRoot; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepBlend_AppFuncRoot.hxx".}
proc SetTolerance*(this: var BRepBlend_AppFuncRoot; Tol3d: Standard_Real;
                  Tol2d: Standard_Real) {.importcpp: "SetTolerance",
                                        header: "BRepBlend_AppFuncRoot.hxx".}
proc BarycentreOfSurf*(this: BRepBlend_AppFuncRoot): gp_Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "BRepBlend_AppFuncRoot.hxx".}
proc MaximalSection*(this: BRepBlend_AppFuncRoot): Standard_Real {.noSideEffect,
    importcpp: "MaximalSection", header: "BRepBlend_AppFuncRoot.hxx".}
proc GetMinimalWeight*(this: BRepBlend_AppFuncRoot;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BRepBlend_AppFuncRoot.hxx".}
proc Point*(this: BRepBlend_AppFuncRoot; Func: Blend_AppFunction;
           Param: Standard_Real; Sol: math_Vector; Pnt: var Blend_Point) {.
    noSideEffect, importcpp: "Point", header: "BRepBlend_AppFuncRoot.hxx".}
proc Vec*(this: BRepBlend_AppFuncRoot; Sol: var math_Vector; Pnt: Blend_Point) {.
    noSideEffect, importcpp: "Vec", header: "BRepBlend_AppFuncRoot.hxx".}
type
  BRepBlend_AppFuncRootbase_type* = Approx_SweepFunction

proc get_type_name*(): cstring {.importcpp: "BRepBlend_AppFuncRoot::get_type_name(@)",
                              header: "BRepBlend_AppFuncRoot.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepBlend_AppFuncRoot::get_type_descriptor(@)",
    header: "BRepBlend_AppFuncRoot.hxx".}
proc DynamicType*(this: BRepBlend_AppFuncRoot): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepBlend_AppFuncRoot.hxx".}