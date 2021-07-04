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

## !!!Ignored construct:  # _HLRBRep_ThePolygonToolOfInterCSurf_HeaderFile [NewLine] # _HLRBRep_ThePolygonToolOfInterCSurf_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt"
discard "forward decl of HLRBRep_ThePolygonOfInterCSurf"
discard "forward decl of Bnd_Box"
type
  HLRBRep_ThePolygonToolOfInterCSurf* {.importcpp: "HLRBRep_ThePolygonToolOfInterCSurf", header: "HLRBRep_ThePolygonToolOfInterCSurf.hxx",
                                       bycopy.} = object ## ! Give the bounding box of the polygon.


proc Bounding*(thePolygon: HLRBRep_ThePolygonOfInterCSurf): Bnd_Box {.
    importcpp: "HLRBRep_ThePolygonToolOfInterCSurf::Bounding(@)",
    header: "HLRBRep_ThePolygonToolOfInterCSurf.hxx".}
proc DeflectionOverEstimation*(thePolygon: HLRBRep_ThePolygonOfInterCSurf): Standard_Real {.importcpp: "HLRBRep_ThePolygonToolOfInterCSurf::DeflectionOverEstimation(@)",
    header: "HLRBRep_ThePolygonToolOfInterCSurf.hxx".}
proc Closed*(thePolygon: HLRBRep_ThePolygonOfInterCSurf): Standard_Boolean {.
    importcpp: "HLRBRep_ThePolygonToolOfInterCSurf::Closed(@)",
    header: "HLRBRep_ThePolygonToolOfInterCSurf.hxx".}
proc NbSegments*(thePolygon: HLRBRep_ThePolygonOfInterCSurf): Standard_Integer {.
    importcpp: "HLRBRep_ThePolygonToolOfInterCSurf::NbSegments(@)",
    header: "HLRBRep_ThePolygonToolOfInterCSurf.hxx".}
proc BeginOfSeg*(thePolygon: HLRBRep_ThePolygonOfInterCSurf;
                Index: Standard_Integer): gp_Pnt {.
    importcpp: "HLRBRep_ThePolygonToolOfInterCSurf::BeginOfSeg(@)",
    header: "HLRBRep_ThePolygonToolOfInterCSurf.hxx".}
proc EndOfSeg*(thePolygon: HLRBRep_ThePolygonOfInterCSurf; Index: Standard_Integer): gp_Pnt {.
    importcpp: "HLRBRep_ThePolygonToolOfInterCSurf::EndOfSeg(@)",
    header: "HLRBRep_ThePolygonToolOfInterCSurf.hxx".}
proc Dump*(thePolygon: HLRBRep_ThePolygonOfInterCSurf) {.
    importcpp: "HLRBRep_ThePolygonToolOfInterCSurf::Dump(@)",
    header: "HLRBRep_ThePolygonToolOfInterCSurf.hxx".}
## !!!Ignored construct:  # ThePoint gp_Pnt [NewLine] # ThePoint_hxx < gp_Pnt . hxx > [NewLine] # ThePolygon HLRBRep_ThePolygonOfInterCSurf [NewLine] # ThePolygon_hxx < HLRBRep_ThePolygonOfInterCSurf . hxx > [NewLine] # TheBoundingBox Bnd_Box [NewLine] # TheBoundingBox_hxx < Bnd_Box . hxx > [NewLine] # IntCurveSurface_PolygonTool HLRBRep_ThePolygonToolOfInterCSurf [NewLine] # IntCurveSurface_PolygonTool_hxx < HLRBRep_ThePolygonToolOfInterCSurf . hxx > [NewLine] # < IntCurveSurface_PolygonTool . lxx > [NewLine] # ThePoint [NewLine] # ThePoint_hxx [NewLine] # ThePolygon [NewLine] # ThePolygon_hxx [NewLine] # TheBoundingBox [NewLine] # TheBoundingBox_hxx [NewLine] # IntCurveSurface_PolygonTool [NewLine] # IntCurveSurface_PolygonTool_hxx [NewLine] #  _HLRBRep_ThePolygonToolOfInterCSurf_HeaderFile [NewLine]
## Error: did not expect <!!!
