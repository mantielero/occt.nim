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

## !!!Ignored construct:  # _HLRBRep_ThePolyhedronOfInterCSurf_HeaderFile [NewLine] # _HLRBRep_ThePolyhedronOfInterCSurf_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Bnd/Bnd_Box.hxx [NewLine] # ../Bnd/Bnd_HArray1OfBox.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of gp_Pnt"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_XYZ"
type
  HLRBRep_ThePolyhedronOfInterCSurf* {.importcpp: "HLRBRep_ThePolyhedronOfInterCSurf", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx",
                                      bycopy.} = object ## ! This method computes and returns a deflection of isoline
                                                     ## ! of given parameter on Surface.


proc constructHLRBRep_ThePolyhedronOfInterCSurf*(Surface: Standard_Address;
    nbdU: Standard_Integer; nbdV: Standard_Integer; U1: Standard_Real;
    V1: Standard_Real; U2: Standard_Real; V2: Standard_Real): HLRBRep_ThePolyhedronOfInterCSurf {.
    constructor, importcpp: "HLRBRep_ThePolyhedronOfInterCSurf(@)",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc constructHLRBRep_ThePolyhedronOfInterCSurf*(Surface: Standard_Address;
    Upars: TColStd_Array1OfReal; Vpars: TColStd_Array1OfReal): HLRBRep_ThePolyhedronOfInterCSurf {.
    constructor, importcpp: "HLRBRep_ThePolyhedronOfInterCSurf(@)",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Destroy*(this: var HLRBRep_ThePolyhedronOfInterCSurf) {.importcpp: "Destroy",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc destroyHLRBRep_ThePolyhedronOfInterCSurf*(
    this: var HLRBRep_ThePolyhedronOfInterCSurf) {.
    importcpp: "#.~HLRBRep_ThePolyhedronOfInterCSurf()",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc DeflectionOverEstimation*(this: var HLRBRep_ThePolyhedronOfInterCSurf;
                              flec: Standard_Real) {.
    importcpp: "DeflectionOverEstimation",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc DeflectionOnTriangle*(this: HLRBRep_ThePolyhedronOfInterCSurf;
                          Surface: Standard_Address; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "DeflectionOnTriangle",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc UMinSingularity*(this: var HLRBRep_ThePolyhedronOfInterCSurf;
                     Sing: Standard_Boolean) {.importcpp: "UMinSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc UMaxSingularity*(this: var HLRBRep_ThePolyhedronOfInterCSurf;
                     Sing: Standard_Boolean) {.importcpp: "UMaxSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc VMinSingularity*(this: var HLRBRep_ThePolyhedronOfInterCSurf;
                     Sing: Standard_Boolean) {.importcpp: "VMinSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc VMaxSingularity*(this: var HLRBRep_ThePolyhedronOfInterCSurf;
                     Sing: Standard_Boolean) {.importcpp: "VMaxSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Size*(this: HLRBRep_ThePolyhedronOfInterCSurf; nbdu: var Standard_Integer;
          nbdv: var Standard_Integer) {.noSideEffect, importcpp: "Size", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc NbTriangles*(this: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Integer {.
    noSideEffect, importcpp: "NbTriangles",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Triangle*(this: HLRBRep_ThePolyhedronOfInterCSurf; Index: Standard_Integer;
              P1: var Standard_Integer; P2: var Standard_Integer;
              P3: var Standard_Integer) {.noSideEffect, importcpp: "Triangle", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc TriConnex*(this: HLRBRep_ThePolyhedronOfInterCSurf; Triang: Standard_Integer;
               Pivot: Standard_Integer; Pedge: Standard_Integer;
               TriCon: var Standard_Integer; OtherP: var Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "TriConnex",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc NbPoints*(this: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Integer {.
    noSideEffect, importcpp: "NbPoints",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Point*(this: var HLRBRep_ThePolyhedronOfInterCSurf; thePnt: gp_Pnt;
           lig: Standard_Integer; col: Standard_Integer; U: Standard_Real;
           V: Standard_Real) {.importcpp: "Point",
                             header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Point*(this: HLRBRep_ThePolyhedronOfInterCSurf; Index: Standard_Integer;
           U: var Standard_Real; V: var Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Point*(this: HLRBRep_ThePolyhedronOfInterCSurf; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Point*(this: HLRBRep_ThePolyhedronOfInterCSurf; Index: Standard_Integer;
           P: var gp_Pnt) {.noSideEffect, importcpp: "Point",
                         header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Bounding*(this: HLRBRep_ThePolyhedronOfInterCSurf): Bnd_Box {.noSideEffect,
    importcpp: "Bounding", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc FillBounding*(this: var HLRBRep_ThePolyhedronOfInterCSurf) {.
    importcpp: "FillBounding", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc ComponentsBounding*(this: HLRBRep_ThePolyhedronOfInterCSurf): handle[
    Bnd_HArray1OfBox] {.noSideEffect, importcpp: "ComponentsBounding",
                       header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc DeflectionOverEstimation*(this: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Real {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc HasUMinSingularity*(this: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Boolean {.
    noSideEffect, importcpp: "HasUMinSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc HasUMaxSingularity*(this: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Boolean {.
    noSideEffect, importcpp: "HasUMaxSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc HasVMinSingularity*(this: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Boolean {.
    noSideEffect, importcpp: "HasVMinSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc HasVMaxSingularity*(this: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Boolean {.
    noSideEffect, importcpp: "HasVMaxSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc PlaneEquation*(this: HLRBRep_ThePolyhedronOfInterCSurf;
                   Triang: Standard_Integer; NormalVector: var gp_XYZ;
                   PolarDistance: var Standard_Real) {.noSideEffect,
    importcpp: "PlaneEquation", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Contain*(this: HLRBRep_ThePolyhedronOfInterCSurf; Triang: Standard_Integer;
             ThePnt: gp_Pnt): Standard_Boolean {.noSideEffect, importcpp: "Contain",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Parameters*(this: HLRBRep_ThePolyhedronOfInterCSurf; Index: Standard_Integer;
                U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc IsOnBound*(this: HLRBRep_ThePolyhedronOfInterCSurf; Index1: Standard_Integer;
               Index2: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnBound", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc GetBorderDeflection*(this: HLRBRep_ThePolyhedronOfInterCSurf): Standard_Real {.
    noSideEffect, importcpp: "GetBorderDeflection",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc Dump*(this: HLRBRep_ThePolyhedronOfInterCSurf) {.noSideEffect,
    importcpp: "Dump", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
## !!!Ignored construct:  # ThePSurface Standard_Address [NewLine] # ThePSurface_hxx < Standard_Address . hxx > [NewLine] # ThePSurfaceTool HLRBRep_SurfaceTool [NewLine] # ThePSurfaceTool_hxx < HLRBRep_SurfaceTool . hxx > [NewLine] # IntCurveSurface_Polyhedron HLRBRep_ThePolyhedronOfInterCSurf [NewLine] # IntCurveSurface_Polyhedron_hxx < HLRBRep_ThePolyhedronOfInterCSurf . hxx > [NewLine] # < IntCurveSurface_Polyhedron . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntCurveSurface_Polyhedron [NewLine] # IntCurveSurface_Polyhedron_hxx [NewLine] #  _HLRBRep_ThePolyhedronOfInterCSurf_HeaderFile [NewLine]
## Error: did not expect <!!!
