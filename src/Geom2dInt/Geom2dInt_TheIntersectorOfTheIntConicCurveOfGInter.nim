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
discard "forward decl of Geom2dInt_TheProjPCurOfGInter"
discard "forward decl of Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Pnt2d"
type
  Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter* {.
      importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter",
      header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx", bycopy.} = object of IntRes2dIntersection


proc `new`*(this: var Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
           theSize: csize_t): pointer {.importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter::operator new", header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
              theAddress: pointer) {.importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter::operator delete", header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc `new[]`*(this: var Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
             theSize: csize_t): pointer {.importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter::operator new[]", header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc `delete[]`*(this: var Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
                theAddress: pointer) {.importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter::operator delete[]", header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc `new`*(this: var Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter::operator new",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
              a2: pointer; a3: pointer) {.importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter::operator delete", header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc constructGeom2dIntTheIntersectorOfTheIntConicCurveOfGInter*(): Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter {.
    constructor,
    importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc constructGeom2dIntTheIntersectorOfTheIntConicCurveOfGInter*(
    iTool: IntCurveIConicTool; dom1: IntRes2dDomain; pCurve: Adaptor2dCurve2d;
    dom2: IntRes2dDomain; tolConf: StandardReal; tol: StandardReal): Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter {.
    constructor,
    importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
             iTool: IntCurveIConicTool; dom1: IntRes2dDomain;
             pCurve: Adaptor2dCurve2d; dom2: IntRes2dDomain; tolConf: StandardReal;
             tol: StandardReal) {.importcpp: "Perform", header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc findU*(this: Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
           parameter: StandardReal; point: var Pnt2d; theParCurev: Adaptor2dCurve2d;
           theImpTool: IntCurveIConicTool): StandardReal {.noSideEffect,
    importcpp: "FindU",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc findV*(this: Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
           parameter: StandardReal; point: var Pnt2d; theImpTool: IntCurveIConicTool;
           parCurve: Adaptor2dCurve2d; theParCurveDomain: IntRes2dDomain;
           v0: StandardReal; v1: StandardReal; tolerance: StandardReal): StandardReal {.
    noSideEffect, importcpp: "FindV",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc andDomaineObjet1Intersections*(this: Geom2dIntTheIntersectorOfTheIntConicCurveOfGInter;
                                   theImpTool: IntCurveIConicTool;
                                   theParCurve: Adaptor2dCurve2d;
                                   theImpCurveDomain: IntRes2dDomain;
                                   theParCurveDomain: IntRes2dDomain;
                                   nbResultats: var int;
                                   inter2AndDomain2: var TColStdArray1OfReal;
                                   inter1: var TColStdArray1OfReal;
                                   resultat1: var TColStdArray1OfReal;
                                   resultat2: var TColStdArray1OfReal;
                                   epsNul: StandardReal) {.noSideEffect,
    importcpp: "And_Domaine_Objet1_Intersections",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}