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

## !!!Ignored construct:  # _IntCurveSurface_ThePolygonToolOfHInter_HeaderFile [NewLine] # _IntCurveSurface_ThePolygonToolOfHInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt"
discard "forward decl of IntCurveSurface_ThePolygonOfHInter"
discard "forward decl of Bnd_Box"
type
  IntCurveSurfaceThePolygonToolOfHInter* {.
      importcpp: "IntCurveSurface_ThePolygonToolOfHInter",
      header: "IntCurveSurface_ThePolygonToolOfHInter.hxx", bycopy.} = object ## ! Give the
                                                                         ## bounding box of the
                                                                         ## polygon.


proc bounding*(thePolygon: IntCurveSurfaceThePolygonOfHInter): BndBox {.
    importcpp: "IntCurveSurface_ThePolygonToolOfHInter::Bounding(@)",
    header: "IntCurveSurface_ThePolygonToolOfHInter.hxx".}
proc deflectionOverEstimation*(thePolygon: IntCurveSurfaceThePolygonOfHInter): StandardReal {.importcpp: "IntCurveSurface_ThePolygonToolOfHInter::DeflectionOverEstimation(@)",
    header: "IntCurveSurface_ThePolygonToolOfHInter.hxx".}
proc closed*(thePolygon: IntCurveSurfaceThePolygonOfHInter): StandardBoolean {.
    importcpp: "IntCurveSurface_ThePolygonToolOfHInter::Closed(@)",
    header: "IntCurveSurface_ThePolygonToolOfHInter.hxx".}
proc nbSegments*(thePolygon: IntCurveSurfaceThePolygonOfHInter): StandardInteger {.
    importcpp: "IntCurveSurface_ThePolygonToolOfHInter::NbSegments(@)",
    header: "IntCurveSurface_ThePolygonToolOfHInter.hxx".}
proc beginOfSeg*(thePolygon: IntCurveSurfaceThePolygonOfHInter;
                index: StandardInteger): GpPnt {.
    importcpp: "IntCurveSurface_ThePolygonToolOfHInter::BeginOfSeg(@)",
    header: "IntCurveSurface_ThePolygonToolOfHInter.hxx".}
proc endOfSeg*(thePolygon: IntCurveSurfaceThePolygonOfHInter;
              index: StandardInteger): GpPnt {.
    importcpp: "IntCurveSurface_ThePolygonToolOfHInter::EndOfSeg(@)",
    header: "IntCurveSurface_ThePolygonToolOfHInter.hxx".}
proc dump*(thePolygon: IntCurveSurfaceThePolygonOfHInter) {.
    importcpp: "IntCurveSurface_ThePolygonToolOfHInter::Dump(@)",
    header: "IntCurveSurface_ThePolygonToolOfHInter.hxx".}
## !!!Ignored construct:  # ThePoint gp_Pnt [NewLine] # ThePoint_hxx < gp_Pnt . hxx > [NewLine] # ThePolygon IntCurveSurface_ThePolygonOfHInter [NewLine] # ThePolygon_hxx < IntCurveSurface_ThePolygonOfHInter . hxx > [NewLine] # TheBoundingBox Bnd_Box [NewLine] # TheBoundingBox_hxx < Bnd_Box . hxx > [NewLine] # IntCurveSurface_PolygonTool IntCurveSurface_ThePolygonToolOfHInter [NewLine] # IntCurveSurface_PolygonTool_hxx < IntCurveSurface_ThePolygonToolOfHInter . hxx > [NewLine] # < IntCurveSurface_PolygonTool . lxx > [NewLine] # ThePoint [NewLine] # ThePoint_hxx [NewLine] # ThePolygon [NewLine] # ThePolygon_hxx [NewLine] # TheBoundingBox [NewLine] # TheBoundingBox_hxx [NewLine] # IntCurveSurface_PolygonTool [NewLine] # IntCurveSurface_PolygonTool_hxx [NewLine] #  _IntCurveSurface_ThePolygonToolOfHInter_HeaderFile
## Error: did not expect <!!!


