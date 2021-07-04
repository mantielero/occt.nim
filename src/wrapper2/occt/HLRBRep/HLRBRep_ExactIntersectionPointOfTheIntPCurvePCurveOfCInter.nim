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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter, ../math/math_Vector,
  ../Standard/Standard_Address

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_TheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter"
type
  HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter* {.
      importcpp: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter",
      header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx",
      bycopy.} = object


proc constructHLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter*(
    C1: Standard_Address; C2: Standard_Address; Tol: Standard_Real): HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter(@)",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter;
             Poly1: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
             Poly2: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
             NumSegOn1: var Standard_Integer; NumSegOn2: var Standard_Integer;
             ParamOnSeg1: var Standard_Real; ParamOnSeg2: var Standard_Real) {.
    importcpp: "Perform",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc Perform*(this: var HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter;
             Uo: Standard_Real; Vo: Standard_Real; UInf: Standard_Real;
             VInf: Standard_Real; USup: Standard_Real; VSup: Standard_Real) {.
    importcpp: "Perform",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc NbRoots*(this: HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter): Standard_Integer {.
    noSideEffect, importcpp: "NbRoots",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc Roots*(this: var HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter;
           U: var Standard_Real; V: var Standard_Real) {.importcpp: "Roots",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc AnErrorOccurred*(this: HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter): Standard_Boolean {.
    noSideEffect, importcpp: "AnErrorOccurred",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}