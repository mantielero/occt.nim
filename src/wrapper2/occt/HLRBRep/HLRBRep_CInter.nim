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

## !!!Ignored construct:  # _HLRBRep_CInter_HeaderFile [NewLine] # _HLRBRep_CInter_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../IntCurve/IntCurve_IntConicConic.hxx [NewLine] # HLRBRep_TheIntConicCurveOfCInter.hxx [NewLine] # HLRBRep_TheIntPCurvePCurveOfCInter.hxx [NewLine] # ../IntRes2d/IntRes2d_Intersection.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] class Standard_ConstructionError ;
## Error: did not expect <!!!

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_TheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheIntConicCurveOfCInter"
discard "forward decl of HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter"
discard "forward decl of HLRBRep_IntConicCurveOfCInter"
discard "forward decl of HLRBRep_TheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter"
discard "forward decl of HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter"
discard "forward decl of IntRes2d_Domain"
type
  HLRBRep_CInter* {.importcpp: "HLRBRep_CInter", header: "HLRBRep_CInter.hxx", bycopy.} = object of IntRes2d_Intersection ##
                                                                                                                ## !
                                                                                                                ## Empty
                                                                                                                ## constructor.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Intersection
                                                                                                                ## between
                                                                                                                ## 2
                                                                                                                ## curves.


proc constructHLRBRep_CInter*(): HLRBRep_CInter {.constructor,
    importcpp: "HLRBRep_CInter(@)", header: "HLRBRep_CInter.hxx".}
proc constructHLRBRep_CInter*(C: Standard_Address; TolConf: Standard_Real;
                             Tol: Standard_Real): HLRBRep_CInter {.constructor,
    importcpp: "HLRBRep_CInter(@)", header: "HLRBRep_CInter.hxx".}
proc constructHLRBRep_CInter*(C: Standard_Address; D: IntRes2d_Domain;
                             TolConf: Standard_Real; Tol: Standard_Real): HLRBRep_CInter {.
    constructor, importcpp: "HLRBRep_CInter(@)", header: "HLRBRep_CInter.hxx".}
proc constructHLRBRep_CInter*(C1: Standard_Address; C2: Standard_Address;
                             TolConf: Standard_Real; Tol: Standard_Real): HLRBRep_CInter {.
    constructor, importcpp: "HLRBRep_CInter(@)", header: "HLRBRep_CInter.hxx".}
proc constructHLRBRep_CInter*(C1: Standard_Address; D1: IntRes2d_Domain;
                             C2: Standard_Address; TolConf: Standard_Real;
                             Tol: Standard_Real): HLRBRep_CInter {.constructor,
    importcpp: "HLRBRep_CInter(@)", header: "HLRBRep_CInter.hxx".}
proc constructHLRBRep_CInter*(C1: Standard_Address; C2: Standard_Address;
                             D2: IntRes2d_Domain; TolConf: Standard_Real;
                             Tol: Standard_Real): HLRBRep_CInter {.constructor,
    importcpp: "HLRBRep_CInter(@)", header: "HLRBRep_CInter.hxx".}
proc constructHLRBRep_CInter*(C1: Standard_Address; D1: IntRes2d_Domain;
                             C2: Standard_Address; D2: IntRes2d_Domain;
                             TolConf: Standard_Real; Tol: Standard_Real): HLRBRep_CInter {.
    constructor, importcpp: "HLRBRep_CInter(@)", header: "HLRBRep_CInter.hxx".}
proc Perform*(this: var HLRBRep_CInter; C1: Standard_Address; D1: IntRes2d_Domain;
             C2: Standard_Address; D2: IntRes2d_Domain; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "HLRBRep_CInter.hxx".}
