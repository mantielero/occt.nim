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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Lin2d"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
type
  IntCurveIntConicConic* {.importcpp: "IntCurve_IntConicConic",
                          header: "IntCurve_IntConicConic.hxx", bycopy.} = object of IntRes2dIntersection ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## Constructor


proc constructIntCurveIntConicConic*(): IntCurveIntConicConic {.constructor,
    importcpp: "IntCurve_IntConicConic(@)", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(l1: Lin2d; d1: IntRes2dDomain; l2: Lin2d;
                                    d2: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; l1: Lin2d; d1: IntRes2dDomain; l2: Lin2d;
             d2: IntRes2dDomain; tolConf: float; tol: float) {.importcpp: "Perform",
    header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(L: Lin2d; dl: IntRes2dDomain; c: Circ2d;
                                    dc: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; L: Lin2d; dl: IntRes2dDomain; c: Circ2d;
             dc: IntRes2dDomain; tolConf: float; tol: float) {.importcpp: "Perform",
    header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(L: Lin2d; dl: IntRes2dDomain; e: Elips2d;
                                    de: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; L: Lin2d; dl: IntRes2dDomain; e: Elips2d;
             de: IntRes2dDomain; tolConf: float; tol: float) {.importcpp: "Perform",
    header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(L: Lin2d; dl: IntRes2dDomain; p: Parab2d;
                                    dp: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; L: Lin2d; dl: IntRes2dDomain; p: Parab2d;
             dp: IntRes2dDomain; tolConf: float; tol: float) {.importcpp: "Perform",
    header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(L: Lin2d; dl: IntRes2dDomain; h: Hypr2d;
                                    dh: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; L: Lin2d; dl: IntRes2dDomain; h: Hypr2d;
             dh: IntRes2dDomain; tolConf: float; tol: float) {.importcpp: "Perform",
    header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(c1: Circ2d; d1: IntRes2dDomain; c2: Circ2d;
                                    d2: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; c1: Circ2d; d1: IntRes2dDomain;
             c2: Circ2d; d2: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(c: Circ2d; dc: IntRes2dDomain; e: Elips2d;
                                    de: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; c: Circ2d; dc: IntRes2dDomain;
             e: Elips2d; de: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(c: Circ2d; dc: IntRes2dDomain; p: Parab2d;
                                    dp: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; c: Circ2d; dc: IntRes2dDomain;
             p: Parab2d; dp: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(c: Circ2d; dc: IntRes2dDomain; h: Hypr2d;
                                    dh: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; c: Circ2d; dc: IntRes2dDomain; h: Hypr2d;
             dh: IntRes2dDomain; tolConf: float; tol: float) {.importcpp: "Perform",
    header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(e1: Elips2d; d1: IntRes2dDomain; e2: Elips2d;
                                    d2: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; e1: Elips2d; d1: IntRes2dDomain;
             e2: Elips2d; d2: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(e: Elips2d; de: IntRes2dDomain; p: Parab2d;
                                    dp: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; e: Elips2d; de: IntRes2dDomain;
             p: Parab2d; dp: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(e: Elips2d; de: IntRes2dDomain; h: Hypr2d;
                                    dh: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; e: Elips2d; de: IntRes2dDomain;
             h: Hypr2d; dh: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(p1: Parab2d; d1: IntRes2dDomain; p2: Parab2d;
                                    d2: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; p1: Parab2d; d1: IntRes2dDomain;
             p2: Parab2d; d2: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(p: Parab2d; dp: IntRes2dDomain; h: Hypr2d;
                                    dh: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; p: Parab2d; dp: IntRes2dDomain;
             h: Hypr2d; dh: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
proc constructIntCurveIntConicConic*(h1: Hypr2d; d1: IntRes2dDomain; h2: Hypr2d;
                                    d2: IntRes2dDomain; tolConf: float; tol: float): IntCurveIntConicConic {.
    constructor, importcpp: "IntCurve_IntConicConic(@)",
    header: "IntCurve_IntConicConic.hxx".}
proc perform*(this: var IntCurveIntConicConic; h1: Hypr2d; d1: IntRes2dDomain;
             h2: Hypr2d; d2: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "IntCurve_IntConicConic.hxx".}
