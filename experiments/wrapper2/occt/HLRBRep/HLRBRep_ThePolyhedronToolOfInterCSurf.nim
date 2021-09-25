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

## !!!Ignored construct:  # _HLRBRep_ThePolyhedronToolOfInterCSurf_HeaderFile [NewLine] # _HLRBRep_ThePolyhedronToolOfInterCSurf_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Bnd_HArray1OfBox . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of HLRBRep_ThePolyhedronOfInterCSurf"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  HLRBRepThePolyhedronToolOfInterCSurf* {.
      importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf",
      header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx", bycopy.} = object ## ! Give the bounding box of the
                                                                        ## PolyhedronTool.


proc bounding*(thePolyh: HLRBRepThePolyhedronOfInterCSurf): BndBox {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::Bounding(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc componentsBounding*(thePolyh: HLRBRepThePolyhedronOfInterCSurf): Handle[
    BndHArray1OfBox] {.importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::ComponentsBounding(@)",
                      header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc deflectionOverEstimation*(thePolyh: HLRBRepThePolyhedronOfInterCSurf): float {.importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::DeflectionOverEstimation(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc nbTriangles*(thePolyh: HLRBRepThePolyhedronOfInterCSurf): int {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::NbTriangles(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc triangle*(thePolyh: HLRBRepThePolyhedronOfInterCSurf; index: int; p1: var int;
              p2: var int; p3: var int) {.importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::Triangle(@)", header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc point*(thePolyh: HLRBRepThePolyhedronOfInterCSurf; index: int): Pnt {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::Point(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc triConnex*(thePolyh: HLRBRepThePolyhedronOfInterCSurf; triang: int; pivot: int;
               pedge: int; triCon: var int; otherP: var int): int {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::TriConnex(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc isOnBound*(thePolyh: HLRBRepThePolyhedronOfInterCSurf; index1: int; index2: int): bool {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::IsOnBound(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc getBorderDeflection*(thePolyh: HLRBRepThePolyhedronOfInterCSurf): float {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::GetBorderDeflection(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
proc dump*(thePolyh: HLRBRepThePolyhedronOfInterCSurf) {.
    importcpp: "HLRBRep_ThePolyhedronToolOfInterCSurf::Dump(@)",
    header: "HLRBRep_ThePolyhedronToolOfInterCSurf.hxx".}
## !!!Ignored construct:  # ThePolyhedron HLRBRep_ThePolyhedronOfInterCSurf [NewLine] # ThePolyhedron_hxx < HLRBRep_ThePolyhedronOfInterCSurf . hxx > [NewLine] # IntCurveSurface_PolyhedronTool HLRBRep_ThePolyhedronToolOfInterCSurf [NewLine] # IntCurveSurface_PolyhedronTool_hxx < HLRBRep_ThePolyhedronToolOfInterCSurf . hxx > [NewLine] # < IntCurveSurface_PolyhedronTool . lxx > [NewLine] # ThePolyhedron [NewLine] # ThePolyhedron_hxx [NewLine] # IntCurveSurface_PolyhedronTool [NewLine] # IntCurveSurface_PolyhedronTool_hxx [NewLine] #  _HLRBRep_ThePolyhedronToolOfInterCSurf_HeaderFile
## Error: did not expect <!!!

