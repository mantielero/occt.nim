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

## !!!Ignored construct:  # _HLRBRep_ThePolygonOfInterCSurf_HeaderFile [NewLine] # _HLRBRep_ThePolygonOfInterCSurf_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Bnd/Bnd_Box.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TColStd/TColStd_HArray1OfReal.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  HLRBRep_ThePolygonOfInterCSurf* {.importcpp: "HLRBRep_ThePolygonOfInterCSurf", header: "HLRBRep_ThePolygonOfInterCSurf.hxx",
                                   bycopy.} = object


proc constructHLRBRep_ThePolygonOfInterCSurf*(Curve: gp_Lin;
    NbPnt: Standard_Integer): HLRBRep_ThePolygonOfInterCSurf {.constructor,
    importcpp: "HLRBRep_ThePolygonOfInterCSurf(@)",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc constructHLRBRep_ThePolygonOfInterCSurf*(Curve: gp_Lin; U1: Standard_Real;
    U2: Standard_Real; NbPnt: Standard_Integer): HLRBRep_ThePolygonOfInterCSurf {.
    constructor, importcpp: "HLRBRep_ThePolygonOfInterCSurf(@)",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc constructHLRBRep_ThePolygonOfInterCSurf*(Curve: gp_Lin;
    Upars: TColStd_Array1OfReal): HLRBRep_ThePolygonOfInterCSurf {.constructor,
    importcpp: "HLRBRep_ThePolygonOfInterCSurf(@)",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc Bounding*(this: HLRBRep_ThePolygonOfInterCSurf): Bnd_Box {.noSideEffect,
    importcpp: "Bounding", header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc DeflectionOverEstimation*(this: HLRBRep_ThePolygonOfInterCSurf): Standard_Real {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc SetDeflectionOverEstimation*(this: var HLRBRep_ThePolygonOfInterCSurf;
                                 x: Standard_Real) {.
    importcpp: "SetDeflectionOverEstimation",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc Closed*(this: var HLRBRep_ThePolygonOfInterCSurf; clos: Standard_Boolean) {.
    importcpp: "Closed", header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc Closed*(this: HLRBRep_ThePolygonOfInterCSurf): Standard_Boolean {.noSideEffect,
    importcpp: "Closed", header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc NbSegments*(this: HLRBRep_ThePolygonOfInterCSurf): Standard_Integer {.
    noSideEffect, importcpp: "NbSegments",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc BeginOfSeg*(this: HLRBRep_ThePolygonOfInterCSurf; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "BeginOfSeg",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc EndOfSeg*(this: HLRBRep_ThePolygonOfInterCSurf; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "EndOfSeg",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc InfParameter*(this: HLRBRep_ThePolygonOfInterCSurf): Standard_Real {.
    noSideEffect, importcpp: "InfParameter",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc SupParameter*(this: HLRBRep_ThePolygonOfInterCSurf): Standard_Real {.
    noSideEffect, importcpp: "SupParameter",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc ApproxParamOnCurve*(this: HLRBRep_ThePolygonOfInterCSurf;
                        Index: Standard_Integer; ParamOnLine: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ApproxParamOnCurve",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc Dump*(this: HLRBRep_ThePolygonOfInterCSurf) {.noSideEffect, importcpp: "Dump",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
## !!!Ignored construct:  # TheCurve gp_Lin [NewLine] # TheCurve_hxx < gp_Lin . hxx > [NewLine] # TheCurveTool HLRBRep_LineTool [NewLine] # TheCurveTool_hxx < HLRBRep_LineTool . hxx > [NewLine] # IntCurveSurface_Polygon HLRBRep_ThePolygonOfInterCSurf [NewLine] # IntCurveSurface_Polygon_hxx < HLRBRep_ThePolygonOfInterCSurf . hxx > [NewLine] # < IntCurveSurface_Polygon . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurveSurface_Polygon [NewLine] # IntCurveSurface_Polygon_hxx [NewLine] #  _HLRBRep_ThePolygonOfInterCSurf_HeaderFile [NewLine]
## Error: did not expect <!!!
