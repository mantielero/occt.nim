##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
##  Copyright (c) 1993-1999 Matra Datavision
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

## !!!Ignored construct:  # _IntCurveSurface_ThePolygonOfHInter_HeaderFile [NewLine] # _IntCurveSurface_ThePolygonOfHInter_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Bnd/Bnd_Box.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TColStd/TColStd_HArray1OfReal.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of IntCurveSurface_TheHCurveTool"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  IntCurveSurface_ThePolygonOfHInter* {.importcpp: "IntCurveSurface_ThePolygonOfHInter", header: "IntCurveSurface_ThePolygonOfHInter.hxx",
                                       bycopy.} = object


proc constructIntCurveSurface_ThePolygonOfHInter*(
    Curve: handle[Adaptor3d_HCurve]; NbPnt: Standard_Integer): IntCurveSurface_ThePolygonOfHInter {.
    constructor, importcpp: "IntCurveSurface_ThePolygonOfHInter(@)",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc constructIntCurveSurface_ThePolygonOfHInter*(
    Curve: handle[Adaptor3d_HCurve]; U1: Standard_Real; U2: Standard_Real;
    NbPnt: Standard_Integer): IntCurveSurface_ThePolygonOfHInter {.constructor,
    importcpp: "IntCurveSurface_ThePolygonOfHInter(@)",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc constructIntCurveSurface_ThePolygonOfHInter*(
    Curve: handle[Adaptor3d_HCurve]; Upars: TColStd_Array1OfReal): IntCurveSurface_ThePolygonOfHInter {.
    constructor, importcpp: "IntCurveSurface_ThePolygonOfHInter(@)",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc Bounding*(this: IntCurveSurface_ThePolygonOfHInter): Bnd_Box {.noSideEffect,
    importcpp: "Bounding", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc DeflectionOverEstimation*(this: IntCurveSurface_ThePolygonOfHInter): Standard_Real {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc SetDeflectionOverEstimation*(this: var IntCurveSurface_ThePolygonOfHInter;
                                 x: Standard_Real) {.
    importcpp: "SetDeflectionOverEstimation",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc Closed*(this: var IntCurveSurface_ThePolygonOfHInter; clos: Standard_Boolean) {.
    importcpp: "Closed", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc Closed*(this: IntCurveSurface_ThePolygonOfHInter): Standard_Boolean {.
    noSideEffect, importcpp: "Closed",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc NbSegments*(this: IntCurveSurface_ThePolygonOfHInter): Standard_Integer {.
    noSideEffect, importcpp: "NbSegments",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc BeginOfSeg*(this: IntCurveSurface_ThePolygonOfHInter; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "BeginOfSeg",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc EndOfSeg*(this: IntCurveSurface_ThePolygonOfHInter; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "EndOfSeg",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc InfParameter*(this: IntCurveSurface_ThePolygonOfHInter): Standard_Real {.
    noSideEffect, importcpp: "InfParameter",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc SupParameter*(this: IntCurveSurface_ThePolygonOfHInter): Standard_Real {.
    noSideEffect, importcpp: "SupParameter",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc ApproxParamOnCurve*(this: IntCurveSurface_ThePolygonOfHInter;
                        Index: Standard_Integer; ParamOnLine: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ApproxParamOnCurve",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc Dump*(this: IntCurveSurface_ThePolygonOfHInter) {.noSideEffect,
    importcpp: "Dump", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
## !!!Ignored construct:  # TheCurve opencascade :: handle < Adaptor3d_HCurve > [end of template] [NewLine] # TheCurve_hxx < Adaptor3d_HCurve . hxx > [NewLine] # TheCurveTool IntCurveSurface_TheHCurveTool [NewLine] # TheCurveTool_hxx < IntCurveSurface_TheHCurveTool . hxx > [NewLine] # IntCurveSurface_Polygon IntCurveSurface_ThePolygonOfHInter [NewLine] # IntCurveSurface_Polygon_hxx < IntCurveSurface_ThePolygonOfHInter . hxx > [NewLine] # < IntCurveSurface_Polygon . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurveSurface_Polygon [NewLine] # IntCurveSurface_Polygon_hxx [NewLine] #  _IntCurveSurface_ThePolygonOfHInter_HeaderFile [NewLine]
## Error: did not expect <!!!