proc Perform*(this: var HLRBRep_CInter; C1: Standard_Address; C2: Standard_Address;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_CInter.hxx".}
proc Perform*(this: var HLRBRep_CInter; C1: Standard_Address; D1: IntRes2d_Domain;
             TolConf: Standard_Real; Tol: Standard_Real) {.importcpp: "Perform",
    header: "HLRBRep_CInter.hxx".}
proc Perform*(this: var HLRBRep_CInter; C1: Standard_Address; TolConf: Standard_Real;
             Tol: Standard_Real) {.importcpp: "Perform",
                                 header: "HLRBRep_CInter.hxx".}
proc Perform*(this: var HLRBRep_CInter; C1: Standard_Address; D1: IntRes2d_Domain;
             C2: Standard_Address; TolConf: Standard_Real; Tol: Standard_Real) {.
    importcpp: "Perform", header: "HLRBRep_CInter.hxx".}
proc Perform*(this: var HLRBRep_CInter; C1: Standard_Address; C2: Standard_Address;
             D2: IntRes2d_Domain; TolConf: Standard_Real; Tol: Standard_Real) {.
    importcpp: "Perform", header: "HLRBRep_CInter.hxx".}
proc ComputeDomain*(this: HLRBRep_CInter; C1: Standard_Address;
                   TolDomain: Standard_Real): IntRes2d_Domain {.noSideEffect,
    importcpp: "ComputeDomain", header: "HLRBRep_CInter.hxx".}
proc SetMinNbSamples*(this: var HLRBRep_CInter; theMinNbSamples: Standard_Integer) {.
    importcpp: "SetMinNbSamples", header: "HLRBRep_CInter.hxx".}
proc GetMinNbSamples*(this: HLRBRep_CInter): Standard_Integer {.noSideEffect,
    importcpp: "GetMinNbSamples", header: "HLRBRep_CInter.hxx".}
## !!!Ignored construct:  # TheCurve Standard_Address [NewLine] # TheCurve_hxx < Standard_Address . hxx > [NewLine] # TheCurveTool HLRBRep_CurveTool [NewLine] # TheCurveTool_hxx < HLRBRep_CurveTool . hxx > [NewLine] # IntCurve_TheProjPCur HLRBRep_TheProjPCurOfCInter [NewLine] # IntCurve_TheProjPCur_hxx < HLRBRep_TheProjPCurOfCInter . hxx > [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur_hxx < HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter . hxx > [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur_hxx < HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter . hxx > [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur_hxx < HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter . hxx > [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur_hxx < HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter . hxx > [NewLine] # IntCurve_TheIntConicCurve HLRBRep_TheIntConicCurveOfCInter [NewLine] # IntCurve_TheIntConicCurve_hxx < HLRBRep_TheIntConicCurveOfCInter . hxx > [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve_hxx < HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter . hxx > [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve_hxx < HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter . hxx > [NewLine] # IntCurve_IntConicCurve HLRBRep_IntConicCurveOfCInter [NewLine] # IntCurve_IntConicCurve_hxx < HLRBRep_IntConicCurveOfCInter . hxx > [NewLine] # IntCurve_TheIntPCurvePCurve HLRBRep_TheIntPCurvePCurveOfCInter [NewLine] # IntCurve_TheIntPCurvePCurve_hxx < HLRBRep_TheIntPCurvePCurveOfCInter . hxx > [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve_hxx < HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter . hxx > [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve_hxx < HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter . hxx > [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve_hxx < HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter . hxx > [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve_hxx < HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter . hxx > [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve_hxx < HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter . hxx > [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve_hxx < HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter . hxx > [NewLine] # IntCurve_IntCurveCurveGen HLRBRep_CInter [NewLine] # IntCurve_IntCurveCurveGen_hxx < HLRBRep_CInter . hxx > [NewLine] # < IntCurve_IntCurveCurveGen . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurve_TheProjPCur [NewLine] # IntCurve_TheProjPCur_hxx [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur_hxx [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur_hxx [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur_hxx [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur_hxx [NewLine] # IntCurve_TheIntConicCurve [NewLine] # IntCurve_TheIntConicCurve_hxx [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve_hxx [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve_hxx [NewLine] # IntCurve_IntConicCurve [NewLine] # IntCurve_IntConicCurve_hxx [NewLine] # IntCurve_TheIntPCurvePCurve [NewLine] # IntCurve_TheIntPCurvePCurve_hxx [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_IntCurveCurveGen [NewLine] # IntCurve_IntCurveCurveGen_hxx [NewLine] #  _HLRBRep_CInter_HeaderFile [NewLine]
## Error: did not expect <!!!
