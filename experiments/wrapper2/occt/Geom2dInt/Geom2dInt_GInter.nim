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

## !!!Ignored construct:  # _Geom2dInt_GInter_HeaderFile [NewLine] # _Geom2dInt_GInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < IntCurve_IntConicConic . hxx > [NewLine] # < Geom2dInt_TheIntConicCurveOfGInter . hxx > [NewLine] # < Geom2dInt_TheIntPCurvePCurveOfGInter . hxx > [NewLine] # < IntRes2d_Intersection . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] class Standard_ConstructionError ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Geom2dInt_TheProjPCurOfGInter"
discard "forward decl of Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter"
discard "forward decl of Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter"
discard "forward decl of Geom2dInt_TheIntConicCurveOfGInter"
discard "forward decl of Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter"
discard "forward decl of Geom2dInt_IntConicCurveOfGInter"
discard "forward decl of Geom2dInt_TheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter"
discard "forward decl of Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter"
discard "forward decl of IntRes2d_Domain"
type
  Geom2dIntGInter* {.importcpp: "Geom2dInt_GInter", header: "Geom2dInt_GInter.hxx",
                    bycopy.} = object of IntRes2dIntersection ## ! Empty constructor.
                                                         ## ! Intersection between 2 curves.


proc constructGeom2dIntGInter*(): Geom2dIntGInter {.constructor,
    importcpp: "Geom2dInt_GInter(@)", header: "Geom2dInt_GInter.hxx".}
proc constructGeom2dIntGInter*(c: Adaptor2dCurve2d; tolConf: float; tol: float): Geom2dIntGInter {.
    constructor, importcpp: "Geom2dInt_GInter(@)", header: "Geom2dInt_GInter.hxx".}
proc constructGeom2dIntGInter*(c: Adaptor2dCurve2d; d: IntRes2dDomain;
                              tolConf: float; tol: float): Geom2dIntGInter {.
    constructor, importcpp: "Geom2dInt_GInter(@)", header: "Geom2dInt_GInter.hxx".}
proc constructGeom2dIntGInter*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
                              tolConf: float; tol: float): Geom2dIntGInter {.
    constructor, importcpp: "Geom2dInt_GInter(@)", header: "Geom2dInt_GInter.hxx".}
proc constructGeom2dIntGInter*(c1: Adaptor2dCurve2d; d1: IntRes2dDomain;
                              c2: Adaptor2dCurve2d; tolConf: float; tol: float): Geom2dIntGInter {.
    constructor, importcpp: "Geom2dInt_GInter(@)", header: "Geom2dInt_GInter.hxx".}
proc constructGeom2dIntGInter*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
                              d2: IntRes2dDomain; tolConf: float; tol: float): Geom2dIntGInter {.
    constructor, importcpp: "Geom2dInt_GInter(@)", header: "Geom2dInt_GInter.hxx".}
proc constructGeom2dIntGInter*(c1: Adaptor2dCurve2d; d1: IntRes2dDomain;
                              c2: Adaptor2dCurve2d; d2: IntRes2dDomain;
                              tolConf: float; tol: float): Geom2dIntGInter {.
    constructor, importcpp: "Geom2dInt_GInter(@)", header: "Geom2dInt_GInter.hxx".}
proc perform*(this: var Geom2dIntGInter; c1: Adaptor2dCurve2d; d1: IntRes2dDomain;
             c2: Adaptor2dCurve2d; d2: IntRes2dDomain; tolConf: float; tol: float) {.
    importcpp: "Perform", header: "Geom2dInt_GInter.hxx".}
proc perform*(this: var Geom2dIntGInter; c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
             tolConf: float; tol: float) {.importcpp: "Perform",
                                       header: "Geom2dInt_GInter.hxx".}
proc perform*(this: var Geom2dIntGInter; c1: Adaptor2dCurve2d; d1: IntRes2dDomain;
             tolConf: float; tol: float) {.importcpp: "Perform",
                                       header: "Geom2dInt_GInter.hxx".}
proc perform*(this: var Geom2dIntGInter; c1: Adaptor2dCurve2d; tolConf: float;
             tol: float) {.importcpp: "Perform", header: "Geom2dInt_GInter.hxx".}
