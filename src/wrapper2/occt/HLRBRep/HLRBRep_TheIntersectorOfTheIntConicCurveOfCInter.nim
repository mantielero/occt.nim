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
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_Intersection,
  ../Standard/Standard_Address, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_ConstructionError"
discard "forward decl of IntCurve_IConicTool"
discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_TheProjPCurOfCInter"
discard "forward decl of HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Pnt2d"
type
  HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter* {.
      importcpp: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter",
      header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx", bycopy.} = object of IntRes2d_Intersection ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor.


proc constructHLRBRep_TheIntersectorOfTheIntConicCurveOfCInter*(): HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc constructHLRBRep_TheIntersectorOfTheIntConicCurveOfCInter*(
    ITool: IntCurve_IConicTool; Dom1: IntRes2d_Domain; PCurve: Standard_Address;
    Dom2: IntRes2d_Domain; TolConf: Standard_Real; Tol: Standard_Real): HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter(@)",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter;
             ITool: IntCurve_IConicTool; Dom1: IntRes2d_Domain;
             PCurve: Standard_Address; Dom2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc FindU*(this: HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter;
           parameter: Standard_Real; point: var gp_Pnt2d;
           TheParCurev: Standard_Address; TheImpTool: IntCurve_IConicTool): Standard_Real {.
    noSideEffect, importcpp: "FindU",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc FindV*(this: HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter;
           parameter: Standard_Real; point: var gp_Pnt2d;
           TheImpTool: IntCurve_IConicTool; ParCurve: Standard_Address;
           TheParCurveDomain: IntRes2d_Domain; V0: Standard_Real; V1: Standard_Real;
           Tolerance: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "FindV",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc And_Domaine_Objet1_Intersections*(this: HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter;
                                      TheImpTool: IntCurve_IConicTool;
                                      TheParCurve: Standard_Address;
                                      TheImpCurveDomain: IntRes2d_Domain;
                                      TheParCurveDomain: IntRes2d_Domain;
                                      NbResultats: var Standard_Integer;
    Inter2_And_Domain2: var TColStd_Array1OfReal; Inter1: var TColStd_Array1OfReal;
                                      Resultat1: var TColStd_Array1OfReal;
                                      Resultat2: var TColStd_Array1OfReal;
                                      EpsNul: Standard_Real) {.noSideEffect,
    importcpp: "And_Domaine_Objet1_Intersections",
    header: "HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx".}