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

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_TheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter"
type
  HLRBRepExactIntersectionPointOfTheIntPCurvePCurveOfCInter* {.
      importcpp: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter",
      header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx",
      bycopy.} = object


proc constructHLRBRepExactIntersectionPointOfTheIntPCurvePCurveOfCInter*(
    c1: StandardAddress; c2: StandardAddress; tol: StandardReal): HLRBRepExactIntersectionPointOfTheIntPCurvePCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter(@)",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepExactIntersectionPointOfTheIntPCurvePCurveOfCInter;
             poly1: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter;
             poly2: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter;
             numSegOn1: var StandardInteger; numSegOn2: var StandardInteger;
             paramOnSeg1: var StandardReal; paramOnSeg2: var StandardReal) {.
    importcpp: "Perform",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc perform*(this: var HLRBRepExactIntersectionPointOfTheIntPCurvePCurveOfCInter;
             uo: StandardReal; vo: StandardReal; uInf: StandardReal;
             vInf: StandardReal; uSup: StandardReal; vSup: StandardReal) {.
    importcpp: "Perform",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc nbRoots*(this: HLRBRepExactIntersectionPointOfTheIntPCurvePCurveOfCInter): StandardInteger {.
    noSideEffect, importcpp: "NbRoots",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc roots*(this: var HLRBRepExactIntersectionPointOfTheIntPCurvePCurveOfCInter;
           u: var StandardReal; v: var StandardReal) {.importcpp: "Roots",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}
proc anErrorOccurred*(this: HLRBRepExactIntersectionPointOfTheIntPCurvePCurveOfCInter): StandardBoolean {.
    noSideEffect, importcpp: "AnErrorOccurred",
    header: "HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx".}