proc perform*(this: var Geom2dIntGInter; c1: Adaptor2dCurve2d; d1: IntRes2dDomain;
             c2: Adaptor2dCurve2d; tolConf: float; tol: float) {.importcpp: "Perform",
    header: "Geom2dInt_GInter.hxx".}
proc perform*(this: var Geom2dIntGInter; c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
             d2: IntRes2dDomain; tolConf: float; tol: float) {.importcpp: "Perform",
    header: "Geom2dInt_GInter.hxx".}
proc computeDomain*(this: Geom2dIntGInter; c1: Adaptor2dCurve2d; tolDomain: float): IntRes2dDomain {.
    noSideEffect, importcpp: "ComputeDomain", header: "Geom2dInt_GInter.hxx".}
proc setMinNbSamples*(this: var Geom2dIntGInter; theMinNbSamples: int) {.
    importcpp: "SetMinNbSamples", header: "Geom2dInt_GInter.hxx".}
proc getMinNbSamples*(this: Geom2dIntGInter): int {.noSideEffect,
    importcpp: "GetMinNbSamples", header: "Geom2dInt_GInter.hxx".}
## !!!Ignored construct:  # TheCurve Adaptor2d_Curve2d [NewLine] # TheCurve_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # TheCurveTool Geom2dInt_Geom2dCurveTool [NewLine] # TheCurveTool_hxx < Geom2dInt_Geom2dCurveTool . hxx > [NewLine] # IntCurve_TheProjPCur Geom2dInt_TheProjPCurOfGInter [NewLine] # IntCurve_TheProjPCur_hxx < Geom2dInt_TheProjPCurOfGInter . hxx > [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur_hxx < Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter . hxx > [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur_hxx < Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter . hxx > [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur_hxx < Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter . hxx > [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur_hxx < Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter . hxx > [NewLine] # IntCurve_TheIntConicCurve Geom2dInt_TheIntConicCurveOfGInter [NewLine] # IntCurve_TheIntConicCurve_hxx < Geom2dInt_TheIntConicCurveOfGInter . hxx > [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve_hxx < Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter . hxx > [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve_hxx < Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter . hxx > [NewLine] # IntCurve_IntConicCurve Geom2dInt_IntConicCurveOfGInter [NewLine] # IntCurve_IntConicCurve_hxx < Geom2dInt_IntConicCurveOfGInter . hxx > [NewLine] # IntCurve_TheIntPCurvePCurve Geom2dInt_TheIntPCurvePCurveOfGInter [NewLine] # IntCurve_TheIntPCurvePCurve_hxx < Geom2dInt_TheIntPCurvePCurveOfGInter . hxx > [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve_hxx < Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter . hxx > [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve_hxx < Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter . hxx > [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve_hxx < Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter . hxx > [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve_hxx < Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter . hxx > [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve_hxx < Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter . hxx > [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve_hxx < Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter . hxx > [NewLine] # IntCurve_IntCurveCurveGen Geom2dInt_GInter [NewLine] # IntCurve_IntCurveCurveGen_hxx < Geom2dInt_GInter . hxx > [NewLine] # < IntCurve_IntCurveCurveGen . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurve_TheProjPCur [NewLine] # IntCurve_TheProjPCur_hxx [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur_hxx [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur_hxx [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur [NewLine] # IntCurve_TheCurveLocatorOfTheProjPCur_hxx [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur [NewLine] # IntCurve_TheLocateExtPCOfTheProjPCur_hxx [NewLine] # IntCurve_TheIntConicCurve [NewLine] # IntCurve_TheIntConicCurve_hxx [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve_hxx [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve [NewLine] # IntCurve_TheIntersectorOfTheIntConicCurve_hxx [NewLine] # IntCurve_IntConicCurve [NewLine] # IntCurve_IntConicCurve_hxx [NewLine] # IntCurve_TheIntPCurvePCurve [NewLine] # IntCurve_TheIntPCurvePCurve_hxx [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve [NewLine] # IntCurve_ThePolygon2dOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve [NewLine] # IntCurve_TheDistBetweenPCurvesOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve [NewLine] # IntCurve_ExactIntersectionPointOfTheIntPCurvePCurve_hxx [NewLine] # IntCurve_IntCurveCurveGen [NewLine] # IntCurve_IntCurveCurveGen_hxx [NewLine] #  _Geom2dInt_GInter_HeaderFile
## Error: did not expect <!!!

