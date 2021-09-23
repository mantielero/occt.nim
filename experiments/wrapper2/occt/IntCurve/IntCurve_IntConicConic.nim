##  Created on: 1992-04-27
##  Created by: Laurent BUCHARD
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
  ../Standard/Standard_Handle, IntCurve_IntImpConicParConic,
  ../IntRes2d/IntRes2d_Intersection, ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Lin2d"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
type
  IntCurve_IntConicConic* {.importcpp: "IntCurve_IntConicConic",
                           header: "IntCurve_IntConicConic.hxx", bycopy.} = object of IntRes2d_Intersection ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## Constructor


proc constructIntCurve_IntConicConic*(): IntCurve_IntConicConic {.constructor,
    importcpp: "IntCurve_IntConicConic(@)", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(L1: gp_Lin2d; D1: IntRes2d_Domain;
                                     L2: gp_Lin2d; D2: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; L1: gp_Lin2d; D1: IntRes2d_Domain;
             L2: gp_Lin2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(L: gp_Lin2d; DL: IntRes2d_Domain; C: gp_Circ2d;
                                     DC: IntRes2d_Domain; TolConf: Standard_Real;
                                     Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; L: gp_Lin2d; DL: IntRes2d_Domain;
             C: gp_Circ2d; DC: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(L: gp_Lin2d; DL: IntRes2d_Domain;
                                     E: gp_Elips2d; DE: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; L: gp_Lin2d; DL: IntRes2d_Domain;
             E: gp_Elips2d; DE: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(L: gp_Lin2d; DL: IntRes2d_Domain;
                                     P: gp_Parab2d; DP: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; L: gp_Lin2d; DL: IntRes2d_Domain;
             P: gp_Parab2d; DP: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(L: gp_Lin2d; DL: IntRes2d_Domain; H: gp_Hypr2d;
                                     DH: IntRes2d_Domain; TolConf: Standard_Real;
                                     Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; L: gp_Lin2d; DL: IntRes2d_Domain;
             H: gp_Hypr2d; DH: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(C1: gp_Circ2d; D1: IntRes2d_Domain;
                                     C2: gp_Circ2d; D2: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; C1: gp_Circ2d; D1: IntRes2d_Domain;
             C2: gp_Circ2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(C: gp_Circ2d; DC: IntRes2d_Domain;
                                     E: gp_Elips2d; DE: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; C: gp_Circ2d; DC: IntRes2d_Domain;
             E: gp_Elips2d; DE: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(C: gp_Circ2d; DC: IntRes2d_Domain;
                                     P: gp_Parab2d; DP: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; C: gp_Circ2d; DC: IntRes2d_Domain;
             P: gp_Parab2d; DP: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(C: gp_Circ2d; DC: IntRes2d_Domain;
                                     H: gp_Hypr2d; DH: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; C: gp_Circ2d; DC: IntRes2d_Domain;
             H: gp_Hypr2d; DH: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(E1: gp_Elips2d; D1: IntRes2d_Domain;
                                     E2: gp_Elips2d; D2: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; E1: gp_Elips2d; D1: IntRes2d_Domain;
             E2: gp_Elips2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(E: gp_Elips2d; DE: IntRes2d_Domain;
                                     P: gp_Parab2d; DP: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; E: gp_Elips2d; DE: IntRes2d_Domain;
             P: gp_Parab2d; DP: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(E: gp_Elips2d; DE: IntRes2d_Domain;
                                     H: gp_Hypr2d; DH: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; E: gp_Elips2d; DE: IntRes2d_Domain;
             H: gp_Hypr2d; DH: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(P1: gp_Parab2d; D1: IntRes2d_Domain;
                                     P2: gp_Parab2d; D2: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; P1: gp_Parab2d; D1: IntRes2d_Domain;
             P2: gp_Parab2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(P: gp_Parab2d; DP: IntRes2d_Domain;
                                     H: gp_Hypr2d; DH: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; P: gp_Parab2d; DP: IntRes2d_Domain;
             H: gp_Hypr2d; DH: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurve_IntConicConic*(H1: gp_Hypr2d; D1: IntRes2d_Domain;
                                     H2: gp_Hypr2d; D2: IntRes2d_Domain;
                                     TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc Perform*(this: var IntCurve_IntConicConic; H1: gp_Hypr2d; D1: IntRes2d_Domain;
             H2: gp_Hypr2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "IntCurve_IntConicConic.hxx".}