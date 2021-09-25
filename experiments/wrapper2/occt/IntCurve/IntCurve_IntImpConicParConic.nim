##  Created on: 1992-03-04
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
discard "forward decl of IntCurve_IConicTool"
discard "forward decl of IntCurve_PConic"
discard "forward decl of IntCurve_PConicTool"
discard "forward decl of IntCurve_ProjectOnPConicTool"
discard "forward decl of IntCurve_MyImpParToolOfIntImpConicParConic"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Pnt2d"
type
  IntCurveIntImpConicParConic* {.importcpp: "IntCurve_IntImpConicParConic",
                                header: "IntCurve_IntImpConicParConic.hxx", bycopy.} = object of IntRes2dIntersection ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor.


proc constructIntCurveIntImpConicParConic*(): IntCurveIntImpConicParConic {.
    constructor, importcpp: "IntCurve_IntImpConicParConic(@)",
    header: "IntCurve_IntImpConicParConic.hxx".}
proc constructIntCurveIntImpConicParConic*(iTool: IntCurveIConicTool;
    dom1: IntRes2dDomain; pCurve: IntCurvePConic; dom2: IntRes2dDomain;
    tolConf: float; tol: float): IntCurveIntImpConicParConic {.constructor,
    importcpp: "IntCurve_IntImpConicParConic(@)",
    header: "IntCurve_IntImpConicParConic.hxx".}
proc perform*(this: var IntCurveIntImpConicParConic; iTool: IntCurveIConicTool;
             dom1: IntRes2dDomain; pCurve: IntCurvePConic; dom2: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform", header: "IntCurve_IntImpConicParConic.hxx".}
proc findU*(this: IntCurveIntImpConicParConic; parameter: float; point: var Pnt2d;
           theParCurev: IntCurvePConic; theImpTool: IntCurveIConicTool): float {.
    noSideEffect, importcpp: "FindU", header: "IntCurve_IntImpConicParConic.hxx".}
proc findV*(this: IntCurveIntImpConicParConic; parameter: float; point: var Pnt2d;
           theImpTool: IntCurveIConicTool; parCurve: IntCurvePConic;
           theParCurveDomain: IntRes2dDomain; v0: float; v1: float; tolerance: float): float {.
    noSideEffect, importcpp: "FindV", header: "IntCurve_IntImpConicParConic.hxx".}
proc andDomaineObjet1Intersections*(this: IntCurveIntImpConicParConic;
                                   theImpTool: IntCurveIConicTool;
                                   theParCurve: IntCurvePConic;
                                   theImpCurveDomain: IntRes2dDomain;
                                   theParCurveDomain: IntRes2dDomain;
                                   nbResultats: var int;
                                   inter2AndDomain2: var TColStdArray1OfReal;
                                   inter1: var TColStdArray1OfReal;
                                   resultat1: var TColStdArray1OfReal;
                                   resultat2: var TColStdArray1OfReal;
                                   epsNul: float) {.noSideEffect,
    importcpp: "And_Domaine_Objet1_Intersections",
    header: "IntCurve_IntImpConicParConic.hxx".}
