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

## !!!Ignored construct:  # _HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter_HeaderFile [NewLine] # _HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt2d.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../TColStd/TColStd_Array1OfInteger.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Intf/Intf_Polygon2d.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Pnt2d"
type
  HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter* {.
      importcpp: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter",
      header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx", bycopy.} = object of Intf_Polygon2d ##
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


proc constructHLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter*(
    Curve: Standard_Address; NbPnt: Standard_Integer; Domain: IntRes2d_Domain;
    Tol: Standard_Real): HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter {.
    constructor,
    importcpp: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter(@)",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc ComputeWithBox*(this: var HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
                    Curve: Standard_Address; OtherBox: Bnd_Box2d) {.
    importcpp: "ComputeWithBox",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc DeflectionOverEstimation*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter): Standard_Real {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc SetDeflectionOverEstimation*(this: var HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
                                 x: Standard_Real) {.
    importcpp: "SetDeflectionOverEstimation",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc Closed*(this: var HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
            clos: Standard_Boolean) {.importcpp: "Closed", header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc Closed*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter): Standard_Boolean {.
    noSideEffect, importcpp: "Closed",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc NbSegments*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter): Standard_Integer {.
    noSideEffect, importcpp: "NbSegments",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc Segment*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
             theIndex: Standard_Integer; theBegin: var gp_Pnt2d; theEnd: var gp_Pnt2d) {.
    noSideEffect, importcpp: "Segment",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc InfParameter*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter): Standard_Real {.
    noSideEffect, importcpp: "InfParameter",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc SupParameter*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter): Standard_Real {.
    noSideEffect, importcpp: "SupParameter",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc AutoIntersectionIsPossible*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter): Standard_Boolean {.
    noSideEffect, importcpp: "AutoIntersectionIsPossible",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc ApproxParamOnCurve*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
                        Index: Standard_Integer; ParamOnLine: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ApproxParamOnCurve",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc CalculRegion*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
                  x: Standard_Real; y: Standard_Real; x1: Standard_Real;
                  x2: Standard_Real; y1: Standard_Real; y2: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "CalculRegion",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
proc Dump*(this: HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter) {.noSideEffect,
    importcpp: "Dump",
    header: "HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx".}
## !!!Ignored construct:  # TheCurve Standard_Address [NewLine] # TheCurve_hxx < Standard_Address . hxx > [NewLine] # TheCurveTool HLRBRep_CurveTool [NewLine] # TheCurveTool_hxx < HLRBRep_CurveTool . hxx > [NewLine] # IntCurve_Polygon2dGen HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter [NewLine] # IntCurve_Polygon2dGen_hxx < HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter . hxx > [NewLine] # < IntCurve_Polygon2dGen . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurve_Polygon2dGen [NewLine] # IntCurve_Polygon2dGen_hxx [NewLine] #  _HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter_HeaderFile [NewLine]
## Error: did not expect <!!!
