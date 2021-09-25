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

## !!!Ignored construct:  # _IntCurveSurface_ThePolygonOfHInter_HeaderFile [NewLine] # _IntCurveSurface_ThePolygonOfHInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Bnd_Box . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColgp_Array1OfPnt . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < TColStd_HArray1OfReal . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of IntCurveSurface_TheHCurveTool"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  IntCurveSurfaceThePolygonOfHInter* {.importcpp: "IntCurveSurface_ThePolygonOfHInter", header: "IntCurveSurface_ThePolygonOfHInter.hxx",
                                      bycopy.} = object


proc constructIntCurveSurfaceThePolygonOfHInter*(curve: Handle[Adaptor3dHCurve];
    nbPnt: int): IntCurveSurfaceThePolygonOfHInter {.constructor,
    importcpp: "IntCurveSurface_ThePolygonOfHInter(@)",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc constructIntCurveSurfaceThePolygonOfHInter*(curve: Handle[Adaptor3dHCurve];
    u1: float; u2: float; nbPnt: int): IntCurveSurfaceThePolygonOfHInter {.constructor,
    importcpp: "IntCurveSurface_ThePolygonOfHInter(@)",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc constructIntCurveSurfaceThePolygonOfHInter*(curve: Handle[Adaptor3dHCurve];
    upars: TColStdArray1OfReal): IntCurveSurfaceThePolygonOfHInter {.constructor,
    importcpp: "IntCurveSurface_ThePolygonOfHInter(@)",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc bounding*(this: IntCurveSurfaceThePolygonOfHInter): BndBox {.noSideEffect,
    importcpp: "Bounding", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc deflectionOverEstimation*(this: IntCurveSurfaceThePolygonOfHInter): float {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc setDeflectionOverEstimation*(this: var IntCurveSurfaceThePolygonOfHInter;
                                 x: float) {.
    importcpp: "SetDeflectionOverEstimation",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc closed*(this: var IntCurveSurfaceThePolygonOfHInter; clos: bool) {.
    importcpp: "Closed", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc closed*(this: IntCurveSurfaceThePolygonOfHInter): bool {.noSideEffect,
    importcpp: "Closed", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc nbSegments*(this: IntCurveSurfaceThePolygonOfHInter): int {.noSideEffect,
    importcpp: "NbSegments", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc beginOfSeg*(this: IntCurveSurfaceThePolygonOfHInter; index: int): Pnt {.
    noSideEffect, importcpp: "BeginOfSeg",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc endOfSeg*(this: IntCurveSurfaceThePolygonOfHInter; index: int): Pnt {.
    noSideEffect, importcpp: "EndOfSeg",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc infParameter*(this: IntCurveSurfaceThePolygonOfHInter): float {.noSideEffect,
    importcpp: "InfParameter", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc supParameter*(this: IntCurveSurfaceThePolygonOfHInter): float {.noSideEffect,
    importcpp: "SupParameter", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc approxParamOnCurve*(this: IntCurveSurfaceThePolygonOfHInter; index: int;
                        paramOnLine: float): float {.noSideEffect,
    importcpp: "ApproxParamOnCurve",
    header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
proc dump*(this: IntCurveSurfaceThePolygonOfHInter) {.noSideEffect,
    importcpp: "Dump", header: "IntCurveSurface_ThePolygonOfHInter.hxx".}
## !!!Ignored construct:  # TheCurve opencascade :: handle < Adaptor3d_HCurve > [end of template] [NewLine] # TheCurve_hxx < Adaptor3d_HCurve . hxx > [NewLine] # TheCurveTool IntCurveSurface_TheHCurveTool [NewLine] # TheCurveTool_hxx < IntCurveSurface_TheHCurveTool . hxx > [NewLine] # IntCurveSurface_Polygon IntCurveSurface_ThePolygonOfHInter [NewLine] # IntCurveSurface_Polygon_hxx < IntCurveSurface_ThePolygonOfHInter . hxx > [NewLine] # < IntCurveSurface_Polygon . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # TheCurveTool [NewLine] # TheCurveTool_hxx [NewLine] # IntCurveSurface_Polygon [NewLine] # IntCurveSurface_Polygon_hxx [NewLine] #  _IntCurveSurface_ThePolygonOfHInter_HeaderFile
## Error: did not expect <!!!

