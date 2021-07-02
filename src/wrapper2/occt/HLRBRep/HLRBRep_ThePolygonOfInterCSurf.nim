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

## !!!Ignored construct:  # _HLRBRep_ThePolygonOfInterCSurf_HeaderFile [NewLine] # _HLRBRep_ThePolygonOfInterCSurf_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Bnd_Box . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColgp_Array1OfPnt . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < TColStd_HArray1OfReal . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  HLRBRepThePolygonOfInterCSurf* {.importcpp: "HLRBRep_ThePolygonOfInterCSurf",
                                  header: "HLRBRep_ThePolygonOfInterCSurf.hxx",
                                  bycopy.} = object


proc constructHLRBRepThePolygonOfInterCSurf*(curve: GpLin; nbPnt: StandardInteger): HLRBRepThePolygonOfInterCSurf {.
    constructor, importcpp: "HLRBRep_ThePolygonOfInterCSurf(@)",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc constructHLRBRepThePolygonOfInterCSurf*(curve: GpLin; u1: StandardReal;
    u2: StandardReal; nbPnt: StandardInteger): HLRBRepThePolygonOfInterCSurf {.
    constructor, importcpp: "HLRBRep_ThePolygonOfInterCSurf(@)",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc constructHLRBRepThePolygonOfInterCSurf*(curve: GpLin;
    upars: TColStdArray1OfReal): HLRBRepThePolygonOfInterCSurf {.constructor,
    importcpp: "HLRBRep_ThePolygonOfInterCSurf(@)",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc bounding*(this: HLRBRepThePolygonOfInterCSurf): BndBox {.noSideEffect,
    importcpp: "Bounding", header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc deflectionOverEstimation*(this: HLRBRepThePolygonOfInterCSurf): StandardReal {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc setDeflectionOverEstimation*(this: var HLRBRepThePolygonOfInterCSurf;
                                 x: StandardReal) {.
    importcpp: "SetDeflectionOverEstimation",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc closed*(this: var HLRBRepThePolygonOfInterCSurf; clos: StandardBoolean) {.
    importcpp: "Closed", header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc closed*(this: HLRBRepThePolygonOfInterCSurf): StandardBoolean {.noSideEffect,
    importcpp: "Closed", header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc nbSegments*(this: HLRBRepThePolygonOfInterCSurf): StandardInteger {.
    noSideEffect, importcpp: "NbSegments",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc beginOfSeg*(this: HLRBRepThePolygonOfInterCSurf; index: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "BeginOfSeg",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc endOfSeg*(this: HLRBRepThePolygonOfInterCSurf; index: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "EndOfSeg",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc infParameter*(this: HLRBRepThePolygonOfInterCSurf): StandardReal {.
    noSideEffect, importcpp: "InfParameter",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc supParameter*(this: HLRBRepThePolygonOfInterCSurf): StandardReal {.
    noSideEffect, importcpp: "SupParameter",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc approxParamOnCurve*(this: HLRBRepThePolygonOfInterCSurf;
                        index: StandardInteger; paramOnLine: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ApproxParamOnCurve",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
proc dump*(this: HLRBRepThePolygonOfInterCSurf) {.noSideEffect, importcpp: "Dump",
    header: "HLRBRep_ThePolygonOfInterCSurf.hxx".}
## !!!Ignored construct:  # TheCurve gp_Lin [NewLine] # TheCurve_hxx < gp_Lin . hxx > [NewLine] # TheCurveTool HLRBRep_LineTool [NewLine] # TheCurveTool_hxx < HLRBRep_LineTool . hxx > [NewLine] # IntCurveSurface_Polygon HLRBRep_ThePolygonOfInterCSurf [NewLine] # IntCurveSurface_Polygon_hxx < HLRBRep_ThePolygonOfInterCSurf . hxx > [NewLine] # < IntCurveSurface_Polygon . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurveSurface_Polygon [NewLine] # IntCurveSurface_Polygon_hxx [NewLine] #  _HLRBRep_ThePolygonOfInterCSurf_HeaderFile
## Error: did not expect <!!!


