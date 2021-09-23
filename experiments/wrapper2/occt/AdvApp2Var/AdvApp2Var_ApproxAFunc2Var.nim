##  Created on: 1996-02-14
##  Created by: Joelle CHAUVET
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray2OfReal,
  ../Standard/Standard_Real, ../GeomAbs/GeomAbs_IsoType, ../GeomAbs/GeomAbs_Shape,
  AdvApp2Var_Context, AdvApp2Var_Network, AdvApp2Var_Framework,
  ../Standard/Standard_Boolean, ../TColGeom/TColGeom_HArray1OfSurface,
  AdvApp2Var_EvaluatorFunc2Var, ../Standard/Standard_OStream

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AdvApprox_Cutting"
discard "forward decl of AdvApp2Var_Criterion"
discard "forward decl of Geom_BSplineSurface"
type
  AdvApp2Var_ApproxAFunc2Var* {.importcpp: "AdvApp2Var_ApproxAFunc2Var",
                               header: "AdvApp2Var_ApproxAFunc2Var.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Initialisation
                                                                                      ## of
                                                                                      ## the
                                                                                      ## approximation
                                                                                      ## ;
                                                                                      ## used
                                                                                      ## by
                                                                                      ## Create


proc constructAdvApp2Var_ApproxAFunc2Var*(Num1DSS: Standard_Integer;
    Num2DSS: Standard_Integer; Num3DSS: Standard_Integer;
    OneDTol: handle[TColStd_HArray1OfReal];
    TwoDTol: handle[TColStd_HArray1OfReal];
    ThreeDTol: handle[TColStd_HArray1OfReal];
    OneDTolFr: handle[TColStd_HArray2OfReal];
    TwoDTolFr: handle[TColStd_HArray2OfReal];
    ThreeDTolFr: handle[TColStd_HArray2OfReal]; FirstInU: Standard_Real;
    LastInU: Standard_Real; FirstInV: Standard_Real; LastInV: Standard_Real;
    FavorIso: GeomAbs_IsoType; ContInU: GeomAbs_Shape; ContInV: GeomAbs_Shape;
    PrecisCode: Standard_Integer; MaxDegInU: Standard_Integer;
    MaxDegInV: Standard_Integer; MaxPatch: Standard_Integer;
    Func: AdvApp2Var_EvaluatorFunc2Var; UChoice: var AdvApprox_Cutting;
    VChoice: var AdvApprox_Cutting): AdvApp2Var_ApproxAFunc2Var {.constructor,
    importcpp: "AdvApp2Var_ApproxAFunc2Var(@)",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc constructAdvApp2Var_ApproxAFunc2Var*(Num1DSS: Standard_Integer;
    Num2DSS: Standard_Integer; Num3DSS: Standard_Integer;
    OneDTol: handle[TColStd_HArray1OfReal];
    TwoDTol: handle[TColStd_HArray1OfReal];
    ThreeDTol: handle[TColStd_HArray1OfReal];
    OneDTolFr: handle[TColStd_HArray2OfReal];
    TwoDTolFr: handle[TColStd_HArray2OfReal];
    ThreeDTolFr: handle[TColStd_HArray2OfReal]; FirstInU: Standard_Real;
    LastInU: Standard_Real; FirstInV: Standard_Real; LastInV: Standard_Real;
    FavorIso: GeomAbs_IsoType; ContInU: GeomAbs_Shape; ContInV: GeomAbs_Shape;
    PrecisCode: Standard_Integer; MaxDegInU: Standard_Integer;
    MaxDegInV: Standard_Integer; MaxPatch: Standard_Integer;
    Func: AdvApp2Var_EvaluatorFunc2Var; Crit: AdvApp2Var_Criterion;
    UChoice: var AdvApprox_Cutting; VChoice: var AdvApprox_Cutting): AdvApp2Var_ApproxAFunc2Var {.
    constructor, importcpp: "AdvApp2Var_ApproxAFunc2Var(@)",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc IsDone*(this: AdvApp2Var_ApproxAFunc2Var): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc HasResult*(this: AdvApp2Var_ApproxAFunc2Var): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc Surface*(this: AdvApp2Var_ApproxAFunc2Var; Index: Standard_Integer): handle[
    Geom_BSplineSurface] {.noSideEffect, importcpp: "Surface",
                          header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc UDegree*(this: AdvApp2Var_ApproxAFunc2Var): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc VDegree*(this: AdvApp2Var_ApproxAFunc2Var): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc NumSubSpaces*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NumSubSpaces",
    header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc MaxError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "MaxError",
                            header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc AverageError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "AverageError",
                            header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc UFrontError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "UFrontError",
                            header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc VFrontError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "VFrontError",
                            header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc MaxError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer;
              Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "MaxError", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc AverageError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer;
                  Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "AverageError", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc UFrontError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer;
                 Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "UFrontError", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc VFrontError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer;
                 Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "VFrontError", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc CritError*(this: AdvApp2Var_ApproxAFunc2Var; Dimension: Standard_Integer;
               Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "CritError", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}
proc Dump*(this: AdvApp2Var_ApproxAFunc2Var; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AdvApp2Var_ApproxAFunc2Var.hxx".}