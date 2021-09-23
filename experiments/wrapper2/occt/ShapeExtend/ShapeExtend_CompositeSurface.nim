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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColGeom/TColGeom_HArray2OfSurface, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Boolean, ../Geom/Geom_Surface, ShapeExtend_Parametrisation,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../GeomAbs/GeomAbs_Shape

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
  Handle_ShapeExtend_CompositeSurface* = handle[ShapeExtend_CompositeSurface]

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
  ShapeExtend_CompositeSurface* {.importcpp: "ShapeExtend_CompositeSurface",
                                 header: "ShapeExtend_CompositeSurface.hxx",
                                 bycopy.} = object of Geom_Surface ## ! Empty constructor.


proc constructShapeExtend_CompositeSurface*(): ShapeExtend_CompositeSurface {.
    constructor, importcpp: "ShapeExtend_CompositeSurface(@)",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc constructShapeExtend_CompositeSurface*(
    GridSurf: handle[TColGeom_HArray2OfSurface];
    param: ShapeExtend_Parametrisation = ShapeExtend_Natural): ShapeExtend_CompositeSurface {.
    constructor, importcpp: "ShapeExtend_CompositeSurface(@)",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc constructShapeExtend_CompositeSurface*(
    GridSurf: handle[TColGeom_HArray2OfSurface]; UJoints: TColStd_Array1OfReal;
    VJoints: TColStd_Array1OfReal): ShapeExtend_CompositeSurface {.constructor,
    importcpp: "ShapeExtend_CompositeSurface(@)",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc Init*(this: var ShapeExtend_CompositeSurface;
          GridSurf: handle[TColGeom_HArray2OfSurface];
          param: ShapeExtend_Parametrisation = ShapeExtend_Natural): Standard_Boolean {.
    importcpp: "Init", header: "ShapeExtend_CompositeSurface.hxx".}
proc Init*(this: var ShapeExtend_CompositeSurface;
          GridSurf: handle[TColGeom_HArray2OfSurface];
          UJoints: TColStd_Array1OfReal; VJoints: TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Init", header: "ShapeExtend_CompositeSurface.hxx".}
proc NbUPatches*(this: ShapeExtend_CompositeSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbUPatches",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc NbVPatches*(this: ShapeExtend_CompositeSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbVPatches",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc Patch*(this: ShapeExtend_CompositeSurface; i: Standard_Integer;
           j: Standard_Integer): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Patch", header: "ShapeExtend_CompositeSurface.hxx".}
proc Patches*(this: ShapeExtend_CompositeSurface): handle[TColGeom_HArray2OfSurface] {.
    noSideEffect, importcpp: "Patches", header: "ShapeExtend_CompositeSurface.hxx".}
proc UJointValues*(this: ShapeExtend_CompositeSurface): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "UJointValues",
                            header: "ShapeExtend_CompositeSurface.hxx".}
proc VJointValues*(this: ShapeExtend_CompositeSurface): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "VJointValues",
                            header: "ShapeExtend_CompositeSurface.hxx".}
proc UJointValue*(this: ShapeExtend_CompositeSurface; i: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UJointValue",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc VJointValue*(this: ShapeExtend_CompositeSurface; j: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "VJointValue",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc SetUJointValues*(this: var ShapeExtend_CompositeSurface;
                     UJoints: TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "SetUJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc SetVJointValues*(this: var ShapeExtend_CompositeSurface;
                     VJoints: TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "SetVJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc SetUFirstValue*(this: var ShapeExtend_CompositeSurface; UFirst: Standard_Real) {.
    importcpp: "SetUFirstValue", header: "ShapeExtend_CompositeSurface.hxx".}
proc SetVFirstValue*(this: var ShapeExtend_CompositeSurface; VFirst: Standard_Real) {.
    importcpp: "SetVFirstValue", header: "ShapeExtend_CompositeSurface.hxx".}
proc LocateUParameter*(this: ShapeExtend_CompositeSurface; U: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "LocateUParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc LocateVParameter*(this: ShapeExtend_CompositeSurface; V: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "LocateVParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc LocateUVPoint*(this: ShapeExtend_CompositeSurface; pnt: gp_Pnt2d;
                   i: var Standard_Integer; j: var Standard_Integer) {.noSideEffect,
    importcpp: "LocateUVPoint", header: "ShapeExtend_CompositeSurface.hxx".}
proc Patch*(this: ShapeExtend_CompositeSurface; U: Standard_Real; V: Standard_Real): handle[
    Geom_Surface] {.noSideEffect, importcpp: "Patch",
                   header: "ShapeExtend_CompositeSurface.hxx".}
proc Patch*(this: ShapeExtend_CompositeSurface; pnt: gp_Pnt2d): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Patch", header: "ShapeExtend_CompositeSurface.hxx".}
proc ULocalToGlobal*(this: ShapeExtend_CompositeSurface; i: Standard_Integer;
                    j: Standard_Integer; u: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ULocalToGlobal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc VLocalToGlobal*(this: ShapeExtend_CompositeSurface; i: Standard_Integer;
                    j: Standard_Integer; v: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VLocalToGlobal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc LocalToGlobal*(this: ShapeExtend_CompositeSurface; i: Standard_Integer;
                   j: Standard_Integer; uv: gp_Pnt2d): gp_Pnt2d {.noSideEffect,
    importcpp: "LocalToGlobal", header: "ShapeExtend_CompositeSurface.hxx".}
proc UGlobalToLocal*(this: ShapeExtend_CompositeSurface; i: Standard_Integer;
                    j: Standard_Integer; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UGlobalToLocal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc VGlobalToLocal*(this: ShapeExtend_CompositeSurface; i: Standard_Integer;
                    j: Standard_Integer; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VGlobalToLocal",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc GlobalToLocal*(this: ShapeExtend_CompositeSurface; i: Standard_Integer;
                   j: Standard_Integer; UV: gp_Pnt2d): gp_Pnt2d {.noSideEffect,
    importcpp: "GlobalToLocal", header: "ShapeExtend_CompositeSurface.hxx".}
proc GlobalToLocalTransformation*(this: ShapeExtend_CompositeSurface;
                                 i: Standard_Integer; j: Standard_Integer;
                                 uFact: var Standard_Real; Trsf: var gp_Trsf2d): Standard_Boolean {.
    noSideEffect, importcpp: "GlobalToLocalTransformation",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc Transform*(this: var ShapeExtend_CompositeSurface; T: gp_Trsf) {.
    importcpp: "Transform", header: "ShapeExtend_CompositeSurface.hxx".}
proc Copy*(this: ShapeExtend_CompositeSurface): handle[Geom_Geometry] {.
    noSideEffect, importcpp: "Copy", header: "ShapeExtend_CompositeSurface.hxx".}
proc UReverse*(this: var ShapeExtend_CompositeSurface) {.importcpp: "UReverse",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc UReversedParameter*(this: ShapeExtend_CompositeSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc VReverse*(this: var ShapeExtend_CompositeSurface) {.importcpp: "VReverse",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc VReversedParameter*(this: ShapeExtend_CompositeSurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc Bounds*(this: ShapeExtend_CompositeSurface; U1: var Standard_Real;
            U2: var Standard_Real; V1: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "Bounds", header: "ShapeExtend_CompositeSurface.hxx".}
proc IsUClosed*(this: ShapeExtend_CompositeSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsUClosed",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc IsVClosed*(this: ShapeExtend_CompositeSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsVClosed",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc IsUPeriodic*(this: ShapeExtend_CompositeSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc IsVPeriodic*(this: ShapeExtend_CompositeSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc UIso*(this: ShapeExtend_CompositeSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "ShapeExtend_CompositeSurface.hxx".}
proc VIso*(this: ShapeExtend_CompositeSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "ShapeExtend_CompositeSurface.hxx".}
proc Continuity*(this: ShapeExtend_CompositeSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "ShapeExtend_CompositeSurface.hxx".}
proc IsCNu*(this: ShapeExtend_CompositeSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "ShapeExtend_CompositeSurface.hxx".}
proc IsCNv*(this: ShapeExtend_CompositeSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "ShapeExtend_CompositeSurface.hxx".}
proc D0*(this: ShapeExtend_CompositeSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt) {.noSideEffect, importcpp: "D0",
                      header: "ShapeExtend_CompositeSurface.hxx".}
proc D1*(this: ShapeExtend_CompositeSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc D2*(this: ShapeExtend_CompositeSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec) {.noSideEffect, importcpp: "D2",
                         header: "ShapeExtend_CompositeSurface.hxx".}
proc D3*(this: ShapeExtend_CompositeSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "ShapeExtend_CompositeSurface.hxx".}
proc DN*(this: ShapeExtend_CompositeSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "ShapeExtend_CompositeSurface.hxx".}
proc Value*(this: ShapeExtend_CompositeSurface; pnt: gp_Pnt2d): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "ShapeExtend_CompositeSurface.hxx".}
proc ComputeJointValues*(this: var ShapeExtend_CompositeSurface; param: ShapeExtend_Parametrisation = ShapeExtend_Natural) {.
    importcpp: "ComputeJointValues", header: "ShapeExtend_CompositeSurface.hxx".}
proc CheckConnectivity*(this: var ShapeExtend_CompositeSurface; prec: Standard_Real): Standard_Boolean {.
    importcpp: "CheckConnectivity", header: "ShapeExtend_CompositeSurface.hxx".}
type
  ShapeExtend_CompositeSurfacebase_type* = Geom_Surface

proc get_type_name*(): cstring {.importcpp: "ShapeExtend_CompositeSurface::get_type_name(@)",
                              header: "ShapeExtend_CompositeSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeExtend_CompositeSurface::get_type_descriptor(@)",
    header: "ShapeExtend_CompositeSurface.hxx".}
proc DynamicType*(this: ShapeExtend_CompositeSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeExtend_CompositeSurface.hxx".}