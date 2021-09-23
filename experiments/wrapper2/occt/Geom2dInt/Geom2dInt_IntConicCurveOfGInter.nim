##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
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
  ../IntCurve/IntCurve_IntConicConic, Geom2dInt_TheIntConicCurveOfGInter,
  ../IntRes2d/IntRes2d_Intersection, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of IntCurve_IConicTool"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Geom2dInt_TheIntConicCurveOfGInter"
discard "forward decl of gp_Lin2d"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
type
  Geom2dInt_IntConicCurveOfGInter* {.importcpp: "Geom2dInt_IntConicCurveOfGInter", header: "Geom2dInt_IntConicCurveOfGInter.hxx",
                                    bycopy.} = object of IntRes2d_Intersection ## ! Empty
                                                                          ## constructor.


proc constructGeom2dInt_IntConicCurveOfGInter*(): Geom2dInt_IntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dInt_IntConicCurveOfGInter*(L: gp_Lin2d; D1: IntRes2d_Domain;
    PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): Geom2dInt_IntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dInt_IntConicCurveOfGInter*(C: gp_Circ2d; D1: IntRes2d_Domain;
    PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): Geom2dInt_IntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dInt_IntConicCurveOfGInter*(E: gp_Elips2d; D1: IntRes2d_Domain;
    PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): Geom2dInt_IntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dInt_IntConicCurveOfGInter*(Prb: gp_Parab2d;
    D1: IntRes2d_Domain; PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain;
    TolConf: Standard_Real; Tol: Standard_Real): Geom2dInt_IntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dInt_IntConicCurveOfGInter*(H: gp_Hypr2d; D1: IntRes2d_Domain;
    PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain; TolConf: Standard_Real;
    Tol: Standard_Real): Geom2dInt_IntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_IntConicCurveOfGInter; L: gp_Lin2d;
             D1: IntRes2d_Domain; PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_IntConicCurveOfGInter; C: gp_Circ2d;
             D1: IntRes2d_Domain; PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_IntConicCurveOfGInter; E: gp_Elips2d;
             D1: IntRes2d_Domain; PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_IntConicCurveOfGInter; Prb: gp_Parab2d;
             D1: IntRes2d_Domain; PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_IntConicCurveOfGInter; H: gp_Hypr2d;
             D1: IntRes2d_Domain; PCurve: Adaptor2d_Curve2d; D2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}