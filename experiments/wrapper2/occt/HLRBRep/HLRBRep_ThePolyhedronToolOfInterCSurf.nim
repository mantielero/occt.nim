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

## !!!Ignored construct:  # _HLRBRep_ThePolyhedronToolOfInterCSurf_HeaderFile [NewLine] # _HLRBRep_ThePolyhedronToolOfInterCSurf_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Bnd/Bnd_HArray1OfBox.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of HLRBRep_ThePolyhedronOfInterCSurf"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  HLRBRep_ThePolyhedronToolOfInterCSurf* {.
      importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf",
      header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx", bycopy.} = object ## ! Give the bounding box of the
                                                                        ## PolyhedronTool.


proc Bounding*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf): Bnd_Box {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::Bounding(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc ComponentsBounding*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf): handle[
    Bnd_HArray1OfBox] {.importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::ComponentsBounding(@)",
                       header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc DeflectionOverEstimation*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Real {.importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::DeflectionOverEstimation(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc NbTriangles*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Integer {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::NbTriangles(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc Triangle*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf;
              Index: Standard_Integer; P1: var Standard_Integer;
              P2: var Standard_Integer; P3: var Standard_Integer) {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::Triangle(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc Point*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf; Index: Standard_Integer): gp_Pnt {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::Point(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc TriConnex*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf;
               Triang: Standard_Integer; Pivot: Standard_Integer;
               Pedge: Standard_Integer; TriCon: var Standard_Integer;
               OtherP: var Standard_Integer): Standard_Integer {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::TriConnex(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc IsOnBound*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf;
               Index1: Standard_Integer; Index2: Standard_Integer): Standard_Boolean {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::IsOnBound(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc GetBorderDeflection*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Real {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::GetBorderDeflection(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc Dump*(thePolyh: HLRBRep_ThePolyhedronOfInterCSurf) {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::Dump(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
## !!!Ignored construct:  # ThePolyhedron HLRBRep_ThePolyhedronOfInterCSurf [NewLine] # ThePolyhedron_hxx < HLRBRep_ThePolyhedronOfInterCSurf . hxx > [NewLine] # IntCurveSurface_PolyhedronTool HLRBRep_ThePolyhedronToolOfInterCSurf [NewLine] # IntCurveSurface_PolyhedronTool_hxx < HLRBRep_ThePolyhedronToolOfInterCSurf . hxx > [NewLine] # < IntCurveSurface_PolyhedronTool . lxx > [NewLine] # ThePolyhedron [NewLine] # ThePolyhedron_hxx [NewLine] # IntCurveSurface_PolyhedronTool [NewLine] # IntCurveSurface_PolyhedronTool_hxx [NewLine] #  _HLRBRep_ThePolyhedronToolOfInterCSurf_HeaderFile [NewLine]
## Error: did not expect <!!!
