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
  HLRBRepIntConicCurveOfCInter* {.importcpp: "HLRBRep_IntConicCurveOfCInter",
                                 header: "HLRBRep_IntConicCurveOfCInter.hxx",
                                 bycopy.} = object of IntRes2dIntersection ## ! Empty
                                                                      ## constructor.


proc constructHLRBRepIntConicCurveOfCInter*(): HLRBRepIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRepIntConicCurveOfCInter*(L: Lin2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat): HLRBRepIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRepIntConicCurveOfCInter*(c: Circ2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat): HLRBRepIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRepIntConicCurveOfCInter*(e: Elips2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat): HLRBRepIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRepIntConicCurveOfCInter*(prb: Parab2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat): HLRBRepIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc constructHLRBRepIntConicCurveOfCInter*(h: Hypr2d; d1: IntRes2dDomain;
    pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat): HLRBRepIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_IntConicCurveOfCInter(@)",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepIntConicCurveOfCInter; L: Lin2d; d1: IntRes2dDomain;
             pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat) {.
    importcpp: "Perform", header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepIntConicCurveOfCInter; c: Circ2d; d1: IntRes2dDomain;
             pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat) {.
    importcpp: "Perform", header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepIntConicCurveOfCInter; e: Elips2d; d1: IntRes2dDomain;
             pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat) {.
    importcpp: "Perform", header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepIntConicCurveOfCInter; prb: Parab2d;
             d1: IntRes2dDomain; pCurve: StandardAddress; d2: IntRes2dDomain;
             tolConf: cfloat; tol: cfloat) {.importcpp: "Perform",
    header: "HLRBRep_IntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepIntConicCurveOfCInter; h: Hypr2d; d1: IntRes2dDomain;
             pCurve: StandardAddress; d2: IntRes2dDomain; tolConf: cfloat; tol: cfloat) {.
    importcpp: "Perform", header: "HLRBRep_IntConicCurveOfCInter.hxx".}

























