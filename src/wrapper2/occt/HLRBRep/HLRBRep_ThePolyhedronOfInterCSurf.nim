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

## !!!Ignored construct:  # _HLRBRep_ThePolyhedronOfInterCSurf_HeaderFile [NewLine] # _HLRBRep_ThePolyhedronOfInterCSurf_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Bnd_Box . hxx > [NewLine] # < Bnd_HArray1OfBox . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of gp_Pnt"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_XYZ"
type
  HLRBRepThePolyhedronOfInterCSurf* {.importcpp: "HLRBRep_ThePolyhedronOfInterCSurf", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx",
                                     bycopy.} = object ## ! This method computes and returns a deflection of isoline
                                                    ## ! of given parameter on Surface.


proc constructHLRBRepThePolyhedronOfInterCSurf*(surface: StandardAddress;
    nbdU: StandardInteger; nbdV: StandardInteger; u1: StandardReal; v1: StandardReal;
    u2: StandardReal; v2: StandardReal): HLRBRepThePolyhedronOfInterCSurf {.
    constructor, importcpp: "HLRBRep_ThePolyhedronOfInterCSurf(@)",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc constructHLRBRepThePolyhedronOfInterCSurf*(surface: StandardAddress;
    upars: TColStdArray1OfReal; vpars: TColStdArray1OfReal): HLRBRepThePolyhedronOfInterCSurf {.
    constructor, importcpp: "HLRBRep_ThePolyhedronOfInterCSurf(@)",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc destroy*(this: var HLRBRepThePolyhedronOfInterCSurf) {.importcpp: "Destroy",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc destroyHLRBRepThePolyhedronOfInterCSurf*(
    this: var HLRBRepThePolyhedronOfInterCSurf) {.
    importcpp: "#.~HLRBRep_ThePolyhedronOfInterCSurf()",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc deflectionOverEstimation*(this: var HLRBRepThePolyhedronOfInterCSurf;
                              flec: StandardReal) {.
    importcpp: "DeflectionOverEstimation",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc deflectionOnTriangle*(this: HLRBRepThePolyhedronOfInterCSurf;
                          surface: StandardAddress; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "DeflectionOnTriangle",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc uMinSingularity*(this: var HLRBRepThePolyhedronOfInterCSurf;
                     sing: StandardBoolean) {.importcpp: "UMinSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc uMaxSingularity*(this: var HLRBRepThePolyhedronOfInterCSurf;
                     sing: StandardBoolean) {.importcpp: "UMaxSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc vMinSingularity*(this: var HLRBRepThePolyhedronOfInterCSurf;
                     sing: StandardBoolean) {.importcpp: "VMinSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc vMaxSingularity*(this: var HLRBRepThePolyhedronOfInterCSurf;
                     sing: StandardBoolean) {.importcpp: "VMaxSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc size*(this: HLRBRepThePolyhedronOfInterCSurf; nbdu: var StandardInteger;
          nbdv: var StandardInteger) {.noSideEffect, importcpp: "Size", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc nbTriangles*(this: HLRBRepThePolyhedronOfInterCSurf): StandardInteger {.
    noSideEffect, importcpp: "NbTriangles",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc triangle*(this: HLRBRepThePolyhedronOfInterCSurf; index: StandardInteger;
              p1: var StandardInteger; p2: var StandardInteger;
              p3: var StandardInteger) {.noSideEffect, importcpp: "Triangle", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc triConnex*(this: HLRBRepThePolyhedronOfInterCSurf; triang: StandardInteger;
               pivot: StandardInteger; pedge: StandardInteger;
               triCon: var StandardInteger; otherP: var StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "TriConnex",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc nbPoints*(this: HLRBRepThePolyhedronOfInterCSurf): StandardInteger {.
    noSideEffect, importcpp: "NbPoints",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc point*(this: var HLRBRepThePolyhedronOfInterCSurf; thePnt: GpPnt;
           lig: StandardInteger; col: StandardInteger; u: StandardReal;
           v: StandardReal) {.importcpp: "Point",
                            header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc point*(this: HLRBRepThePolyhedronOfInterCSurf; index: StandardInteger;
           u: var StandardReal; v: var StandardReal): GpPnt {.noSideEffect,
    importcpp: "Point", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc point*(this: HLRBRepThePolyhedronOfInterCSurf; index: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "Point",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc point*(this: HLRBRepThePolyhedronOfInterCSurf; index: StandardInteger;
           p: var GpPnt) {.noSideEffect, importcpp: "Point",
                        header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc bounding*(this: HLRBRepThePolyhedronOfInterCSurf): BndBox {.noSideEffect,
    importcpp: "Bounding", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc fillBounding*(this: var HLRBRepThePolyhedronOfInterCSurf) {.
    importcpp: "FillBounding", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc componentsBounding*(this: HLRBRepThePolyhedronOfInterCSurf): Handle[
    BndHArray1OfBox] {.noSideEffect, importcpp: "ComponentsBounding",
                      header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc deflectionOverEstimation*(this: HLRBRepThePolyhedronOfInterCSurf): StandardReal {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc hasUMinSingularity*(this: HLRBRepThePolyhedronOfInterCSurf): StandardBoolean {.
    noSideEffect, importcpp: "HasUMinSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc hasUMaxSingularity*(this: HLRBRepThePolyhedronOfInterCSurf): StandardBoolean {.
    noSideEffect, importcpp: "HasUMaxSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc hasVMinSingularity*(this: HLRBRepThePolyhedronOfInterCSurf): StandardBoolean {.
    noSideEffect, importcpp: "HasVMinSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc hasVMaxSingularity*(this: HLRBRepThePolyhedronOfInterCSurf): StandardBoolean {.
    noSideEffect, importcpp: "HasVMaxSingularity",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc planeEquation*(this: HLRBRepThePolyhedronOfInterCSurf;
                   triang: StandardInteger; normalVector: var GpXYZ;
                   polarDistance: var StandardReal) {.noSideEffect,
    importcpp: "PlaneEquation", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc contain*(this: HLRBRepThePolyhedronOfInterCSurf; triang: StandardInteger;
             thePnt: GpPnt): StandardBoolean {.noSideEffect, importcpp: "Contain",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc parameters*(this: HLRBRepThePolyhedronOfInterCSurf; index: StandardInteger;
                u: var StandardReal; v: var StandardReal) {.noSideEffect,
    importcpp: "Parameters", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc isOnBound*(this: HLRBRepThePolyhedronOfInterCSurf; index1: StandardInteger;
               index2: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsOnBound", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc getBorderDeflection*(this: HLRBRepThePolyhedronOfInterCSurf): StandardReal {.
    noSideEffect, importcpp: "GetBorderDeflection",
    header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
proc dump*(this: HLRBRepThePolyhedronOfInterCSurf) {.noSideEffect,
    importcpp: "Dump", header: "HLRBRep_ThePolyhedronOfInterCSurf.hxx".}
## !!!Ignored construct:  # ThePSurface Standard_Address [NewLine] # ThePSurface_hxx < Standard_Address . hxx > [NewLine] # ThePSurfaceTool HLRBRep_SurfaceTool [NewLine] # ThePSurfaceTool_hxx < HLRBRep_SurfaceTool . hxx > [NewLine] # IntCurveSurface_Polyhedron HLRBRep_ThePolyhedronOfInterCSurf [NewLine] # IntCurveSurface_Polyhedron_hxx < HLRBRep_ThePolyhedronOfInterCSurf . hxx > [NewLine] # < IntCurveSurface_Polyhedron . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntCurveSurface_Polyhedron [NewLine] # IntCurveSurface_Polyhedron_hxx [NewLine] #  _HLRBRep_ThePolyhedronOfInterCSurf_HeaderFile
## Error: did not expect <!!!


