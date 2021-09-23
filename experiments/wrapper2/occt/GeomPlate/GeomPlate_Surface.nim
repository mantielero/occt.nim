##  Created on: 1996-11-21
##  Created by: Joelle CHAUVET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Plate/Plate_Plate,
  ../Standard/Standard_Real, ../Geom/Geom_Surface, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColgp/TColgp_SequenceOfXY

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of Plate_Plate"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of GeomPlate_Surface"
discard "forward decl of GeomPlate_Surface"
type
  Handle_GeomPlate_Surface* = handle[GeomPlate_Surface]

## ! Describes the characteristics of plate surface objects
## ! returned by BuildPlateSurface::Surface. These can be
## ! used to verify the quality of the resulting surface before
## ! approximating it to a Geom_BSpline surface generated
## ! by MakeApprox. This proves necessary in cases where
## ! you want to use the resulting surface as the support for
## ! a shape. The algorithmically generated surface cannot
## ! fill this function as is, and as a result must be converted first.

type
  GeomPlate_Surface* {.importcpp: "GeomPlate_Surface",
                      header: "GeomPlate_Surface.hxx", bycopy.} = object of Geom_Surface


proc constructGeomPlate_Surface*(Surfinit: handle[Geom_Surface];
                                Surfinter: Plate_Plate): GeomPlate_Surface {.
    constructor, importcpp: "GeomPlate_Surface(@)", header: "GeomPlate_Surface.hxx".}
proc UReverse*(this: var GeomPlate_Surface) {.importcpp: "UReverse",
    header: "GeomPlate_Surface.hxx".}
proc UReversedParameter*(this: GeomPlate_Surface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter", header: "GeomPlate_Surface.hxx".}
proc VReverse*(this: var GeomPlate_Surface) {.importcpp: "VReverse",
    header: "GeomPlate_Surface.hxx".}
proc VReversedParameter*(this: GeomPlate_Surface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter", header: "GeomPlate_Surface.hxx".}
proc TransformParameters*(this: GeomPlate_Surface; U: var Standard_Real;
                         V: var Standard_Real; T: gp_Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "GeomPlate_Surface.hxx".}
proc ParametricTransformation*(this: GeomPlate_Surface; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "GeomPlate_Surface.hxx".}
proc Bounds*(this: GeomPlate_Surface; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "GeomPlate_Surface.hxx".}
proc IsUClosed*(this: GeomPlate_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "GeomPlate_Surface.hxx".}
proc IsVClosed*(this: GeomPlate_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "GeomPlate_Surface.hxx".}
proc IsUPeriodic*(this: GeomPlate_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomPlate_Surface.hxx".}
proc UPeriod*(this: GeomPlate_Surface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "GeomPlate_Surface.hxx".}
proc IsVPeriodic*(this: GeomPlate_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomPlate_Surface.hxx".}
proc VPeriod*(this: GeomPlate_Surface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "GeomPlate_Surface.hxx".}
proc UIso*(this: GeomPlate_Surface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "GeomPlate_Surface.hxx".}
proc VIso*(this: GeomPlate_Surface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "GeomPlate_Surface.hxx".}
proc Continuity*(this: GeomPlate_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "GeomPlate_Surface.hxx".}
proc IsCNu*(this: GeomPlate_Surface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "GeomPlate_Surface.hxx".}
proc IsCNv*(this: GeomPlate_Surface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "GeomPlate_Surface.hxx".}
proc D0*(this: GeomPlate_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "GeomPlate_Surface.hxx".}
proc D1*(this: GeomPlate_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "GeomPlate_Surface.hxx".}
proc D2*(this: GeomPlate_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "GeomPlate_Surface.hxx".}
proc D3*(this: GeomPlate_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "GeomPlate_Surface.hxx".}
proc DN*(this: GeomPlate_Surface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "GeomPlate_Surface.hxx".}
proc Copy*(this: GeomPlate_Surface): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "GeomPlate_Surface.hxx".}
proc Transform*(this: var GeomPlate_Surface; T: gp_Trsf) {.importcpp: "Transform",
    header: "GeomPlate_Surface.hxx".}
proc CallSurfinit*(this: GeomPlate_Surface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "CallSurfinit", header: "GeomPlate_Surface.hxx".}
proc SetBounds*(this: var GeomPlate_Surface; Umin: Standard_Real; Umax: Standard_Real;
               Vmin: Standard_Real; Vmax: Standard_Real) {.importcpp: "SetBounds",
    header: "GeomPlate_Surface.hxx".}
proc RealBounds*(this: GeomPlate_Surface; U1: var Standard_Real;
                U2: var Standard_Real; V1: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "RealBounds", header: "GeomPlate_Surface.hxx".}
proc Constraints*(this: GeomPlate_Surface; Seq: var TColgp_SequenceOfXY) {.
    noSideEffect, importcpp: "Constraints", header: "GeomPlate_Surface.hxx".}
type
  GeomPlate_Surfacebase_type* = Geom_Surface

proc get_type_name*(): cstring {.importcpp: "GeomPlate_Surface::get_type_name(@)",
                              header: "GeomPlate_Surface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomPlate_Surface::get_type_descriptor(@)",
    header: "GeomPlate_Surface.hxx".}
proc DynamicType*(this: GeomPlate_Surface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomPlate_Surface.hxx".}