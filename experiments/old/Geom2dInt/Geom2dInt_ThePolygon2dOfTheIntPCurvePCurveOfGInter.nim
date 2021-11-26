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

## !!!Ignored construct:  # _Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter_HeaderFile [NewLine] # _Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColgp_Array1OfPnt2d . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < TColStd_Array1OfInteger . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Intf_Polygon2d . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter* {.
      importcpp: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter",
      header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx", bycopy.} = object of IntfPolygon2d ##
                                                                                                    ## !
                                                                                                    ## Compute
                                                                                                    ## a
                                                                                                    ## polygon
                                                                                                    ## on
                                                                                                    ## the
                                                                                                    ## domain
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## curve.


proc constructGeom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter*(
    curve: Adaptor2dCurve2d; nbPnt: int; domain: IntRes2dDomain; tol: float): Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter {.
    constructor,
    importcpp: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter(@)",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc computeWithBox*(this: var Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter;
                    curve: Adaptor2dCurve2d; otherBox: BndBox2d) {.
    importcpp: "ComputeWithBox",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc deflectionOverEstimation*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter): float {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc setDeflectionOverEstimation*(this: var Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter;
                                 x: float) {.
    importcpp: "SetDeflectionOverEstimation",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc closed*(this: var Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter; clos: bool) {.
    importcpp: "Closed",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc closed*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter): bool {.
    noSideEffect, importcpp: "Closed",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc nbSegments*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter): int {.
    noSideEffect, importcpp: "NbSegments",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc segment*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter;
             theIndex: int; theBegin: var Pnt2d; theEnd: var Pnt2d) {.noSideEffect,
    importcpp: "Segment",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc infParameter*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter): float {.
    noSideEffect, importcpp: "InfParameter",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc supParameter*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter): float {.
    noSideEffect, importcpp: "SupParameter",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc autoIntersectionIsPossible*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter): bool {.
    noSideEffect, importcpp: "AutoIntersectionIsPossible",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc approxParamOnCurve*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter;
                        index: int; paramOnLine: float): float {.noSideEffect,
    importcpp: "ApproxParamOnCurve",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc calculRegion*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter;
                  x: float; y: float; x1: float; x2: float; y1: float; y2: float): int {.
    noSideEffect, importcpp: "CalculRegion",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc dump*(this: Geom2dIntThePolygon2dOfTheIntPCurvePCurveOfGInter) {.noSideEffect,
    importcpp: "Dump",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
## !!!Ignored construct:  # TheCurve Adaptor2d_Curve2d [NewLine] # TheCurve_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # TheCurveTool Geom2dInt_Geom2dCurveTool [NewLine] # TheCurveTool_hxx < Geom2dInt_Geom2dCurveTool . hxx > [NewLine] # IntCurve_Polygon2dGen Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter [NewLine] # IntCurve_Polygon2dGen_hxx < Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter . hxx > [NewLine] # < IntCurve_Polygon2dGen . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurve_Polygon2dGen [NewLine] # IntCurve_Polygon2dGen_hxx [NewLine] #  _Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter_HeaderFile
## Error: did not expect <!!!














































