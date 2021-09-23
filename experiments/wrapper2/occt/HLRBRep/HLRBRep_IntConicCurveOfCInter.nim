##  Created on: 1992-10-14
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../IntCurve/IntCurve_IntConicConic, HLRBRep_TheIntConicCurveOfCInter,
  ../IntRes2d/IntRes2d_Intersection, ../Standard/Standard_Address,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of IntCurve_IConicTool"
discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_TheIntConicCurveOfCInter"
discard "forward decl of gp_Lin2d"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
type
  HLRBRep_IntConicCurveOfCInter* {.importcpp: "HLRBRep_IntConicCurveOfCInter",
                                  header: "HLRBRep_IntConicCurveOfCInter.hxx",
                                  bycopy.} = object of IntRes2d_Intersection ## ! Empty
                                                                        ## constructor.


proc constructHLRBRep_IntConicCurveOfCInter*(): HLRBRep_IntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRep_IntConicCurveOfCInter*(L: gp_Lin2d; D1: IntRes2d_Domain;
    PCurve: Standard_Address; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): HLRBRep_IntConicCurveOfCInter {.constructor,
    importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRep_IntConicCurveOfCInter*(C: gp_Circ2d; D1: IntRes2d_Domain;
    PCurve: Standard_Address; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): HLRBRep_IntConicCurveOfCInter {.constructor,
    importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRep_IntConicCurveOfCInter*(E: gp_Elips2d; D1: IntRes2d_Domain;
    PCurve: Standard_Address; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): HLRBRep_IntConicCurveOfCInter {.constructor,
    importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRep_IntConicCurveOfCInter*(Prb: gp_Parab2d; D1: IntRes2d_Domain;
    PCurve: Standard_Address; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): HLRBRep_IntConicCurveOfCInter {.constructor,
    importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRep_IntConicCurveOfCInter*(H: gp_Hypr2d; D1: IntRes2d_Domain;
    PCurve: Standard_Address; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): HLRBRep_IntConicCurveOfCInter {.constructor,
    importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_IntConicCurveOfCInter; L: gp_Lin2d;
             D1: IntRes2d_Domain; PCurve: Standard_Address; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_IntConicCurveOfCInter; C: gp_Circ2d;
             D1: IntRes2d_Domain; PCurve: Standard_Address; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_IntConicCurveOfCInter; E: gp_Elips2d;
             D1: IntRes2d_Domain; PCurve: Standard_Address; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_IntConicCurveOfCInter; Prb: gp_Parab2d;
             D1: IntRes2d_Domain; PCurve: Standard_Address; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_IntConicCurveOfCInter; H: gp_Hypr2d;
             D1: IntRes2d_Domain; PCurve: Standard_Address; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}