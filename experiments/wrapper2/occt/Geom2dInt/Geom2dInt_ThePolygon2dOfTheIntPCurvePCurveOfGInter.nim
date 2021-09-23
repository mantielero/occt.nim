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

## !!!Ignored construct:  # _Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter_HeaderFile [NewLine] # _Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt2d.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../TColStd/TColStd_Array1OfInteger.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Intf/Intf_Polygon2d.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter* {.
      importcpp: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter",
      header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx", bycopy.} = object of Intf_Polygon2d ##
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


proc constructGeom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter*(
    Curve: Adaptor2d_Curve2d; NbPnt: Standard_Integer; Domain: IntRes2d_Domain;
    Tol: Standard_Real): Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter {.
    constructor,
    importcpp: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter(@)",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc ComputeWithBox*(this: var Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
                    Curve: Adaptor2d_Curve2d; OtherBox: Bnd_Box2d) {.
    importcpp: "ComputeWithBox",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc DeflectionOverEstimation*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter): Standard_Real {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc SetDeflectionOverEstimation*(this: var Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
                                 x: Standard_Real) {.
    importcpp: "SetDeflectionOverEstimation",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc Closed*(this: var Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
            clos: Standard_Boolean) {.importcpp: "Closed", header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc Closed*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter): Standard_Boolean {.
    noSideEffect, importcpp: "Closed",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc NbSegments*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter): Standard_Integer {.
    noSideEffect, importcpp: "NbSegments",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc Segment*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
             theIndex: Standard_Integer; theBegin: var gp_Pnt2d; theEnd: var gp_Pnt2d) {.
    noSideEffect, importcpp: "Segment",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc InfParameter*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter): Standard_Real {.
    noSideEffect, importcpp: "InfParameter",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc SupParameter*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter): Standard_Real {.
    noSideEffect, importcpp: "SupParameter",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc AutoIntersectionIsPossible*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter): Standard_Boolean {.
    noSideEffect, importcpp: "AutoIntersectionIsPossible",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc ApproxParamOnCurve*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
                        Index: Standard_Integer; ParamOnLine: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ApproxParamOnCurve",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc CalculRegion*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter;
                  x: Standard_Real; y: Standard_Real; x1: Standard_Real;
                  x2: Standard_Real; y1: Standard_Real; y2: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "CalculRegion",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
proc Dump*(this: Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter) {.
    noSideEffect, importcpp: "Dump",
    header: "Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx".}
## !!!Ignored construct:  # TheCurve Adaptor2d_Curve2d [NewLine] # TheCurve_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # TheCurveTool Geom2dInt_Geom2dCurveTool [NewLine] # TheCurveTool_hxx < Geom2dInt_Geom2dCurveTool . hxx > [NewLine] # IntCurve_Polygon2dGen Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter [NewLine] # IntCurve_Polygon2dGen_hxx < Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter . hxx > [NewLine] # < IntCurve_Polygon2dGen . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurve_Polygon2dGen [NewLine] # IntCurve_Polygon2dGen_hxx [NewLine] #  _Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter_HeaderFile [NewLine]
## Error: did not expect <!!!
