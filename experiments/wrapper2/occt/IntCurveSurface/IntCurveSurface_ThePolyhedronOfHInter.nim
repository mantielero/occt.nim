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

## !!!Ignored construct:  # _IntCurveSurface_ThePolyhedronOfHInter_HeaderFile [NewLine] # _IntCurveSurface_ThePolyhedronOfHInter_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Bnd_Box . hxx > [NewLine] # < Bnd_HArray1OfBox . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of gp_Pnt"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_XYZ"
type
  IntCurveSurfaceThePolyhedronOfHInter* {.
      importcpp: "IntCurveSurface_ThePolyhedronOfHInter",
      header: "IntCurveSurface_ThePolyhedronOfHInter.hxx", bycopy.} = object ## ! This method computes and returns a
                                                                        ## deflection of isoline
                                                                        ## ! of given
                                                                        ## parameter on Surface.


proc constructIntCurveSurfaceThePolyhedronOfHInter*(
    surface: Handle[Adaptor3dHSurface]; nbdU: int; nbdV: int; u1: float; v1: float;
    u2: float; v2: float): IntCurveSurfaceThePolyhedronOfHInter {.constructor,
    importcpp: "IntCurveSurface_ThePolyhedronOfHInter(@)",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc constructIntCurveSurfaceThePolyhedronOfHInter*(
    surface: Handle[Adaptor3dHSurface]; upars: TColStdArray1OfReal;
    vpars: TColStdArray1OfReal): IntCurveSurfaceThePolyhedronOfHInter {.
    constructor, importcpp: "IntCurveSurface_ThePolyhedronOfHInter(@)",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc destroy*(this: var IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "Destroy", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc destroyIntCurveSurfaceThePolyhedronOfHInter*(
    this: var IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "#.~IntCurveSurface_ThePolyhedronOfHInter()",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc deflectionOverEstimation*(this: var IntCurveSurfaceThePolyhedronOfHInter;
                              flec: float) {.
    importcpp: "DeflectionOverEstimation",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc deflectionOnTriangle*(this: IntCurveSurfaceThePolyhedronOfHInter;
                          surface: Handle[Adaptor3dHSurface]; index: int): float {.
    noSideEffect, importcpp: "DeflectionOnTriangle",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc uMinSingularity*(this: var IntCurveSurfaceThePolyhedronOfHInter; sing: bool) {.
    importcpp: "UMinSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc uMaxSingularity*(this: var IntCurveSurfaceThePolyhedronOfHInter; sing: bool) {.
    importcpp: "UMaxSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc vMinSingularity*(this: var IntCurveSurfaceThePolyhedronOfHInter; sing: bool) {.
    importcpp: "VMinSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc vMaxSingularity*(this: var IntCurveSurfaceThePolyhedronOfHInter; sing: bool) {.
    importcpp: "VMaxSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc size*(this: IntCurveSurfaceThePolyhedronOfHInter; nbdu: var int; nbdv: var int) {.
    noSideEffect, importcpp: "Size",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc nbTriangles*(this: IntCurveSurfaceThePolyhedronOfHInter): int {.noSideEffect,
    importcpp: "NbTriangles", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc triangle*(this: IntCurveSurfaceThePolyhedronOfHInter; index: int; p1: var int;
              p2: var int; p3: var int) {.noSideEffect, importcpp: "Triangle", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc triConnex*(this: IntCurveSurfaceThePolyhedronOfHInter; triang: int; pivot: int;
               pedge: int; triCon: var int; otherP: var int): int {.noSideEffect,
    importcpp: "TriConnex", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc nbPoints*(this: IntCurveSurfaceThePolyhedronOfHInter): int {.noSideEffect,
    importcpp: "NbPoints", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc point*(this: var IntCurveSurfaceThePolyhedronOfHInter; thePnt: Pnt; lig: int;
           col: int; u: float; v: float) {.importcpp: "Point", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc point*(this: IntCurveSurfaceThePolyhedronOfHInter; index: int; u: var float;
           v: var float): Pnt {.noSideEffect, importcpp: "Point",
                            header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc point*(this: IntCurveSurfaceThePolyhedronOfHInter; index: int): Pnt {.
    noSideEffect, importcpp: "Point",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc point*(this: IntCurveSurfaceThePolyhedronOfHInter; index: int; p: var Pnt) {.
    noSideEffect, importcpp: "Point",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc bounding*(this: IntCurveSurfaceThePolyhedronOfHInter): BndBox {.noSideEffect,
    importcpp: "Bounding", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc fillBounding*(this: var IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "FillBounding", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc componentsBounding*(this: IntCurveSurfaceThePolyhedronOfHInter): Handle[
    BndHArray1OfBox] {.noSideEffect, importcpp: "ComponentsBounding",
                      header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc deflectionOverEstimation*(this: IntCurveSurfaceThePolyhedronOfHInter): float {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc hasUMinSingularity*(this: IntCurveSurfaceThePolyhedronOfHInter): bool {.
    noSideEffect, importcpp: "HasUMinSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc hasUMaxSingularity*(this: IntCurveSurfaceThePolyhedronOfHInter): bool {.
    noSideEffect, importcpp: "HasUMaxSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc hasVMinSingularity*(this: IntCurveSurfaceThePolyhedronOfHInter): bool {.
    noSideEffect, importcpp: "HasVMinSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc hasVMaxSingularity*(this: IntCurveSurfaceThePolyhedronOfHInter): bool {.
    noSideEffect, importcpp: "HasVMaxSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc planeEquation*(this: IntCurveSurfaceThePolyhedronOfHInter; triang: int;
                   normalVector: var Xyz; polarDistance: var float) {.noSideEffect,
    importcpp: "PlaneEquation",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc contain*(this: IntCurveSurfaceThePolyhedronOfHInter; triang: int; thePnt: Pnt): bool {.
    noSideEffect, importcpp: "Contain",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc parameters*(this: IntCurveSurfaceThePolyhedronOfHInter; index: int;
                u: var float; v: var float) {.noSideEffect, importcpp: "Parameters", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc isOnBound*(this: IntCurveSurfaceThePolyhedronOfHInter; index1: int; index2: int): bool {.
    noSideEffect, importcpp: "IsOnBound",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc getBorderDeflection*(this: IntCurveSurfaceThePolyhedronOfHInter): float {.
    noSideEffect, importcpp: "GetBorderDeflection",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc dump*(this: IntCurveSurfaceThePolyhedronOfHInter) {.noSideEffect,
    importcpp: "Dump", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntCurveSurface_Polyhedron IntCurveSurface_ThePolyhedronOfHInter [NewLine] # IntCurveSurface_Polyhedron_hxx < IntCurveSurface_ThePolyhedronOfHInter . hxx > [NewLine] # < IntCurveSurface_Polyhedron . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntCurveSurface_Polyhedron [NewLine] # IntCurveSurface_Polyhedron_hxx [NewLine] #  _IntCurveSurface_ThePolyhedronOfHInter_HeaderFile
## Error: did not expect <!!!

