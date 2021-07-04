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
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_Intersection,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_ConstructionError"
discard "forward decl of IntCurve_IConicTool"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Geom2dInt_TheProjPCurOfGInter"
discard "forward decl of Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Pnt2d"
type
  Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter* {.
      importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter",
      header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx", bycopy.} = object of IntRes2d_Intersection ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor.


proc constructGeom2dInt_TheIntersectorOfTheIntConicCurveOfGInter*(): Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter {.
    constructor,
    importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc constructGeom2dInt_TheIntersectorOfTheIntConicCurveOfGInter*(
    ITool: IntCurve_IConicTool; Dom1: IntRes2d_Domain; PCurve: Adaptor2d_Curve2d;
    Dom2: IntRes2d_Domain; TolConf: Standard_Real; Tol: Standard_Real): Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter {.
    constructor,
    importcpp: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter(@)",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter;
             ITool: IntCurve_IConicTool; Dom1: IntRes2d_Domain;
             PCurve: Adaptor2d_Curve2d; Dom2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc FindU*(this: Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter;
           parameter: Standard_Real; point: var gp_Pnt2d;
           TheParCurev: Adaptor2d_Curve2d; TheImpTool: IntCurve_IConicTool): Standard_Real {.
    noSideEffect, importcpp: "FindU",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc FindV*(this: Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter;
           parameter: Standard_Real; point: var gp_Pnt2d;
           TheImpTool: IntCurve_IConicTool; ParCurve: Adaptor2d_Curve2d;
           TheParCurveDomain: IntRes2d_Domain; V0: Standard_Real; V1: Standard_Real;
           Tolerance: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "FindV",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc And_Domaine_Objet1_Intersections*(this: Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter;
                                      TheImpTool: IntCurve_IConicTool;
                                      TheParCurve: Adaptor2d_Curve2d;
                                      TheImpCurveDomain: IntRes2d_Domain;
                                      TheParCurveDomain: IntRes2d_Domain;
                                      NbResultats: var Standard_Integer;
    Inter2_And_Domain2: var TColStd_Array1OfReal; Inter1: var TColStd_Array1OfReal;
                                      Resultat1: var TColStd_Array1OfReal;
                                      Resultat2: var TColStd_Array1OfReal;
                                      EpsNul: Standard_Real) {.noSideEffect,
    importcpp: "And_Domaine_Objet1_Intersections",
    header: "Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx".}