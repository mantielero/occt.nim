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
discard "forward decl of HLRBRep_TheProjPCurOfCInter"
discard "forward decl of HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Pnt2d"
type
  HLRBRepTheIntersectorOfTheIntConicCurveOfCInter* {.
      importcpp: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter",
      header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx", bycopy.} = object of IntRes2dIntersection ##
                                                                                                         ## !
                                                                                                         ## Empty
                                                                                                         ## constructor.


proc constructHLRBRepTheIntersectorOfTheIntConicCurveOfCInter*(): HLRBRepTheIntersectorOfTheIntConicCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc constructHLRBRepTheIntersectorOfTheIntConicCurveOfCInter*(
    iTool: IntCurveIConicTool; dom1: IntRes2dDomain; pCurve: StandardAddress;
    dom2: IntRes2dDomain; tolConf: cfloat; tol: cfloat): HLRBRepTheIntersectorOfTheIntConicCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepTheIntersectorOfTheIntConicCurveOfCInter;
             iTool: IntCurveIConicTool; dom1: IntRes2dDomain;
             pCurve: StandardAddress; dom2: IntRes2dDomain; tolConf: cfloat;
             tol: cfloat) {.importcpp: "Perform", header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc findU*(this: HLRBRepTheIntersectorOfTheIntConicCurveOfCInter;
           parameter: cfloat; point: var Pnt2d; theParCurev: StandardAddress;
           theImpTool: IntCurveIConicTool): cfloat {.noSideEffect,
    importcpp: "FindU",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc findV*(this: HLRBRepTheIntersectorOfTheIntConicCurveOfCInter;
           parameter: cfloat; point: var Pnt2d; theImpTool: IntCurveIConicTool;
           parCurve: StandardAddress; theParCurveDomain: IntRes2dDomain; v0: cfloat;
           v1: cfloat; tolerance: cfloat): cfloat {.noSideEffect, importcpp: "FindV",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc andDomaineObjet1Intersections*(this: HLRBRepTheIntersectorOfTheIntConicCurveOfCInter;
                                   theImpTool: IntCurveIConicTool;
                                   theParCurve: StandardAddress;
                                   theImpCurveDomain: IntRes2dDomain;
                                   theParCurveDomain: IntRes2dDomain;
                                   nbResultats: var cint;
                                   inter2AndDomain2: var TColStdArray1OfReal;
                                   inter1: var TColStdArray1OfReal;
                                   resultat1: var TColStdArray1OfReal;
                                   resultat2: var TColStdArray1OfReal;
                                   epsNul: cfloat) {.noSideEffect,
    importcpp: "And_Domaine_Objet1_Intersections",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}

























