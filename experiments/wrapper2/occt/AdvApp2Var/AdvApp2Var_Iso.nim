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

discard "forward decl of AdvApp2Var_Context"
discard "forward decl of AdvApp2Var_Node"
type
  AdvApp2VarIso* {.importcpp: "AdvApp2Var_Iso", header: "AdvApp2Var_Iso.hxx", bycopy.} = object of StandardTransient

  AdvApp2VarIsobaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "AdvApp2Var_Iso::get_type_name(@)",
                            header: "AdvApp2Var_Iso.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AdvApp2Var_Iso::get_type_descriptor(@)",
    header: "AdvApp2Var_Iso.hxx".}
proc dynamicType*(this: AdvApp2VarIso): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AdvApp2Var_Iso.hxx".}
proc constructAdvApp2VarIso*(): AdvApp2VarIso {.constructor,
    importcpp: "AdvApp2Var_Iso(@)", header: "AdvApp2Var_Iso.hxx".}
proc constructAdvApp2VarIso*(`type`: GeomAbsIsoType; iu: int; iv: int): AdvApp2VarIso {.
    constructor, importcpp: "AdvApp2Var_Iso(@)", header: "AdvApp2Var_Iso.hxx".}
proc constructAdvApp2VarIso*(`type`: GeomAbsIsoType; cte: float; ufirst: float;
                            ulast: float; vfirst: float; vlast: float; pos: int;
                            iu: int; iv: int): AdvApp2VarIso {.constructor,
    importcpp: "AdvApp2Var_Iso(@)", header: "AdvApp2Var_Iso.hxx".}
proc isApproximated*(this: AdvApp2VarIso): bool {.noSideEffect,
    importcpp: "IsApproximated", header: "AdvApp2Var_Iso.hxx".}
proc hasResult*(this: AdvApp2VarIso): bool {.noSideEffect, importcpp: "HasResult",
    header: "AdvApp2Var_Iso.hxx".}
proc makeApprox*(this: var AdvApp2VarIso; conditions: AdvApp2VarContext; a: float;
                b: float; c: float; d: float; `func`: AdvApp2VarEvaluatorFunc2Var;
                nodeBegin: var AdvApp2VarNode; nodeEnd: var AdvApp2VarNode) {.
    importcpp: "MakeApprox", header: "AdvApp2Var_Iso.hxx".}
proc changeDomain*(this: var AdvApp2VarIso; a: float; b: float) {.
    importcpp: "ChangeDomain", header: "AdvApp2Var_Iso.hxx".}
proc changeDomain*(this: var AdvApp2VarIso; a: float; b: float; c: float; d: float) {.
    importcpp: "ChangeDomain", header: "AdvApp2Var_Iso.hxx".}
proc setConstante*(this: var AdvApp2VarIso; newcte: float) {.
    importcpp: "SetConstante", header: "AdvApp2Var_Iso.hxx".}
proc setPosition*(this: var AdvApp2VarIso; newpos: int) {.importcpp: "SetPosition",
    header: "AdvApp2Var_Iso.hxx".}
proc resetApprox*(this: var AdvApp2VarIso) {.importcpp: "ResetApprox",
    header: "AdvApp2Var_Iso.hxx".}
proc overwriteApprox*(this: var AdvApp2VarIso) {.importcpp: "OverwriteApprox",
    header: "AdvApp2Var_Iso.hxx".}
proc `type`*(this: AdvApp2VarIso): GeomAbsIsoType {.noSideEffect, importcpp: "Type",
    header: "AdvApp2Var_Iso.hxx".}
proc constante*(this: AdvApp2VarIso): float {.noSideEffect, importcpp: "Constante",
    header: "AdvApp2Var_Iso.hxx".}
proc t0*(this: AdvApp2VarIso): float {.noSideEffect, importcpp: "T0",
                                   header: "AdvApp2Var_Iso.hxx".}
proc t1*(this: AdvApp2VarIso): float {.noSideEffect, importcpp: "T1",
                                   header: "AdvApp2Var_Iso.hxx".}
proc u0*(this: AdvApp2VarIso): float {.noSideEffect, importcpp: "U0",
                                   header: "AdvApp2Var_Iso.hxx".}
proc u1*(this: AdvApp2VarIso): float {.noSideEffect, importcpp: "U1",
                                   header: "AdvApp2Var_Iso.hxx".}
proc v0*(this: AdvApp2VarIso): float {.noSideEffect, importcpp: "V0",
                                   header: "AdvApp2Var_Iso.hxx".}
proc v1*(this: AdvApp2VarIso): float {.noSideEffect, importcpp: "V1",
                                   header: "AdvApp2Var_Iso.hxx".}
proc uOrder*(this: AdvApp2VarIso): int {.noSideEffect, importcpp: "UOrder",
                                     header: "AdvApp2Var_Iso.hxx".}
proc vOrder*(this: AdvApp2VarIso): int {.noSideEffect, importcpp: "VOrder",
                                     header: "AdvApp2Var_Iso.hxx".}
proc position*(this: AdvApp2VarIso): int {.noSideEffect, importcpp: "Position",
                                       header: "AdvApp2Var_Iso.hxx".}
proc nbCoeff*(this: AdvApp2VarIso): int {.noSideEffect, importcpp: "NbCoeff",
                                      header: "AdvApp2Var_Iso.hxx".}
proc polynom*(this: AdvApp2VarIso): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "Polynom", header: "AdvApp2Var_Iso.hxx".}
proc somTab*(this: AdvApp2VarIso): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "SomTab", header: "AdvApp2Var_Iso.hxx".}
proc difTab*(this: AdvApp2VarIso): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "DifTab", header: "AdvApp2Var_Iso.hxx".}
proc maxErrors*(this: AdvApp2VarIso): Handle[TColStdHArray2OfReal] {.noSideEffect,
    importcpp: "MaxErrors", header: "AdvApp2Var_Iso.hxx".}
proc moyErrors*(this: AdvApp2VarIso): Handle[TColStdHArray2OfReal] {.noSideEffect,
    importcpp: "MoyErrors", header: "AdvApp2Var_Iso.hxx".}
