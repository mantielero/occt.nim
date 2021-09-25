##  Created on: 1999-04-27
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of ShapeExtend_CompositeSurface"
discard "forward decl of ShapeExtend_CompositeSurface"
type
  HandleShapeExtendCompositeSurface* = Handle[ShapeExtendCompositeSurface]

## ! Composite surface is represented by a grid of surfaces
## ! (patches) connected geometrically. Patches may have different
## ! parametrisation ranges, but they should be parametrised in
## ! the same manner so that parameter of each patch (u,v) can be converted
## ! to global parameter on the whole surface (U,V) with help of linear
## ! transformation:
## !
## ! for any i,j-th patch
## ! U = Ui + ( u - uijmin ) * ( Ui+1 - Ui ) / ( uijmax - uijmin )
## ! V = Vj + ( v - vijmin ) * ( Vj+1 - Vj ) / ( vijmax - vijmin )
## !
## ! where
## !
## ! [uijmin, uijmax] * [ vijmin, vijmax] - parametric range of i,j-th patch,
## !
## ! Ui (i=1,..,Nu+1), Vi (j=1,..,Nv+1) - values defining global
## ! parametrisation by U and V (correspond to points between patches and
## ! bounds, (Ui,Uj) corresponds to (uijmin,vijmin) on i,j-th patch) and to
## ! (u(i-1)(j-1)max,v(i-1)(j-1)max) on (i-1),(j-1)-th patch.
## !
## ! Geometrical connectivity is expressed via global parameters:
## ! S[i,j](Ui+1,V) = S[i+1,j](Ui+1,V) for any i, j, V
## ! S[i,j](U,Vj+1) = S[i,j+1](U,Vj+1) for any i, j, U
## ! It is checked with Precision::Confusion() by default.
## !
## ! NOTE 1: This class is inherited from Geom_Surface in order to
## ! make it more easy to store and deal with it. However, it should
## ! not be passed to standard methods dealing with geometry since
## ! this type is not known to them.
## ! NOTE 2: Not all the inherited methods are implemented, and some are
## ! implemented not in the full form.

type
  ShapeExtendCompositeSurface* {.importcpp: "ShapeExtend_CompositeSurface",
                                header: "ShapeExtend_CompositeSurface.hxx", bycopy.} = object of GeomSurface ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor.


