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

## !!!Ignored construct:  # _HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter_HeaderFile [NewLine] # _HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColgp_Array1OfPnt2d . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < TColStd_Array1OfInteger . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Intf_Polygon2d . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Pnt2d"
type
  HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter* {.
      importcpp: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter",
      header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx", bycopy.} = object of IntfPolygon2d ##
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


proc constructHLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter*(
    curve: StandardAddress; nbPnt: StandardInteger; domain: IntRes2dDomain;
    tol: StandardReal): HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter(@)",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc computeWithBox*(this: var HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter;
                    curve: StandardAddress; otherBox: BndBox2d) {.
    importcpp: "ComputeWithBox",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc deflectionOverEstimation*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter): StandardReal {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc setDeflectionOverEstimation*(this: var HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter;
                                 x: StandardReal) {.
    importcpp: "SetDeflectionOverEstimation",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc closed*(this: var HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter;
            clos: StandardBoolean) {.importcpp: "Closed", header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc closed*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter): StandardBoolean {.
    noSideEffect, importcpp: "Closed",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc nbSegments*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter): StandardInteger {.
    noSideEffect, importcpp: "NbSegments",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc segment*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter;
             theIndex: StandardInteger; theBegin: var GpPnt2d; theEnd: var GpPnt2d) {.
    noSideEffect, importcpp: "Segment",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc infParameter*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter): StandardReal {.
    noSideEffect, importcpp: "InfParameter",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc supParameter*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter): StandardReal {.
    noSideEffect, importcpp: "SupParameter",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc autoIntersectionIsPossible*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter): StandardBoolean {.
    noSideEffect, importcpp: "AutoIntersectionIsPossible",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc approxParamOnCurve*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter;
                        index: StandardInteger; paramOnLine: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ApproxParamOnCurve",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc calculRegion*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter;
                  x: StandardReal; y: StandardReal; x1: StandardReal;
                  x2: StandardReal; y1: StandardReal; y2: StandardReal): StandardInteger {.
    noSideEffect, importcpp: "CalculRegion",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc dump*(this: HLRBRepThePolygon2dOfTheIntPCurvePCurveOfCInter) {.noSideEffect,
    importcpp: "Dump",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
## !!!Ignored construct:  # TheCurve Standard_Address [NewLine] # TheCurve_hxx < Standard_Address . hxx > [NewLine] # TheCurveTool HLRBRep_CurveTool [NewLine] # TheCurveTool_hxx < HLRBRep_CurveTool . hxx > [NewLine] # IntCurve_Polygon2dGen HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter [NewLine] # IntCurve_Polygon2dGen_hxx < HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter . hxx > [NewLine] # < IntCurve_Polygon2dGen . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurve_Polygon2dGen [NewLine] # IntCurve_Polygon2dGen_hxx [NewLine] #  _HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter_HeaderFile
## Error: did not expect <!!!


