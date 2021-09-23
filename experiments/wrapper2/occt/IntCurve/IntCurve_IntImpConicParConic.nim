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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_Intersection,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_ConstructionError"
discard "forward decl of IntCurve_IConicTool"
discard "forward decl of IntCurve_PConic"
discard "forward decl of IntCurve_PConicTool"
discard "forward decl of IntCurve_ProjectOnPConicTool"
discard "forward decl of IntCurve_MyImpParToolOfIntImpConicParConic"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Pnt2d"
type
  IntCurve_IntImpConicParConic* {.importcpp: "IntCurve_IntImpConicParConic",
                                 header: "IntCurve_IntImpConicParConic.hxx",
                                 bycopy.} = object of IntRes2d_Intersection ## ! Empty
                                                                       ## constructor.


proc constructIntCurve_IntImpConicParConic*(): IntCurve_IntImpConicParConic {.
    constructor, importcpp: "IntCurve_IntImpConicParConic(@)",
    header: "IntCurve_IntImpConicParConic.hxx".}
proc constructIntCurve_IntImpConicParConic*(ITool: IntCurve_IConicTool;
    Dom1: IntRes2d_Domain; PCurve: IntCurve_PConic; Dom2: IntRes2d_Domain;
    TolConf: Standard_Real; Tol: Standard_Real): IntCurve_IntImpConicParConic {.
    constructor, importcpp: "IntCurve_IntImpConicParConic(@)",
    header: "IntCurve_IntImpConicParConic.hxx".}
proc Perform*(this: var IntCurve_IntImpConicParConic; ITool: IntCurve_IConicTool;
             Dom1: IntRes2d_Domain; PCurve: IntCurve_PConic; Dom2: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "IntCurve_IntImpConicParConic.hxx".}
proc FindU*(this: IntCurve_IntImpConicParConic; parameter: Standard_Real;
           point: var gp_Pnt2d; TheParCurev: IntCurve_PConic;
           TheImpTool: IntCurve_IConicTool): Standard_Real {.noSideEffect,
    importcpp: "FindU", header: "IntCurve_IntImpConicParConic.hxx".}
proc FindV*(this: IntCurve_IntImpConicParConic; parameter: Standard_Real;
           point: var gp_Pnt2d; TheImpTool: IntCurve_IConicTool;
           ParCurve: IntCurve_PConic; TheParCurveDomain: IntRes2d_Domain;
           V0: Standard_Real; V1: Standard_Real; Tolerance: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "FindV", header: "IntCurve_IntImpConicParConic.hxx".}
proc And_Domaine_Objet1_Intersections*(this: IntCurve_IntImpConicParConic;
                                      TheImpTool: IntCurve_IConicTool;
                                      TheParCurve: IntCurve_PConic;
                                      TheImpCurveDomain: IntRes2d_Domain;
                                      TheParCurveDomain: IntRes2d_Domain;
                                      NbResultats: var Standard_Integer;
    Inter2_And_Domain2: var TColStd_Array1OfReal; Inter1: var TColStd_Array1OfReal;
                                      Resultat1: var TColStd_Array1OfReal;
                                      Resultat2: var TColStd_Array1OfReal;
                                      EpsNul: Standard_Real) {.noSideEffect,
    importcpp: "And_Domaine_Objet1_Intersections",
    header: "IntCurve_IntImpConicParConic.hxx".}