proc constructShapeExtendCompositeSurface*(): ShapeExtendCompositeSurface {.
    constructor, importcpp: "ShapeExtend_CompositeSurface(@)",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc constructShapeExtendCompositeSurface*(
    gridSurf: Handle[TColGeomHArray2OfSurface];
    param: ShapeExtendParametrisation = shapeExtendNatural): ShapeExtendCompositeSurface {.
    constructor, importcpp: "ShapeExtend_CompositeSurface(@)",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc constructShapeExtendCompositeSurface*(
    gridSurf: Handle[TColGeomHArray2OfSurface]; uJoints: TColStdArray1OfReal;
    vJoints: TColStdArray1OfReal): ShapeExtendCompositeSurface {.constructor,
    importcpp: "ShapeExtend_CompositeSurface(@)",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc init*(this: var ShapeExtendCompositeSurface;
          gridSurf: Handle[TColGeomHArray2OfSurface];
          param: ShapeExtendParametrisation = shapeExtendNatural): bool {.
    importcpp: "Init", header: "ShapeExtend_CompositeSurface.hxx".}
proc init*(this: var ShapeExtendCompositeSurface;
          gridSurf: Handle[TColGeomHArray2OfSurface];
          uJoints: TColStdArray1OfReal; vJoints: TColStdArray1OfReal): bool {.
    importcpp: "Init", header: "ShapeExtend_CompositeSurface.hxx".}
proc nbUPatches*(this: ShapeExtendCompositeSurface): int {.noSideEffect,
    importcpp: "NbUPatches", header: "ShapeExtend_CompositeSurface.hxx".}
proc nbVPatches*(this: ShapeExtendCompositeSurface): int {.noSideEffect,
    importcpp: "NbVPatches", header: "ShapeExtend_CompositeSurface.hxx".}
proc patch*(this: ShapeExtendCompositeSurface; i: int; j: int): Handle[GeomSurface] {.
    noSideEffect, importcpp: "Patch", header: "ShapeExtend_CompositeSurface.hxx".}
proc patches*(this: ShapeExtendCompositeSurface): Handle[TColGeomHArray2OfSurface] {.
    noSideEffect, importcpp: "Patches", header: "ShapeExtend_CompositeSurface.hxx".}
proc uJointValues*(this: ShapeExtendCompositeSurface): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "UJointValues",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vJointValues*(this: ShapeExtendCompositeSurface): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "VJointValues",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc uJointValue*(this: ShapeExtendCompositeSurface; i: int): float {.noSideEffect,
    importcpp: "UJointValue", header: "ShapeExtend_CompositeSurface.hxx".}
proc vJointValue*(this: ShapeExtendCompositeSurface; j: int): float {.noSideEffect,
    importcpp: "VJointValue", header: "ShapeExtend_CompositeSurface.hxx".}
proc setUJointValues*(this: var ShapeExtendCompositeSurface;
                     uJoints: TColStdArray1OfReal): bool {.
    importcpp: "SetUJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc setVJointValues*(this: var ShapeExtendCompositeSurface;
                     vJoints: TColStdArray1OfReal): bool {.
    importcpp: "SetVJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc setUFirstValue*(this: var ShapeExtendCompositeSurface; uFirst: float) {.
    importcpp: "SetUFirstValue", header: "ShapeExtend_CompositeSurface.hxx".}
proc setVFirstValue*(this: var ShapeExtendCompositeSurface; vFirst: float) {.
    importcpp: "SetVFirstValue", header: "ShapeExtend_CompositeSurface.hxx".}
proc locateUParameter*(this: ShapeExtendCompositeSurface; u: float): int {.
    noSideEffect, importcpp: "LocateUParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc locateVParameter*(this: ShapeExtendCompositeSurface; v: float): int {.
    noSideEffect, importcpp: "LocateVParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc locateUVPoint*(this: ShapeExtendCompositeSurface; pnt: Pnt2d; i: var int;
                   j: var int) {.noSideEffect, importcpp: "LocateUVPoint",
                              header: "ShapeExtend_CompositeSurface.hxx".}
proc patch*(this: ShapeExtendCompositeSurface; u: float; v: float): Handle[GeomSurface] {.
    noSideEffect, importcpp: "Patch", header: "ShapeExtend_CompositeSurface.hxx".}
proc patch*(this: ShapeExtendCompositeSurface; pnt: Pnt2d): Handle[GeomSurface] {.
    noSideEffect, importcpp: "Patch", header: "ShapeExtend_CompositeSurface.hxx".}
proc uLocalToGlobal*(this: ShapeExtendCompositeSurface; i: int; j: int; u: float): float {.
    noSideEffect, importcpp: "ULocalToGlobal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vLocalToGlobal*(this: ShapeExtendCompositeSurface; i: int; j: int; v: float): float {.
    noSideEffect, importcpp: "VLocalToGlobal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc localToGlobal*(this: ShapeExtendCompositeSurface; i: int; j: int; uv: Pnt2d): Pnt2d {.
    noSideEffect, importcpp: "LocalToGlobal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc uGlobalToLocal*(this: ShapeExtendCompositeSurface; i: int; j: int; u: float): float {.
    noSideEffect, importcpp: "UGlobalToLocal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vGlobalToLocal*(this: ShapeExtendCompositeSurface; i: int; j: int; v: float): float {.
    noSideEffect, importcpp: "VGlobalToLocal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc globalToLocal*(this: ShapeExtendCompositeSurface; i: int; j: int; uv: Pnt2d): Pnt2d {.
    noSideEffect, importcpp: "GlobalToLocal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc globalToLocalTransformation*(this: ShapeExtendCompositeSurface; i: int; j: int;
                                 uFact: var float; trsf: var Trsf2d): bool {.
    noSideEffect, importcpp: "GlobalToLocalTransformation",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc transform*(this: var ShapeExtendCompositeSurface; t: Trsf) {.
    importcpp: "Transform", header: "ShapeExtend_CompositeSurface.hxx".}
proc copy*(this: ShapeExtendCompositeSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "ShapeExtend_CompositeSurface.hxx".}
proc uReverse*(this: var ShapeExtendCompositeSurface) {.importcpp: "UReverse",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc uReversedParameter*(this: ShapeExtendCompositeSurface; u: float): float {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vReverse*(this: var ShapeExtendCompositeSurface) {.importcpp: "VReverse",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vReversedParameter*(this: ShapeExtendCompositeSurface; v: float): float {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc bounds*(this: ShapeExtendCompositeSurface; u1: var float; u2: var float;
            v1: var float; v2: var float) {.noSideEffect, importcpp: "Bounds", header: "ShapeExtend_CompositeSurface.hxx".}
proc isUClosed*(this: ShapeExtendCompositeSurface): bool {.noSideEffect,
    importcpp: "IsUClosed", header: "ShapeExtend_CompositeSurface.hxx".}
proc isVClosed*(this: ShapeExtendCompositeSurface): bool {.noSideEffect,
    importcpp: "IsVClosed", header: "ShapeExtend_CompositeSurface.hxx".}
proc isUPeriodic*(this: ShapeExtendCompositeSurface): bool {.noSideEffect,
    importcpp: "IsUPeriodic", header: "ShapeExtend_CompositeSurface.hxx".}
proc isVPeriodic*(this: ShapeExtendCompositeSurface): bool {.noSideEffect,
    importcpp: "IsVPeriodic", header: "ShapeExtend_CompositeSurface.hxx".}
proc uIso*(this: ShapeExtendCompositeSurface; u: float): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "ShapeExtend_CompositeSurface.hxx".}
proc vIso*(this: ShapeExtendCompositeSurface; v: float): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "ShapeExtend_CompositeSurface.hxx".}
proc continuity*(this: ShapeExtendCompositeSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "ShapeExtend_CompositeSurface.hxx".}
proc isCNu*(this: ShapeExtendCompositeSurface; n: int): bool {.noSideEffect,
    importcpp: "IsCNu", header: "ShapeExtend_CompositeSurface.hxx".}
proc isCNv*(this: ShapeExtendCompositeSurface; n: int): bool {.noSideEffect,
    importcpp: "IsCNv", header: "ShapeExtend_CompositeSurface.hxx".}
proc d0*(this: ShapeExtendCompositeSurface; u: float; v: float; p: var Pnt) {.
    noSideEffect, importcpp: "D0", header: "ShapeExtend_CompositeSurface.hxx".}
proc d1*(this: ShapeExtendCompositeSurface; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, importcpp: "D1",
                     header: "ShapeExtend_CompositeSurface.hxx".}
proc d2*(this: ShapeExtendCompositeSurface; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect,
    importcpp: "D2", header: "ShapeExtend_CompositeSurface.hxx".}
proc d3*(this: ShapeExtendCompositeSurface; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
                                    header: "ShapeExtend_CompositeSurface.hxx".}
proc dn*(this: ShapeExtendCompositeSurface; u: float; v: float; nu: int; nv: int): Vec {.
    noSideEffect, importcpp: "DN", header: "ShapeExtend_CompositeSurface.hxx".}
proc value*(this: ShapeExtendCompositeSurface; pnt: Pnt2d): Pnt {.noSideEffect,
    importcpp: "Value", header: "ShapeExtend_CompositeSurface.hxx".}
proc computeJointValues*(this: var ShapeExtendCompositeSurface;
                        param: ShapeExtendParametrisation = shapeExtendNatural) {.
    importcpp: "ComputeJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc checkConnectivity*(this: var ShapeExtendCompositeSurface; prec: float): bool {.
    importcpp: "CheckConnectivity", header: "ShapeExtend_CompositeSurface.hxx".}
type
  ShapeExtendCompositeSurfacebaseType* = GeomSurface

proc getTypeName*(): cstring {.importcpp: "ShapeExtend_CompositeSurface::get_type_name(@)",
                            header: "ShapeExtend_CompositeSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeExtend_CompositeSurface::get_type_descriptor(@)",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc dynamicType*(this: ShapeExtendCompositeSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeExtend_CompositeSurface.hxx".}
