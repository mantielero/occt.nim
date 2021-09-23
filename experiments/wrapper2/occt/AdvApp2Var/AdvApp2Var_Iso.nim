##  Created on: 1996-04-09
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_IsoType,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray2OfReal, AdvApp2Var_EvaluatorFunc2Var

discard "forward decl of AdvApp2Var_Context"
discard "forward decl of AdvApp2Var_Node"
type
  AdvApp2Var_Iso* {.importcpp: "AdvApp2Var_Iso", header: "AdvApp2Var_Iso.hxx", bycopy.} = object of Standard_Transient

  AdvApp2Var_Isobase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "AdvApp2Var_Iso::get_type_name(@)",
                              header: "AdvApp2Var_Iso.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AdvApp2Var_Iso::get_type_descriptor(@)",
    header: "AdvApp2Var_Iso.hxx".}
proc DynamicType*(this: AdvApp2Var_Iso): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AdvApp2Var_Iso.hxx".}
proc constructAdvApp2Var_Iso*(): AdvApp2Var_Iso {.constructor,
    importcpp: "AdvApp2Var_Iso(@)", header: "AdvApp2Var_Iso.hxx".}
proc constructAdvApp2Var_Iso*(`type`: GeomAbs_IsoType; iu: Standard_Integer;
                             iv: Standard_Integer): AdvApp2Var_Iso {.constructor,
    importcpp: "AdvApp2Var_Iso(@)", header: "AdvApp2Var_Iso.hxx".}
proc constructAdvApp2Var_Iso*(`type`: GeomAbs_IsoType; cte: Standard_Real;
                             Ufirst: Standard_Real; Ulast: Standard_Real;
                             Vfirst: Standard_Real; Vlast: Standard_Real;
                             pos: Standard_Integer; iu: Standard_Integer;
                             iv: Standard_Integer): AdvApp2Var_Iso {.constructor,
    importcpp: "AdvApp2Var_Iso(@)", header: "AdvApp2Var_Iso.hxx".}
proc IsApproximated*(this: AdvApp2Var_Iso): Standard_Boolean {.noSideEffect,
    importcpp: "IsApproximated", header: "AdvApp2Var_Iso.hxx".}
proc HasResult*(this: AdvApp2Var_Iso): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "AdvApp2Var_Iso.hxx".}
proc MakeApprox*(this: var AdvApp2Var_Iso; Conditions: AdvApp2Var_Context;
                a: Standard_Real; b: Standard_Real; c: Standard_Real;
                d: Standard_Real; `func`: AdvApp2Var_EvaluatorFunc2Var;
                NodeBegin: var AdvApp2Var_Node; NodeEnd: var AdvApp2Var_Node) {.
    importcpp: "MakeApprox", header: "AdvApp2Var_Iso.hxx".}
proc ChangeDomain*(this: var AdvApp2Var_Iso; a: Standard_Real; b: Standard_Real) {.
    importcpp: "ChangeDomain", header: "AdvApp2Var_Iso.hxx".}
proc ChangeDomain*(this: var AdvApp2Var_Iso; a: Standard_Real; b: Standard_Real;
                  c: Standard_Real; d: Standard_Real) {.importcpp: "ChangeDomain",
    header: "AdvApp2Var_Iso.hxx".}
proc SetConstante*(this: var AdvApp2Var_Iso; newcte: Standard_Real) {.
    importcpp: "SetConstante", header: "AdvApp2Var_Iso.hxx".}
proc SetPosition*(this: var AdvApp2Var_Iso; newpos: Standard_Integer) {.
    importcpp: "SetPosition", header: "AdvApp2Var_Iso.hxx".}
proc ResetApprox*(this: var AdvApp2Var_Iso) {.importcpp: "ResetApprox",
    header: "AdvApp2Var_Iso.hxx".}
proc OverwriteApprox*(this: var AdvApp2Var_Iso) {.importcpp: "OverwriteApprox",
    header: "AdvApp2Var_Iso.hxx".}
proc Type*(this: AdvApp2Var_Iso): GeomAbs_IsoType {.noSideEffect, importcpp: "Type",
    header: "AdvApp2Var_Iso.hxx".}
proc Constante*(this: AdvApp2Var_Iso): Standard_Real {.noSideEffect,
    importcpp: "Constante", header: "AdvApp2Var_Iso.hxx".}
proc T0*(this: AdvApp2Var_Iso): Standard_Real {.noSideEffect, importcpp: "T0",
    header: "AdvApp2Var_Iso.hxx".}
proc T1*(this: AdvApp2Var_Iso): Standard_Real {.noSideEffect, importcpp: "T1",
    header: "AdvApp2Var_Iso.hxx".}
proc U0*(this: AdvApp2Var_Iso): Standard_Real {.noSideEffect, importcpp: "U0",
    header: "AdvApp2Var_Iso.hxx".}
proc U1*(this: AdvApp2Var_Iso): Standard_Real {.noSideEffect, importcpp: "U1",
    header: "AdvApp2Var_Iso.hxx".}
proc V0*(this: AdvApp2Var_Iso): Standard_Real {.noSideEffect, importcpp: "V0",
    header: "AdvApp2Var_Iso.hxx".}
proc V1*(this: AdvApp2Var_Iso): Standard_Real {.noSideEffect, importcpp: "V1",
    header: "AdvApp2Var_Iso.hxx".}
proc UOrder*(this: AdvApp2Var_Iso): Standard_Integer {.noSideEffect,
    importcpp: "UOrder", header: "AdvApp2Var_Iso.hxx".}
proc VOrder*(this: AdvApp2Var_Iso): Standard_Integer {.noSideEffect,
    importcpp: "VOrder", header: "AdvApp2Var_Iso.hxx".}
proc Position*(this: AdvApp2Var_Iso): Standard_Integer {.noSideEffect,
    importcpp: "Position", header: "AdvApp2Var_Iso.hxx".}
proc NbCoeff*(this: AdvApp2Var_Iso): Standard_Integer {.noSideEffect,
    importcpp: "NbCoeff", header: "AdvApp2Var_Iso.hxx".}
proc Polynom*(this: AdvApp2Var_Iso): handle[TColStd_HArray1OfReal] {.noSideEffect,
    importcpp: "Polynom", header: "AdvApp2Var_Iso.hxx".}
proc SomTab*(this: AdvApp2Var_Iso): handle[TColStd_HArray1OfReal] {.noSideEffect,
    importcpp: "SomTab", header: "AdvApp2Var_Iso.hxx".}
proc DifTab*(this: AdvApp2Var_Iso): handle[TColStd_HArray1OfReal] {.noSideEffect,
    importcpp: "DifTab", header: "AdvApp2Var_Iso.hxx".}
proc MaxErrors*(this: AdvApp2Var_Iso): handle[TColStd_HArray2OfReal] {.noSideEffect,
    importcpp: "MaxErrors", header: "AdvApp2Var_Iso.hxx".}
proc MoyErrors*(this: AdvApp2Var_Iso): handle[TColStd_HArray2OfReal] {.noSideEffect,
    importcpp: "MoyErrors", header: "AdvApp2Var_Iso.hxx".}