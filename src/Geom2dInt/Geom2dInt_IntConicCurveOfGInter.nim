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
  Geom2dIntIntConicCurveOfGInter* {.importcpp: "Geom2dInt_IntConicCurveOfGInter", header: "Geom2dInt_IntConicCurveOfGInter.hxx",
                                   bycopy.} = object of IntRes2dIntersection


proc `new`*(this: var Geom2dIntIntConicCurveOfGInter; theSize: csize_t): pointer {.
    importcpp: "Geom2dInt_IntConicCurveOfGInter::operator new",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntIntConicCurveOfGInter; theAddress: pointer) {.
    importcpp: "Geom2dInt_IntConicCurveOfGInter::operator delete",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc `new[]`*(this: var Geom2dIntIntConicCurveOfGInter; theSize: csize_t): pointer {.
    importcpp: "Geom2dInt_IntConicCurveOfGInter::operator new[]",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc `delete[]`*(this: var Geom2dIntIntConicCurveOfGInter; theAddress: pointer) {.
    importcpp: "Geom2dInt_IntConicCurveOfGInter::operator delete[]",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc `new`*(this: var Geom2dIntIntConicCurveOfGInter; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dInt_IntConicCurveOfGInter::operator new",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntIntConicCurveOfGInter; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dInt_IntConicCurveOfGInter::operator delete",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dIntIntConicCurveOfGInter*(): Geom2dIntIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dIntIntConicCurveOfGInter*(L: Lin2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: StandardReal;
    tol: StandardReal): Geom2dIntIntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dIntIntConicCurveOfGInter*(c: Circ2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: StandardReal;
    tol: StandardReal): Geom2dIntIntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dIntIntConicCurveOfGInter*(e: Elips2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: StandardReal;
    tol: StandardReal): Geom2dIntIntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dIntIntConicCurveOfGInter*(prb: Parab2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: StandardReal;
    tol: StandardReal): Geom2dIntIntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc constructGeom2dIntIntConicCurveOfGInter*(h: Hypr2d; d1: IntRes2dDomain;
    pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: StandardReal;
    tol: StandardReal): Geom2dIntIntConicCurveOfGInter {.constructor,
    importcpp: "Geom2dInt_IntConicCurveOfGInter(@)",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntIntConicCurveOfGInter; L: Lin2d; d1: IntRes2dDomain;
             pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: StandardReal;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntIntConicCurveOfGInter; c: Circ2d; d1: IntRes2dDomain;
             pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: StandardReal;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntIntConicCurveOfGInter; e: Elips2d;
             d1: IntRes2dDomain; pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain;
             tolConf: StandardReal; tol: StandardReal) {.importcpp: "Perform",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntIntConicCurveOfGInter; prb: Parab2d;
             d1: IntRes2dDomain; pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain;
             tolConf: StandardReal; tol: StandardReal) {.importcpp: "Perform",
    header: "Geom2dInt_IntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntIntConicCurveOfGInter; h: Hypr2d; d1: IntRes2dDomain;
             pCurve: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: StandardReal;
             tol: StandardReal) {.importcpp: "Perform",
                                header: "Geom2dInt_IntConicCurveOfGInter.hxx".}