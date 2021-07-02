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
          param: ShapeExtendParametrisation = shapeExtendNatural): StandardBoolean {.
    importcpp: "Init", header: "ShapeExtend_CompositeSurface.hxx".}
proc init*(this: var ShapeExtendCompositeSurface;
          gridSurf: Handle[TColGeomHArray2OfSurface];
          uJoints: TColStdArray1OfReal; vJoints: TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Init", header: "ShapeExtend_CompositeSurface.hxx".}
proc nbUPatches*(this: ShapeExtendCompositeSurface): StandardInteger {.noSideEffect,
    importcpp: "NbUPatches", header: "ShapeExtend_CompositeSurface.hxx".}
proc nbVPatches*(this: ShapeExtendCompositeSurface): StandardInteger {.noSideEffect,
    importcpp: "NbVPatches", header: "ShapeExtend_CompositeSurface.hxx".}
proc patch*(this: ShapeExtendCompositeSurface; i: StandardInteger; j: StandardInteger): Handle[
    GeomSurface] {.noSideEffect, importcpp: "Patch",
                  header: "ShapeExtend_CompositeSurface.hxx".}
proc patches*(this: ShapeExtendCompositeSurface): Handle[TColGeomHArray2OfSurface] {.
    noSideEffect, importcpp: "Patches", header: "ShapeExtend_CompositeSurface.hxx".}
proc uJointValues*(this: ShapeExtendCompositeSurface): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "UJointValues",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vJointValues*(this: ShapeExtendCompositeSurface): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "VJointValues",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc uJointValue*(this: ShapeExtendCompositeSurface; i: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "UJointValue",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vJointValue*(this: ShapeExtendCompositeSurface; j: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "VJointValue",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc setUJointValues*(this: var ShapeExtendCompositeSurface;
                     uJoints: TColStdArray1OfReal): StandardBoolean {.
    importcpp: "SetUJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc setVJointValues*(this: var ShapeExtendCompositeSurface;
                     vJoints: TColStdArray1OfReal): StandardBoolean {.
    importcpp: "SetVJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc setUFirstValue*(this: var ShapeExtendCompositeSurface; uFirst: StandardReal) {.
    importcpp: "SetUFirstValue", header: "ShapeExtend_CompositeSurface.hxx".}
proc setVFirstValue*(this: var ShapeExtendCompositeSurface; vFirst: StandardReal) {.
    importcpp: "SetVFirstValue", header: "ShapeExtend_CompositeSurface.hxx".}
proc locateUParameter*(this: ShapeExtendCompositeSurface; u: StandardReal): StandardInteger {.
    noSideEffect, importcpp: "LocateUParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc locateVParameter*(this: ShapeExtendCompositeSurface; v: StandardReal): StandardInteger {.
    noSideEffect, importcpp: "LocateVParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc locateUVPoint*(this: ShapeExtendCompositeSurface; pnt: GpPnt2d;
                   i: var StandardInteger; j: var StandardInteger) {.noSideEffect,
    importcpp: "LocateUVPoint", header: "ShapeExtend_CompositeSurface.hxx".}
proc patch*(this: ShapeExtendCompositeSurface; u: StandardReal; v: StandardReal): Handle[
    GeomSurface] {.noSideEffect, importcpp: "Patch",
                  header: "ShapeExtend_CompositeSurface.hxx".}
proc patch*(this: ShapeExtendCompositeSurface; pnt: GpPnt2d): Handle[GeomSurface] {.
    noSideEffect, importcpp: "Patch", header: "ShapeExtend_CompositeSurface.hxx".}
proc uLocalToGlobal*(this: ShapeExtendCompositeSurface; i: StandardInteger;
                    j: StandardInteger; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ULocalToGlobal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vLocalToGlobal*(this: ShapeExtendCompositeSurface; i: StandardInteger;
                    j: StandardInteger; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VLocalToGlobal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc localToGlobal*(this: ShapeExtendCompositeSurface; i: StandardInteger;
                   j: StandardInteger; uv: GpPnt2d): GpPnt2d {.noSideEffect,
    importcpp: "LocalToGlobal", header: "ShapeExtend_CompositeSurface.hxx".}
proc uGlobalToLocal*(this: ShapeExtendCompositeSurface; i: StandardInteger;
                    j: StandardInteger; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UGlobalToLocal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vGlobalToLocal*(this: ShapeExtendCompositeSurface; i: StandardInteger;
                    j: StandardInteger; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VGlobalToLocal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc globalToLocal*(this: ShapeExtendCompositeSurface; i: StandardInteger;
                   j: StandardInteger; uv: GpPnt2d): GpPnt2d {.noSideEffect,
    importcpp: "GlobalToLocal", header: "ShapeExtend_CompositeSurface.hxx".}
proc globalToLocalTransformation*(this: ShapeExtendCompositeSurface;
                                 i: StandardInteger; j: StandardInteger;
                                 uFact: var StandardReal; trsf: var GpTrsf2d): StandardBoolean {.
    noSideEffect, importcpp: "GlobalToLocalTransformation",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc transform*(this: var ShapeExtendCompositeSurface; t: GpTrsf) {.
    importcpp: "Transform", header: "ShapeExtend_CompositeSurface.hxx".}
proc copy*(this: ShapeExtendCompositeSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "ShapeExtend_CompositeSurface.hxx".}
proc uReverse*(this: var ShapeExtendCompositeSurface) {.importcpp: "UReverse",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc uReversedParameter*(this: ShapeExtendCompositeSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vReverse*(this: var ShapeExtendCompositeSurface) {.importcpp: "VReverse",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc vReversedParameter*(this: ShapeExtendCompositeSurface; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc bounds*(this: ShapeExtendCompositeSurface; u1: var StandardReal;
            u2: var StandardReal; v1: var StandardReal; v2: var StandardReal) {.
    noSideEffect, importcpp: "Bounds", header: "ShapeExtend_CompositeSurface.hxx".}
proc isUClosed*(this: ShapeExtendCompositeSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "ShapeExtend_CompositeSurface.hxx".}
proc isVClosed*(this: ShapeExtendCompositeSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "ShapeExtend_CompositeSurface.hxx".}
proc isUPeriodic*(this: ShapeExtendCompositeSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc isVPeriodic*(this: ShapeExtendCompositeSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc uIso*(this: ShapeExtendCompositeSurface; u: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "ShapeExtend_CompositeSurface.hxx".}
proc vIso*(this: ShapeExtendCompositeSurface; v: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "ShapeExtend_CompositeSurface.hxx".}
proc continuity*(this: ShapeExtendCompositeSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "ShapeExtend_CompositeSurface.hxx".}
proc isCNu*(this: ShapeExtendCompositeSurface; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsCNu", header: "ShapeExtend_CompositeSurface.hxx".}
proc isCNv*(this: ShapeExtendCompositeSurface; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsCNv", header: "ShapeExtend_CompositeSurface.hxx".}
proc d0*(this: ShapeExtendCompositeSurface; u: StandardReal; v: StandardReal;
        p: var GpPnt) {.noSideEffect, importcpp: "D0",
                     header: "ShapeExtend_CompositeSurface.hxx".}
proc d1*(this: ShapeExtendCompositeSurface; u: StandardReal; v: StandardReal;
        p: var GpPnt; d1u: var GpVec; d1v: var GpVec) {.noSideEffect, importcpp: "D1",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc d2*(this: ShapeExtendCompositeSurface; u: StandardReal; v: StandardReal;
        p: var GpPnt; d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec;
        d2uv: var GpVec) {.noSideEffect, importcpp: "D2",
                        header: "ShapeExtend_CompositeSurface.hxx".}
proc d3*(this: ShapeExtendCompositeSurface; u: StandardReal; v: StandardReal;
        p: var GpPnt; d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec;
        d2uv: var GpVec; d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.
    noSideEffect, importcpp: "D3", header: "ShapeExtend_CompositeSurface.hxx".}
proc dn*(this: ShapeExtendCompositeSurface; u: StandardReal; v: StandardReal;
        nu: StandardInteger; nv: StandardInteger): GpVec {.noSideEffect,
    importcpp: "DN", header: "ShapeExtend_CompositeSurface.hxx".}
proc value*(this: ShapeExtendCompositeSurface; pnt: GpPnt2d): GpPnt {.noSideEffect,
    importcpp: "Value", header: "ShapeExtend_CompositeSurface.hxx".}
proc computeJointValues*(this: var ShapeExtendCompositeSurface;
                        param: ShapeExtendParametrisation = shapeExtendNatural) {.
    importcpp: "ComputeJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc checkConnectivity*(this: var ShapeExtendCompositeSurface; prec: StandardReal): StandardBoolean {.
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

