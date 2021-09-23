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

## !!!Ignored construct:  # _IntCurveSurface_ThePolyhedronOfHInter_HeaderFile [NewLine] # _IntCurveSurface_ThePolyhedronOfHInter_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Bnd/Bnd_Box.hxx [NewLine] # ../Bnd/Bnd_HArray1OfBox.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of gp_Pnt"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_XYZ"
type
  IntCurveSurface_ThePolyhedronOfHInter* {.
      importcpp: "IntCurveSurface_ThePolyhedronOfHInter",
      header: "IntCurveSurface_ThePolyhedronOfHInter.hxx", bycopy.} = object ## ! This method computes and returns a
                                                                        ## deflection of isoline
                                                                        ## ! of given
                                                                        ## parameter on Surface.


proc constructIntCurveSurface_ThePolyhedronOfHInter*(
    Surface: handle[Adaptor3d_HSurface]; nbdU: Standard_Integer;
    nbdV: Standard_Integer; U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
    V2: Standard_Real): IntCurveSurface_ThePolyhedronOfHInter {.constructor,
    importcpp: "IntCurveSurface_ThePolyhedronOfHInter(@)",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc constructIntCurveSurface_ThePolyhedronOfHInter*(
    Surface: handle[Adaptor3d_HSurface]; Upars: TColStd_Array1OfReal;
    Vpars: TColStd_Array1OfReal): IntCurveSurface_ThePolyhedronOfHInter {.
    constructor, importcpp: "IntCurveSurface_ThePolyhedronOfHInter(@)",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Destroy*(this: var IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "Destroy", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc destroyIntCurveSurface_ThePolyhedronOfHInter*(
    this: var IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "#.~IntCurveSurface_ThePolyhedronOfHInter()",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc DeflectionOverEstimation*(this: var IntCurveSurface_ThePolyhedronOfHInter;
                              flec: Standard_Real) {.
    importcpp: "DeflectionOverEstimation",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc DeflectionOnTriangle*(this: IntCurveSurface_ThePolyhedronOfHInter;
                          Surface: handle[Adaptor3d_HSurface];
                          Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "DeflectionOnTriangle",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc UMinSingularity*(this: var IntCurveSurface_ThePolyhedronOfHInter;
                     Sing: Standard_Boolean) {.importcpp: "UMinSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc UMaxSingularity*(this: var IntCurveSurface_ThePolyhedronOfHInter;
                     Sing: Standard_Boolean) {.importcpp: "UMaxSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc VMinSingularity*(this: var IntCurveSurface_ThePolyhedronOfHInter;
                     Sing: Standard_Boolean) {.importcpp: "VMinSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc VMaxSingularity*(this: var IntCurveSurface_ThePolyhedronOfHInter;
                     Sing: Standard_Boolean) {.importcpp: "VMaxSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Size*(this: IntCurveSurface_ThePolyhedronOfHInter; nbdu: var Standard_Integer;
          nbdv: var Standard_Integer) {.noSideEffect, importcpp: "Size", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc NbTriangles*(this: IntCurveSurface_ThePolyhedronOfHInter): Standard_Integer {.
    noSideEffect, importcpp: "NbTriangles",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Triangle*(this: IntCurveSurface_ThePolyhedronOfHInter;
              Index: Standard_Integer; P1: var Standard_Integer;
              P2: var Standard_Integer; P3: var Standard_Integer) {.noSideEffect,
    importcpp: "Triangle", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc TriConnex*(this: IntCurveSurface_ThePolyhedronOfHInter;
               Triang: Standard_Integer; Pivot: Standard_Integer;
               Pedge: Standard_Integer; TriCon: var Standard_Integer;
               OtherP: var Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "TriConnex", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc NbPoints*(this: IntCurveSurface_ThePolyhedronOfHInter): Standard_Integer {.
    noSideEffect, importcpp: "NbPoints",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Point*(this: var IntCurveSurface_ThePolyhedronOfHInter; thePnt: gp_Pnt;
           lig: Standard_Integer; col: Standard_Integer; U: Standard_Real;
           V: Standard_Real) {.importcpp: "Point", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Point*(this: IntCurveSurface_ThePolyhedronOfHInter; Index: Standard_Integer;
           U: var Standard_Real; V: var Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Point*(this: IntCurveSurface_ThePolyhedronOfHInter; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Point*(this: IntCurveSurface_ThePolyhedronOfHInter; Index: Standard_Integer;
           P: var gp_Pnt) {.noSideEffect, importcpp: "Point",
                         header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Bounding*(this: IntCurveSurface_ThePolyhedronOfHInter): Bnd_Box {.noSideEffect,
    importcpp: "Bounding", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc FillBounding*(this: var IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "FillBounding", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc ComponentsBounding*(this: IntCurveSurface_ThePolyhedronOfHInter): handle[
    Bnd_HArray1OfBox] {.noSideEffect, importcpp: "ComponentsBounding",
                       header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc DeflectionOverEstimation*(this: IntCurveSurface_ThePolyhedronOfHInter): Standard_Real {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc HasUMinSingularity*(this: IntCurveSurface_ThePolyhedronOfHInter): Standard_Boolean {.
    noSideEffect, importcpp: "HasUMinSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc HasUMaxSingularity*(this: IntCurveSurface_ThePolyhedronOfHInter): Standard_Boolean {.
    noSideEffect, importcpp: "HasUMaxSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc HasVMinSingularity*(this: IntCurveSurface_ThePolyhedronOfHInter): Standard_Boolean {.
    noSideEffect, importcpp: "HasVMinSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc HasVMaxSingularity*(this: IntCurveSurface_ThePolyhedronOfHInter): Standard_Boolean {.
    noSideEffect, importcpp: "HasVMaxSingularity",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc PlaneEquation*(this: IntCurveSurface_ThePolyhedronOfHInter;
                   Triang: Standard_Integer; NormalVector: var gp_XYZ;
                   PolarDistance: var Standard_Real) {.noSideEffect,
    importcpp: "PlaneEquation",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Contain*(this: IntCurveSurface_ThePolyhedronOfHInter;
             Triang: Standard_Integer; ThePnt: gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "Contain",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Parameters*(this: IntCurveSurface_ThePolyhedronOfHInter;
                Index: Standard_Integer; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "Parameters",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc IsOnBound*(this: IntCurveSurface_ThePolyhedronOfHInter;
               Index1: Standard_Integer; Index2: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnBound",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc GetBorderDeflection*(this: IntCurveSurface_ThePolyhedronOfHInter): Standard_Real {.
    noSideEffect, importcpp: "GetBorderDeflection",
    header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
proc Dump*(this: IntCurveSurface_ThePolyhedronOfHInter) {.noSideEffect,
    importcpp: "Dump", header: "IntCurveSurface_ThePolyhedronOfHInter.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntCurveSurface_Polyhedron IntCurveSurface_ThePolyhedronOfHInter [NewLine] # IntCurveSurface_Polyhedron_hxx < IntCurveSurface_ThePolyhedronOfHInter . hxx > [NewLine] # < IntCurveSurface_Polyhedron . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntCurveSurface_Polyhedron [NewLine] # IntCurveSurface_Polyhedron_hxx [NewLine] #  _IntCurveSurface_ThePolyhedronOfHInter_HeaderFile [NewLine]
## Error: did not expect <!!!
